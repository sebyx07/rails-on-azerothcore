FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive
ARG USER_ID=1000
ARG GROUP_ID=1000
ARG DOCKER_USER=acore

# Install dependencies
RUN apt-get update && apt-get install -y \
    git \
    cmake \
    make \
    gcc \
    g++ \
    clang \
    default-libmysqlclient-dev \
    libssl-dev \
    libbz2-dev \
    libreadline-dev \
    libncurses-dev \
    libboost-all-dev \
    default-mysql-client \
    ccache \
    curl \
    unzip \
    inotify-tools \
    # Dependencies for Ruby build
    autoconf \
    bison \
    build-essential \
    libffi-dev \
    libgdbm-dev \
    libncurses5-dev \
    libsqlite3-dev \
    libyaml-dev \
    zlib1g-dev \
    libgmp-dev \
    # New dependencies
    libjemalloc-dev \
    libpq-dev \
    pkg-config \
    ninja-build \
    && rm -rf /var/lib/apt/lists/*

# Create user
RUN groupadd --gid $GROUP_ID $DOCKER_USER \
    && useradd --uid $USER_ID --gid $GROUP_ID -m $DOCKER_USER \
    && mkdir -p /azerothcore && chown $DOCKER_USER:$DOCKER_USER /azerothcore \
    && mkdir -p /azerothcore-build && chown $DOCKER_USER:$DOCKER_USER /azerothcore-build \
    && mkdir -p /rails && chown $DOCKER_USER:$DOCKER_USER /rails \
    && mkdir -p /usr/local/bundle && chown $DOCKER_USER:$DOCKER_USER /usr/local/bundle

USER $DOCKER_USER
WORKDIR /home/$DOCKER_USER

# Install Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/home/$DOCKER_USER/.cargo/bin:$PATH"

# Install rbenv and ruby-build
RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv \
    && cd ~/.rbenv && src/configure && make -C src \
    && echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc \
    && echo 'eval "$(rbenv init -)"' >> ~/.bashrc \
    && git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# Set environment variables for jemalloc
RUN echo 'export MALLOC_CONF="dirty_decay_ms:2000,narenas:2,background_thread:true"' >> ~/.bashrc

# Install Ruby 3.3.4 with YJIT and jemalloc
ENV RUBY_CONFIGURE_OPTS="--with-jemalloc --enable-yjit"
RUN ~/.rbenv/bin/rbenv install 3.3.4 \
    && ~/.rbenv/bin/rbenv global 3.3.4

# Set up environment variables
ENV PATH="/home/$DOCKER_USER/.rbenv/shims:/home/$DOCKER_USER/.rbenv/bin:$PATH"
ENV CC=clang
ENV CXX=clang++
ENV CCACHE_DIR=/azerothcore-build/tmp/ccache
ENV PATH="/azerothcore/build/bin:$PATH"

WORKDIR /azerothcore-build

ENV BUNDLE_PATH="/usr/local/bundle" \
    BUNDLE_JOBS="20" \
    RUBYOPT="--enable-yjit --yjit-exec-mem-size=256"
ENV RUBY_VERSION=3.3.4
ENV RUBY_INCLUDE_PATH="/home/$DOCKER_USER/.rbenv/versions/$RUBY_VERSION/include/ruby-3.3.0:/home/$DOCKER_USER/.rbenv/versions/$RUBY_VERSION/include/ruby-3.3.0/x86_64-linux"
ENV RUBY_LIB_PATH="/home/$DOCKER_USER/.rbenv/versions/$RUBY_VERSION/lib"
ENV LD_LIBRARY_PATH="$RUBY_LIB_PATH:$LD_LIBRARY_PATH"
ENV CPATH="$RUBY_INCLUDE_PATH:$CPATH"
ENV LIBRARY_PATH="$RUBY_LIB_PATH:$LIBRARY_PATH"

ENV C_INCLUDE_PATH="$RUBY_INCLUDE_PATH:$C_INCLUDE_PATH"
ENV CPLUS_INCLUDE_PATH="$RUBY_INCLUDE_PATH:$CPLUS_INCLUDE_PATH"
ENV RUBYLIB="$RUBY_LIB_PATH"
ENV LD_LIBRARY_PATH="/azerothcore/build/src/server/shared/:$RUBY_LIB_PATH:/usr/lib/x86_64-linux-gnu/:$LD_LIBRARY_PATH"
ENV LD_LIBRARY_PATH="/azerothcore/build/src/server/database/:$LD_LIBRARY_PATH"
ENV LD_LIBRARY_PATH="/azerothcore/build/src/common/:$LD_LIBRARY_PATH"

ENV PATH="/rails/bin/ruby:/azerothcore-build/bin:$PATH"

CMD ["/bin/bash"]