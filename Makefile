# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yuxu <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/08/02 14:59:23 by yuxu              #+#    #+#              #
#    Updated: 2018/08/15 21:30:26 by yuxu             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fdf
SRCS = srcs/fdf.c srcs/convert.c srcs/draw.c srcs/errors.c \
       srcs/manip.c srcs/color.c srcs/link.c srcs/libft/libft.a
FLAGS = -L /usr/local/lib -lmlx -framework OpenGL -framework AppKit -g

all: $(NAME)

$(NAME):
		clang -I /usr/local/include $(SRCS) $(FLAGS)

fclean:
		/bin/rm a.out

re: fclean all
