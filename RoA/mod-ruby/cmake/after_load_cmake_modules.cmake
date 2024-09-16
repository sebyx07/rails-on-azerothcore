if(RUBY_FOUND)
    target_include_directories(game-interface
      INTERFACE
        ${RUBY_INCLUDE_DIRS}
    )

    target_link_libraries(game-interface
      INTERFACE
        ${RUBY_LIBRARY}
    )

    # Link worldserver with Ruby
    target_link_libraries(worldserver
      PRIVATE
        ${RUBY_LIBRARY}
    )

    # Link scripts with Ruby
    target_link_libraries(scripts
      PRIVATE
        ${RUBY_LIBRARY}
    )
endif()
