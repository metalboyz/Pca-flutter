FROM gitpod/workspace-full

# Install Flutter
RUN sudo apt-get update && sudo apt-get install -y curl unzip xz-utils git libglu1-mesa
RUN git clone https://github.com/flutter/flutter.git /opt/flutter && \
    /opt/flutter/bin/flutter --version

# Set Flutter environment variables
ENV PATH="/opt/flutter/bin:/opt/flutter/bin/cache/dart-sdk/bin:${PATH}"
