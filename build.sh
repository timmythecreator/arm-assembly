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
	# NOTE: using -mcpu=cortex-a15 because UDIV/SDIV instructions
        # are only available on ARM cores with IDIV support
        # (e.g. Cortex-A15 and newer). On older ARM (Cortex-A8/A9) these
        # instructions are not supported and will cause assembler errors.
        arm-linux-gnueabihf-gcc -o "$OUTPUT" "$SOURCE" -mcpu=cortex-a15 -nostdlib -static
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
