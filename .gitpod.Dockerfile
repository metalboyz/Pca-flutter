FROM gitpod/workspace-full

# Install Flutter dependencies
RUN sudo apt-get update && sudo apt-get install -y curl unzip xz-utils git libglu1-mesa

# Clone Flutter into the workspace directory
RUN git clone https://github.com/flutter/flutter.git /workspace/flutter

# Set Flutter environment variables
ENV PATH="/workspace/flutter/bin:/workspace/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Run flutter doctor to pre-cache artifacts
RUN flutter doctor
