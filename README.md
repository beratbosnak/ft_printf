# 🖨️ ft_printf – Reimplementation of printf in C

![ft_printf](https://img.shields.io/badge/ft--printf-C%20Implementation-blue.svg)
![Build](https://img.shields.io/badge/build-passing-brightgreen)
![License](https://img.shields.io/badge/license-MIT-blue)
![Made with C](https://img.shields.io/badge/made%20with-C-blue)

## 📑 Table of Contents
- [Project Description](#-project-description)
- [Supported Format Specifiers](#-supported-format-specifiers)
- [Compilation](#️-compilation)
- [Usage](#-usage)
- [Example](#-example)
- [Project Structure](#-project-structure)
- [License](#-license)
- [Contact](#-contact)

## 📌 Project Description
**ft_printf** is a custom implementation of the standard `printf` function, created during the 42 school curriculum.  
It replicates formatted output and processes variable arguments, all implemented in C from scratch.

The goal of this project is to gain a deep understanding of variadic functions, memory management, and output formatting logic at the system level.

> 🧠 This project was built to strengthen my low-level programming skills in C by recreating one of the most fundamental standard library functions.

## 🔤 Supported Format Specifiers
This implementation supports the following format specifiers:

| Specifier | Description                    |
|-----------|--------------------------------|
| `%c`      | Character                      |
| `%s`      | String                         |
| `%p`      | Pointer address (hex)          |
| `%d`, `%i`| Signed decimal integer         |
| `%u`      | Unsigned decimal integer       |
| `%x`      | Unsigned hexadecimal (lower)   |
| `%X`      | Unsigned hexadecimal (upper)   |
| `%%`      | Literal percent symbol         |

## ⚙️ Compilation
Run the following commands to build the project:

```bash
git clone https://github.com/valyriasteel/ft_printf.git
cd ft_printf
make
```

This will generate `libftprintf.a`, the static archive that you can link in your C projects.

## 🚀 Usage
Include the header in your source file:

```c
#include "ft_printf.h"
```

Then compile your project with:

```bash
cc main.c -L. -lftprintf -o my_program
```

## 💡 Example
```c
#include "ft_printf.h"

int main() {
    void *ptr = &ptr;
    ft_printf("Character: %c\n", 'A');
    ft_printf("String: %s\n", "Hello, ft_printf!");
    ft_printf("Pointer: %p\n", ptr);
    ft_printf("Decimal: %d\n", 42);
    ft_printf("Unsigned: %u\n", 3000000000);
    ft_printf("Hex lower: %x\n", 48879);
    ft_printf("Hex upper: %X\n", 48879);
    ft_printf("Percent sign: %%\n");
    return 0;
}
```

### Output
```
Character: A
String: Hello, ft_printf!
Pointer: 0x[address]
Decimal: 42
Unsigned: 3000000000
Hex lower: beef
Hex upper: BEEF
Percent sign: %
```

## 📁 Project Structure

> The layout below is simplified for clarity. All source files are located in the root directory.

```
ft_printf/
├── ft_printf.c        # Main implementation
├── ft_printf.h        # Header file
├── Makefile           # Build script
└── README.md          # Documentation
```

## 📜 License
This project is licensed under the **MIT License**. See [LICENSE](LICENSE) for details.

## 📬 Contact
For questions, issues, or contributions:
- GitHub: [valyriasteel](https://github.com/valyriasteel)
- Feel free to open an [issue](https://github.com/valyriasteel/ft_printf/issues) or [pull request](https://github.com/valyriasteel/ft_printf/pulls)!

> 📝 *This project and its documentation are written in English to ensure accessibility for a global audience.*

---
**Keywords**: printf in C, variadic functions, 42 school project, custom printf, ft_printf, formatted output
