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
       srcs/manip.c srcs/color.c srcs/link.c
FLAGS = -L./minilibx_macos -lmlx -framework OpenGL -framework AppKit -L./srcs/libft -lft -g3

all: $(NAME)
	make -C srcs/libft
	make -C minilibx_macos

$(NAME):
		clang -I /usr/local/include $(SRCS) $(FLAGS)

clean:
		/bin/rm srcs/libft/*.o
		/bin/rm minilibx_macos/*.o

fclean:
		/bin/rm a.out
		/bin/rm srcs/libft/libft.a
		/bin/rm minilibx_macos/libmlx.a

re: fclean all
