# ft_printf - Custom printf() Implementation

[![License: MIT](https://img.shields.io/badge/license-MIT-green?style=for-the-badge)](LICENSE)
[![Language C](https://img.shields.io/badge/language-C-blue?style=for-the-badge)](https://en.wikipedia.org/wiki/C_(programming_language))
[![42 Kocaeli](https://img.shields.io/badge/42-Kocaeli-black?style=for-the-badge)](https://www.42kocaeli.com.tr)

> A complete reimplementation of the C standard library's printf() function, featuring variadic functions and formatted output handling. This project demonstrates advanced C programming techniques including variable arguments, string parsing, and type conversion.

## 📖 Table of Contents
* [About The Project](#-about-the-project)
* [Key Features & Technical Skills](#-key-features--technical-skills)
* [Supported Format Specifiers](#-supported-format-specifiers)
* [Technical Implementation](#-technical-implementation)
* [How To Use](#-how-to-use)
  * [Prerequisites](#prerequisites)
  * [Compilation](#compilation)
  * [Usage Example](#usage-example)
* [What I Learned](#-what-i-learned)
* [Project Requirements](#-project-requirements)
* [License](#-license)
* [Contact](#-contact)

## 🎯 About The Project

ft_printf is a recreation of the standard C library's `printf()` function, built from scratch as part of **42 School's curriculum**. This project challenges students to implement one of C's most versatile and widely-used functions, requiring deep understanding of variadic functions, format string parsing, and type-safe output handling.

**Function Prototype:**
```c
int ft_printf(const char *format, ...);
```
Returns the number of characters printed (excluding the null terminator).

**Why This Project Matters:**
- Demonstrates understanding of **variadic functions** (`va_start`, `va_arg`, `va_end`)
- Shows proficiency in **string parsing** and **format specifier handling**
- Develops skills in **type conversion** and **base conversion** algorithms
- Provides reusable formatted output functionality for future projects

The result is a static library (`libftprintf.a`) that can be integrated into any C project, providing the same flexibility as the standard printf().

## 🔧 Key Features & Technical Skills

This project demonstrates proficiency in:

| Technical Skill | Implementation |
|----------------|----------------|
| **Variadic Functions** | Variable argument handling with va_list macros |
| **String Parsing** | Format string analysis and specifier detection |
| **Type Conversion** | Converting various data types to string representations |
| **Base Conversion** | Decimal, hexadecimal (upper/lowercase) number systems |
| **Pointer Handling** | Memory address formatting and display |
| **Output Management** | Character-by-character output with write() system call |
| **Return Value Tracking** | Accurate character count across all conversions |

**Code Quality Standards:**
- ✅ Matches standard printf() behavior
- ✅ Compiled with `-Wall -Wextra -Werror` flags
- ✅ No segmentation faults or undefined behavior
- ✅ Norminette compliant (42's strict coding standard)
- ✅ Zero memory leaks

## 📚 Supported Format Specifiers

The library supports the following format conversions:

| Specifier | Description | Example Input | Example Output |
|-----------|-------------|---------------|----------------|
| `%c` | Single character | `ft_printf("%c", 'A')` | `A` |
| `%s` | String | `ft_printf("%s", "Hello")` | `Hello` |
| `%p` | Pointer address (hex) | `ft_printf("%p", ptr)` | `0x16f262e4c` |
| `%d` | Signed decimal integer | `ft_printf("%d", -42)` | `-42` |
| `%i` | Signed integer (base 10) | `ft_printf("%i", 42)` | `42` |
| `%u` | Unsigned decimal integer | `ft_printf("%u", 42)` | `42` |
| `%x` | Hexadecimal (lowercase) | `ft_printf("%x", 255)` | `ff` |
| `%X` | Hexadecimal (uppercase) | `ft_printf("%X", 255)` | `FF` |
| `%%` | Literal percent sign | `ft_printf("%%")` | `%` |

## 🔍 Technical Implementation

### Core Components

**1. Format String Parser**
- Iterates through format string character by character
- Detects `%` and identifies the following conversion specifier
- Dispatches to appropriate handler function

**2. Variadic Argument Handling**
```c
va_list args;
va_start(args, format);
// Process arguments based on specifiers
va_end(args);
```

**3. Type-Specific Converters**
- **Character/String**: Direct output handling
- **Integer**: Handles signed/unsigned, negatives, and INT_MIN edge case
- **Hexadecimal**: Base-16 conversion with custom digit mapping
- **Pointer**: NULL handling + prefix "0x" + address conversion

**4. Output Management**
- Uses `write()` system call for character output
- Tracks and returns total characters printed
- Handles errors gracefully

### Notable Implementation Challenges

**1. Variadic Functions**
- First exposure to `va_start`, `va_arg`, `va_copy`, `va_end`
- Understanding type promotion and type safety
- Proper cleanup to prevent undefined behavior

**2. Base Conversion Algorithm**
- Converting decimal to hexadecimal without sprintf()
- Handling both uppercase and lowercase hex digits
- Managing zero and negative cases

**3. Pointer Formatting**
- Converting memory addresses to hexadecimal
- Handling NULL pointers appropriately
- Platform-specific address size considerations

**4. Return Value Accuracy**
- Counting every character printed across all conversions
- Maintaining count through recursive or iterative calls
- Ensuring consistency with standard printf()

### Build System
The Makefile includes:
- `make` or `make all` - Compiles the library
- `make clean` - Removes object files
- `make fclean` - Removes object files and library
- `make re` - Recompiles everything from scratch

## 🚀 How To Use

### Prerequisites

- C compiler (gcc or clang)
- Make build automation tool
- UNIX-like operating system (Linux, macOS)

### Compilation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/beratbosnak/ft_printf.git
   cd ft_printf
   ```

2. **Compile the library:**
   ```bash
   make
   ```
   This creates `libftprintf.a` static library file.

3. **Clean build artifacts (optional):**
   ```bash
   make clean    # Remove object files
   make fclean   # Remove object files and library
   ```

### Usage Example

**Example: Comprehensive Format Testing**
```c
#include "ft_printf.h"

int main(void)
{
    char          *str = "World";
    int           num = 42;
    unsigned int  u_num = 4294967295;
    void          *ptr = &num;
    
    // Character and string
    ft_printf("Character: %c\n", 'A');
    ft_printf("String: %s\n", str);
    
    // Integers
    ft_printf("Signed decimal: %d\n", num);
    ft_printf("Integer: %i\n", -42);
    ft_printf("Unsigned: %u\n", u_num);
    
    // Hexadecimal
    ft_printf("Hex (lower): %x\n", 255);
    ft_printf("Hex (upper): %X\n", 255);
    
    // Pointer
    ft_printf("Pointer: %p\n", ptr);
    
    // Percent sign
    ft_printf("Percentage: 100%%\n");
    
    return (0);
}
```

**Compilation with ft_printf:**
```bash
cc -Wall -Wextra -Werror your_program.c -L. -lftprintf -o your_program
./your_program
```

**Expected Output:**
```
Character: A
String: World
Signed decimal: 42
Integer: -42
Unsigned: 4294967295
Hex (lower): ff
Hex (upper): FF
Pointer: 0x16f262e4c
Percentage: 100%
```

## 💡 What I Learned

This project provided valuable experience in several advanced C programming concepts:

### Core Technical Skills
- **Variadic Functions**: First hands-on experience with variable argument lists using `va_list`, `va_start`, `va_arg`, and `va_end` macros
- **Format Parsing**: Developed robust string parsing logic to detect and handle format specifiers
- **Type Conversion Algorithms**: Implemented algorithms to convert integers to various string representations
- **Base Conversion**: Built decimal-to-hexadecimal converters without using standard library functions
- **Low-Level Output**: Direct use of `write()` system call for character-by-character output

### Software Engineering Practices
- **Modular Design**: Structured code with separate handler functions for each conversion type
- **Edge Case Handling**: Addressed NULL pointers, INT_MIN, UINT_MAX, and zero values
- **Testing**: Created comprehensive test cases covering all format specifiers and edge cases
- **Code Reusability**: Built a library that can be integrated into future C projects
- **Standard Compliance**: Ensured behavior matches standard printf() for consistency

### Problem-Solving Approaches
- **Algorithm Design**: Designed efficient conversion algorithms without standard library dependencies
- **Debugging Complex Logic**: Traced through variadic argument processing to identify issues
- **Return Value Management**: Accurately tracked character count across multiple function calls

**Impact**: This library has been integrated into subsequent 42 School projects requiring formatted output, replacing reliance on standard printf().

## 📋 Project Requirements

This project was developed according to 42 School's strict requirements:

### Mandatory Constraints
- ✅ Written entirely in C
- ✅ Follows [Norminette](https://github.com/42School/norminette) coding standard
- ✅ Compiled with `-Wall -Wextra -Werror` flags
- ✅ No crashes (segfaults, bus errors, double free)
- ✅ Zero memory leaks
- ✅ Makefile with rules: `$(NAME)`, `all`, `clean`, `fclean`, `re`
- ✅ Library created using `ar` command (not `libtool`)
- ✅ Return value matches printf() behavior
- ✅ Supports conversions: `c s p d i u x X %`

### External Functions Allowed
- `malloc`, `free`, `write`
- `va_start`, `va_arg`, `va_copy`, `va_end`

### Additional Notes
- **Libft Usage**: This project allows use of personal libft functions
  - Can utilize existing libft utilities (string operations, memory functions, etc.)
  - Once completed, ft_printf() itself can be added to libft for future projects
- **Bonus Part**: Not implemented (focused on perfect mandatory implementation)
  - Bonus features include: Flag management (`-`, `0`, `.` field width), additional flags (`#`, `+`, space)
  - These provide advanced formatting options like padding, precision, and prefix control
- **Buffer Management**: Not implemented (outputs character-by-character using write())
- **Testing**: Thoroughly tested against standard printf() output for all supported conversions

## ⚖ License

This project is licensed under the MIT License. See the [`LICENSE`](LICENSE) file for more details.

## 📫 Contact

**Berat Boşnak**

- 💼 LinkedIn: [linkedin.com/in/beratbosnak](https://www.linkedin.com/in/beratbosnak)
- 🐙 GitHub: [@beratbosnak](https://github.com/beratbosnak)

---

<div align="center">

*This project is part of the 42 School curriculum - a peer-to-peer learning environment that emphasizes practical skills, problem-solving, and collaboration.*

**42 School** | **Kocaeli Campus** | **2023**

</div>
