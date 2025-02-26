#!/usr/bin/env bash

# Config
IMAGE="readme-ai"
VERSION="latest"  # Consider using a more specific version like v1.0.0
FULL_IMAGE_NAME="zeroxeli/${IMAGE}:${VERSION}"
BUILDER_NAME="mybuilder"
DRY_RUN=false

# Check for dry run flag
if [[ "$1" == "-n" || "$1" == "--dry-run" ]]; then
    DRY_RUN=true
    echo "Running in dry-run mode. No images will be built or pushed."
fi

# Helper functions
build_image() {
    local cmd="docker build -t \"${FULL_IMAGE_NAME}\" ."
    echo "Building ${FULL_IMAGE_NAME}: $cmd"
    if $DRY_RUN; then
        echo "Dry run: Skipping build"
    else
        $cmd || exit 1  # Exit if build fails
    fi
}

publish_image() {
    local cmd="docker push \"${FULL_IMAGE_NAME}\""
    echo "Pushing ${FULL_IMAGE_NAME}: $cmd"
    if $DRY_RUN; then
        echo "Dry run: Skipping push"
    else
        $cmd || exit 1  # Exit if push fails
    fi
}

buildx_image() {
    local cmd="docker buildx build --platform linux/amd64,linux/arm64 --tag \"${FULL_IMAGE_NAME}\" --push ."
    echo "Building and pushing multi-platform image ${FULL_IMAGE_NAME}: $cmd"
    if $DRY_RUN; then
        echo "Dry run: Skipping multi-platform build"
    else
        $cmd || exit 1  # Exit if multi-platform build fails
    fi
}

cleanup_buildx() {
    echo "Removing buildx builder ${BUILDER_NAME}"
    docker buildx rm ${BUILDER_NAME}
}


#Check if buildx instance exists
if docker buildx inspect "${BUILDER_NAME}" &> /dev/null; then
  echo "Buildx instance '${BUILDER_NAME}' }' already exists. Using existing instance."
  docker buildx use "${BUILDER_NAME}"
else
  # Main execution
  echo "Setting up Docker Buildx"
  docker buildx create --name "${BUILDER_NAME}" --use || exit 1
fi

echo "Starting build process"
build_image
publish_image
buildx_image

echo "Process completed. Published image: ${FULL_IMAGE_NAME}"

# Cleanup buildx if successful
cleanup_buildx

exit 0
