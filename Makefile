# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yuxu <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/08/02 14:59:23 by yuxu              #+#    #+#              #
#    Updated: 2018/09/05 22:24:04 by yuxu             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fdf
SRCS = srcs/fdf.c srcs/convert.c srcs/map.c srcs/errors.c \
		srcs/manip.c srcs/color.c srcs/link.c srcs/libft/libft.a \
		srcs/dots.c srcs/index.c srcs/minilibx_macos/libmlx.a
FLAGS = -L /usr/include -lmlx -framework OpenGL -framework Appkit -g3

all: $(NAME)
#	make -C srcs/minilibx_macos
#	make -C srcs/libft

$(NAME):
		clang -I /usr/local/include $(SRCS) $(FLAGS)

clean:
#		/bin/rm srcs/minilibx_macos/*.o
#		/bin/rm srcs/libft/*.o

fclean: clean
		/bin/rm a.out
#		/bin/rm srcs/minilibx_macos/libmlx.a
#		/bin/rm srcs/libft/libft.a

re: fclean all
