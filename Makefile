# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahel-mou <ahel-mou@student-1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/25 14:32:16 by ahel-mou          #+#    #+#              #
#    Updated: 2021/11/28 15:08:56 by ahel-mou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

FLAGS = -Wall -Wextra -Werror

SRCS =	ft_printf.c\
		./src/var_type.c\
		./src/ft_putchar.c\
		./src/ft_putstr.c\
		./src/ft_putnbr_base_unsigned.c\
		./src/ft_strlen.c\
		./src/ft_putnbr_base.c\
		./src/ft_pt_address.c\
		./src/base_num_len.c

# main: fclean
# 	gcc main.c $(SRCS) -o main
# 	clear
# 	./main
	
CC = cc

FLAGS = -Wall -Werror -Wextra

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME) : $(OBJS)
	@$(CC) -c $(CFLAGS) $(SRCS)
	@ar -rcs $(NAME) $(OBJS)

clean:
	find . -name "*.o" -delete

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: clean fclean all re