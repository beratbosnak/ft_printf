# ft_printf - A Custom `printf` Implementation

![Language](https://img.shields.io/badge/Language-C-blue?style=for-the-badge&logo=c)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

## 📋 Table of Contents

1.  [About The Project](#-about-the-project)
2.  [Supported Conversions](#-supported-conversions)
3.  [Getting Started](#-getting-started)
    -   [Prerequisites](#prerequisites)
    -   [Installation & Compiling](#installation--compiling)
5.  [Usage Example](#-usage-example)
6.  [License](#-license)
7.  [Contact](#-contact)

## 🚀 About The Project

`ft_printf` is a custom implementation of the standard C `printf` function. This project's primary challenge is handling a variable number of arguments, a concept known as **variadic functions**. It parses a format string and substitutes arguments accordingly, providing a foundational tool for formatted output in C.

The final output is a static library, `libftprintf.a`, which can be linked to any C project to provide flexible printing capabilities, much like its standard counterpart.

## ✨ Supported Conversions

This implementation of `ft_printf` supports the following format specifiers:

| Specifier | Output |
| :--- | :--- |
| `%c` | A single character. |
| `%s` | A string of characters. |
| `%p` | The `void *` pointer argument printed in hexadecimal format. |
| `%d` | A decimal (base 10) number. |
| `%i` | An integer in base 10. |
| `%u` | An unsigned decimal (base 10) number. |
| `%x` | A number in hexadecimal (base 16) lowercase format. |
| `%X` | A number in hexadecimal (base 16) uppercase format. |
| `%%` | A literal percent sign. |

## 🛠 Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

You need a C compiler (like `gcc` or `clang`) and `make` installed on your system. This project is designed for UNIX-like operating systems.

### Installation & Compiling

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/beratbosnak/ft_printf.git
    cd ft_printf
    ```

2.  **Compile the library using `make`:**
    The following commands are available to manage the project:

    *   `make` or `make all`
        > Compiles the source files and creates the static library `libftprintf.a`.
    *   `make clean`
        > Removes the temporary object files (`.o`).
    *   `make fclean`
        > Removes the object files and the `libftprintf.a` library.
    *   `make re`
        > Re-compiles the library from scratch by running `fclean` and `all` sequentially.

## 🖥 Usage Example

Here is a simple example demonstrating how to link and use `ft_printf` in a C program.

1.  Create a `main.c` file:

    ```c
    #include "ft_printf.h"

    int main(void)
    {
        char          *s = "World";
        int           d = 42;
        unsigned int  u = 2147483647;

        ft_printf("--- Testing ft_printf ---\n");
        ft_printf("Hello, %s!\n", s);
        ft_printf("The answer is %d.\n", d);
        ft_printf("Unsigned max is %u.\n", u);
        ft_printf("Hexadecimal of %d is: %x in lowercase and %X in uppercase.\n", d, d, d);
        ft_printf("A pointer address looks like this: %p\n", s);
        ft_printf("Don't forget the %% sign!\n");
        ft_printf("--- Test Complete ---\n");
        return (0);
    }
    ```

2.  Compile your program, linking the `ft_printf` library:

    ```bash
    cc main.c -L. -lftprintf -o my_program
    ```

3.  Run the program:
    ```bash
    ./my_program
    ```
4.  **Expected Output:**

    ```text
    --- Testing ft_printf ---
    Hello, World!
    The answer is 42.
    Unsigned max is 2147483647.
    Hexadecimal of 42 is: 2a in lowercase and 2A in uppercase.
    A pointer address looks like this: 0x...
    Don't forget the % sign!
    --- Test Complete ---
    ```

## 📄 License

This project is distributed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## 📬 Contact

**Berat Boşnak**

*   **LinkedIn:** [linkedin.com/in/beratbosnak](https://www.linkedin.com/in/beratbosnak)
---
