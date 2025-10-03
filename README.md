# ARM Assembly Learning Project

This repository is my personal project to **track progress in learning ARM assembly**.  
It contains small code snippets, notes, and experiments that mark milestones of my study journey.

---

## 📂 Project Contents
- `infinite_loop.s` - a simple infinite loop example in ARM assembly.
- `ld_manual.s` - an example of load operator usage
- `st.s` - an example of store operator usage
- `multiple_mo.s` - an example of multiple load/store operator usage
- `shift_o.s` - an example of shift operators usage
- `bitwise_o.s` - an example of bitwise operators usage (XOR in this case)

---

## ⚙️ Requirements

### On Intel (x86/x86_64 host)
Install cross-compilation tools and QEMU user emulation:
```bash
sudo apt update
sudo apt install build-essential gcc-arm-linux-gnueabihf qemu-user gdb-multiarch
```

### On ARM (native host, e.g. Raspberry Pi)

Only the standard build tools are required:
```bash
sudo apt update
sudo apt install build-essential
```

---

## ▶️ How to Build & Run
### On Intel (cross-compilation + QEMU)
```bash
arm-linux-gnueabihf-gcc -o output_file input_file.s -nostdlib -static
# OR
./build.sh output_file input_file.s
qemu-arm ./output_file
```

### On ARM (native execution)
```bash
gcc -o output_file input_file.s -nostdlib -static
# OR
./build.sh output_file input_file.s
./output_file
```

---

## 🐞 Debugging Workflow (Intel host)

### You can debug ARM binaries with QEMU and GDB:

1) Start QEMU with gdbserver:
```bash
qemu-arm -g 4242 ./output_file
```

2) In another terminal, connect with GDB:
```bash
gdb-multiarch
(gdb) file ./output_file
(gdb) target remote localhost:4242
```

**Useful GDB commands:**
* `lay next` → view code with source/assembly (TUI mode)
* `ni` → next instruction
* `si` → step into instruction

## 📝 Notes

_This repository is for educational purposes only._
_Examples are intentionally minimalistic to illustrate basic ARM assembly concepts._
_Expect frequent updates with new snippets, comments, and milestones._
