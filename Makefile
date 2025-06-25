NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Wextra -Werror -c
OBJDIR = objs

GREEN = \033[0;32m
BLUE = \033[0;34m
RED = \033[0;31m
RESET = \033[0m

SRCS = ft_printf.c

OBJS = $(SRCS:%.c=$(OBJDIR)/%.o)

all: $(NAME)

$(NAME): $(OBJS)
		@echo "$(BLUE)Creating library $(NAME)...$(RESET)"
		@ar rc $(NAME) $(OBJS)
		@echo "$(GREEN)✓ $(NAME) created successfully!$(RESET)"

$(OBJDIR)/%.o: %.c ft_printf.h
		@mkdir -p $(OBJDIR)
		@echo "$(BLUE)Compiling $<...$(RESET)"
		@$(CC) $(CFLAGS) $< -o $@ -I .

clean:
		@echo "$(RED)Cleaning object files...$(RESET)"
		@rm -rf $(OBJDIR)
		@echo "$(GREEN)✓ Object files cleaned!$(RESET)"

fclean: clean
		@echo "$(RED)Cleaning $(NAME)...$(RESET)"
		@rm -f $(NAME)
		@echo "$(GREEN)✓ $(NAME) cleaned!$(RESET)"

re: fclean all

.PHONY: all clean fclean re
