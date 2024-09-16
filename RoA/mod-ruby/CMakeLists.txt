# mod-ruby CMakeLists.txt

if(NOT DEFINED ENV{RICE_ROOT})
    message(FATAL_ERROR "RICE_ROOT must be set in the environment")
endif()

set(RICE_ROOT $ENV{RICE_ROOT})

# Find Ruby
find_package(Ruby REQUIRED)

# Find Rice
find_path(RICE_INCLUDE_DIR rice/rice.hpp PATHS ${RICE_ROOT}/include)

if(NOT RICE_INCLUDE_DIR)
    message(FATAL_ERROR "Rice headers not found. Please check your RICE_ROOT setting.")
endif()

# Print debug information
message(STATUS "RICE_ROOT: ${RICE_ROOT}")
message(STATUS "RICE_INCLUDE_DIR: ${RICE_INCLUDE_DIR}")
message(STATUS "RUBY_INCLUDE_DIRS: ${RUBY_INCLUDE_DIRS}")
message(STATUS "RUBY_LIBRARY: ${RUBY_LIBRARY}")

# Add source files from src/wrap
file(GLOB WRAP_SOURCES
    "src/wrap/*.cpp"
    "src/wrap/*.hpp"
)

# Add the loader file
set(LOADER_SOURCE "src/mod_ruby_loader.cpp")

# Create the module
add_library(mod-ruby MODULE ${WRAP_SOURCES} ${LOADER_SOURCE})

# Include directories
target_include_directories(mod-ruby PRIVATE
    ${RICE_INCLUDE_DIR}
    ${RUBY_INCLUDE_DIRS}
    ${CMAKE_SOURCE_DIR}/src/server/game
    ${CMAKE_SOURCE_DIR}/src/server/shared
    ${CMAKE_SOURCE_DIR}/src/common
    ${CMAKE_CURRENT_SOURCE_DIR}/src/wrap
    ${CMAKE_CURRENT_SOURCE_DIR}/src
)

# Link libraries
target_link_libraries(mod-ruby PRIVATE
    ${RUBY_LIBRARY}
    game
    shared
    ${CMAKE_DL_LIBS}
)

# Set C++ standard and flags
set_target_properties(mod-ruby PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED ON
    CXX_EXTENSIONS OFF
)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC -ftls-model=global-dynamic")

# Set output directory for the .so file
set_target_properties(mod-ruby PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin/modules"
)

# Ensure the library has the correct name for Ruby to load it
set_target_properties(mod-ruby PROPERTIES
    PREFIX ""
    SUFFIX ".so"
)

# Set RPATH
set_target_properties(mod-ruby PROPERTIES
    INSTALL_RPATH "${RUBY_LIBRARY_DIR}"
    BUILD_WITH_INSTALL_RPATH TRUE
)

# Set linking flags
set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -Wl,--no-as-needed -ldl")

set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# Install the module
install(TARGETS mod-ruby
    LIBRARY DESTINATION bin/modules
)

set(LOADER_FILE "${CMAKE_CURRENT_SOURCE_DIR}/src/mod_ruby_loader.cpp")

if(NOT EXISTS ${LOADER_FILE})
    message(FATAL_ERROR "Script loader file not found: ${LOADER_FILE}")
endif()

AC_ADD_SCRIPT_LOADER("ModRuby" "${LOADER_FILE}")
