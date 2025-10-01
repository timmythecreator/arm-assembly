#!/bin/sh

# Check that the arguments have been passed
if [ $# -lt 2 ]; then
    echo "Usage: $0 <output_name> <source_file>"
    exit 1
fi

OUTPUT=$1
SOURCE=$2

ARCH=$(uname -m)

case "$ARCH" in
    x86_64)
        echo "Detected architecture: x86_64 (64-bit Intel/AMD)"
        arm-linux-gnueabihf-gcc -o "$OUTPUT" "$SOURCE" -nostdlib -static
        ;;
    aarch64|arm64)
        echo "Detected architecture: ARM64 (64-bit ARM)"
        gcc -o "$OUTPUT" "$SOURCE" -nostdlib -static
        ;;
    *)
        echo "Detected unknown architecture: $ARCH"
        echo "No suitable compiler command defined for this architecture."
        exit 1
        ;;
esac
