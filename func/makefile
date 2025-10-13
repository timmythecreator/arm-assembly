TARGET   := program
CC       := arm-linux-gnueabihf-gcc
ARCH     := cortex-a15
CFLAGS   := -mcpu=$(ARCH) -nostdlib -static -g
SRCS     := external_f_o.s multiply.s
OBJS     := $(SRCS:.s=.o)

all: $(TARGET)
	@echo "Build complete: $(TARGET)"

%.o: %.s
	@echo "Assembling $<"
	$(CC) $(CFLAGS) -c -o $@ $<

$(TARGET): $(OBJS)
	@echo "Linking $@"
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f $(TARGET) $(OBJS)
	@echo "$(TARGET) is cleaned up"

.PHONY: all clean
