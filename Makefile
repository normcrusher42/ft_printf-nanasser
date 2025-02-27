# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nanasser <nanasser@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/24 18:06:28 by nanasser          #+#    #+#              #
#    Updated: 2025/02/25 18:27:49 by nanasser         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

OBJ_PATH = obj/
LIBFT_PATH = libft/

NAME = libftprintf.a
LIBFT = $(LIBFT_PATH)libft.a

SRC = ./ft_printf.c ft_printf_str.c ft_printf_unsigned.c ft_printf_ptr.c ft_printf_hex.c \

OBJ = $(SRC:%.c=$(OBJ_PATH)%.o)

CC		=		cc

CFLAGS	= -Wall -Werror -Wextra

all:$(NAME)

$(NAME):  $(LIBFT) $(OBJ_PATH) $(OBJ)
	cp $(LIBFT) $(NAME)
	ar -rcs $(NAME) $(OBJ)

$(LIBFT):
	make -C $(LIBFT_PATH) all

$(OBJ_PATH)%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_PATH):
	mkdir -p $(OBJ_PATH)

clean:
	@rm -rf $(OBJ_PATH)
	@make clean -C $(LIBFT_PATH)
	@echo "yup, that's everything."

fclean: clean
	@rm -f $(NAME) 
	@rm -f $(LIBFT)
	@rm -f a.out

re: fclean $(NAME)

.PHONY: all clean fclean re