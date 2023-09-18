# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vasferre <vasferre@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/28 15:03:32 by vasferre          #+#    #+#              #
#    Updated: 2023/04/11 15:27:32 by vasferre         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
CFLAGS = -Wall -Wextra -Werror
NAME_CLIENT = client
NAME_SERVER = server
LIBFT = ./libft/libft.a

SRC_CLIENT = src/client.c
OBJ_CLIENT = $(SRC_CLIENT:.c=.o)

SRC_SERVER = src/server.c
OBJ_SERVER = $(SRC_SERVER:.c=.o)

NAME_CLIENT_BONUS = client_bonus
BONUS_SRC_CLIENT = bonus/client_bonus.c
BONUS_OBJ_CLIENT = $(BONUS_SRC_CLIENT:.c=.o)

NAME_SERVER_BONUS = server_bonus
BONUS_SRC_SERVER = bonus/server_bonus.c
BONUS_OBJ_SERVER = $(BONUS_SRC_SERVER:.c=.o)

all: $(NAME_CLIENT) $(NAME_SERVER)

$(NAME_CLIENT): $(OBJ_CLIENT)
#$(MAKE) --no-print-directory -C ./libft
	$(MAKE) --no-print-directory -C ./libft
	$(CC) $(CFLAGS) $(OBJ_CLIENT) $(LIBFT) -o $(NAME_CLIENT)

$(NAME_SERVER): $(OBJ_SERVER)
	$(MAKE) --no-print-directory -C ./libft
	$(CC) $(CFLAGS) $(OBJ_SERVER) $(LIBFT) -o $(NAME_SERVER)

$(NAME_IENT_BONUS): $(BONUS_OBJ_CLIENT)
	$(MAKE) --no-print-directory -C ./libft
	$(CC) $(CFLAGS) $(BONUS_OBJ_CLIENT) $(LIBFT) -o $(NAME_CLIENT_BONUS)

$(NAME_SERVER_BONUS): $(BONUS_OBJ_SERVER)
	$(MAKE) --no-print-directory -C ./libft
	$(CC) $(CFLAGS) $(BONUS_OBJ_SERVER) $(LIBFT) -o $(NAME_SERVER_BONUS)

bonus: $(NAME_CLIENT_BONUS) $(NAME_SERVER_BONUS)

clean:
		
	rm -rf $(OBJ_CLIENT) $(OBJ_SERVER)
	rm -rf $(BONUS_OBJ_CLIENT) $(BONUS_OBJ_SERVER)

fclean: clean
	$(MAKE) fclean -C ./libft
	rm -rf $(NAME_CLIENT) $(NAME_SERVER)
	rm -rf $(NAME_CLIENT_BONUS) $(NAME_SERVER_BONUS)

re: fclean all
