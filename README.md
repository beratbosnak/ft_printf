# ft_printf

![ft_printf](https://img.shields.io/badge/ft_printf-C%20Function-blue.svg)

## 📌 Project Description
`ft_printf` is a custom implementation of the standard `printf` function in C. It supports formatted output with various specifiers and enhances understanding of variadic functions, formatting, and buffer management.

## 📂 Features
The `ft_printf` function supports the following format specifiers:

### 🔢 Numeric Conversions
- `%d` - Signed decimal integer
- `%i` - Signed integer (same as `%d`)
- `%u` - Unsigned decimal integer
- `%x` - Unsigned hexadecimal (lowercase)
- `%X` - Unsigned hexadecimal (uppercase)

### 🔤 String & Character Handling
- `%c` - Prints a single character
- `%s` - Prints a string
- `%p` - Prints a pointer address

### 🔧 Other Specifiers
- `%%` - Prints a literal `%` character

## ⚙️ Installation
To compile the library, run the following command:

```sh
make
```

This will generate the static library file `libftprintf.a`.

## 🚀 Usage
To use `ft_printf` in your project, include the header file and compile with the library:

```c
#include "ft_printf.h"
```

Then, compile your program with:

```sh
cc main.c -L. -lftprintf -o program
```

### Example Usage with `libftprintf.a`
After compiling `ft_printf` into `libftprintf.a`, you can use its functions in your programs.

#### Example: Printing Different Types
```c
#include "ft_printf.h"

int main() {
    ft_printf("Hello, ft_printf!\n");
    ft_printf("Integer: %d\n", 42);
    ft_printf("Hexadecimal: %x\n", 255);
    return 0;
}
```

Compile and run:
```sh
cc main.c -L. -lftprintf -o my_program
./my_program
```

#### Expected Output:
```
Hello, ft_printf!
Integer: 42
Hexadecimal: ff
```

## 📜 License
This project is licensed under the **[MIT License](LICENSE)**.

## 📧 Contact
For any questions or feedback, feel free to reach out via GitHub!

