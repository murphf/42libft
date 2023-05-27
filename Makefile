# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: styes <styes@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/24 20:58:29 by styes             #+#    #+#              #
#    Updated: 2023/05/27 22:30:10 by styes            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC        = gcc
RM        = rm -f
NAME = libft.a
OBJ_PATH=./Objects/
SRC_PATH=./Mandatory/
BONUS_PATH=./Bonus/
CFLAGS = -Wall -Wextra -Werror

SRC = ft_isdigit.c\
ft_memset.c\
ft_strjoin.c\
ft_strtrim.c\
ft_isprint.c\
ft_putchar_fd.c\
ft_strlcat.c\
ft_substr.c\
ft_atoi.c\
ft_itoa.c\
ft_putendl_fd.c\
ft_strlcpy.c\
ft_tolower.c\
ft_bzero.c\
ft_putnbr_fd.c\
ft_strlen.c\
ft_toupper.c\
ft_calloc.c\
ft_memchr.c\
ft_putstr_fd.c\
ft_strmapi.c\
ft_isalnum.c\
ft_memcmp.c\
ft_split.c\
ft_strncmp.c\
ft_isalpha.c\
ft_memcpy.c\
ft_strchr.c\
ft_strnstr.c\
ft_isascii.c\
ft_memmove.c\
ft_strdup.c\
ft_strrchr.c\
ft_striteri.c\

BONUS_SRC = ft_lstadd_back.c\
ft_lstadd_front.c\
ft_lstclear.c\
ft_lstdelone.c\
ft_lstiter.c \
ft_lstlast.c\
ft_lstmap.c\
ft_lstnew.c\
ft_lstsize.c\

#ADD DIRECTORY TO SOURCE FILES
SRCS	= $(addprefix $(SRC_PATH), $(SRC))
OBJ = ${SRC:.c=.o}
#ADD DIRECTORY TO OBJECT FILES
OBJS	= $(addprefix $(OBJ_PATH), $(OBJ))

BONUS_SRCS = $(addprefix $(BONUS_PATH), $(BONUS_SRC))
OBJBONUS = ${BONUS_SRC:.c=.o}
OBJSBONUS = $(addprefix $(OBJ_PATH), $(OBJBONUS))

#CREATE OBJECT FILES
$(OBJ_PATH)%.o: $(SRC_PATH)%.c
	$(CC) $(CFLAGS) -c $< -o $@ 

$(OBJ_PATH)%.o: $(BONUS_PATH)%.c
	$(CC) $(CFLAGS) -c $< -o $@ 

${NAME}: ${OBJS}
	ar rc ${NAME} ${OBJS}

bonus: ${OBJSBONUS}
	ar rc ${NAME} ${OBJSBONUS}

all: ${NAME}

clean:
	${RM} ${OBJS} ${OBJSBONUS}

fclean:    clean
	${RM} ${NAME}

re:        fclean all

.PHONY: all clean fclean re