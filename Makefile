# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: murphy <murphy@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/24 20:58:29 by styes             #+#    #+#              #
#    Updated: 2022/11/10 18:06:13 by murphy           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a


OBJ_PATH=./Objects/
SRC_PATH=./Mandatory/
B=Bonus

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

BONUS = $(B)/ft_lstadd_back.c\
$(B)/ft_lstadd_front.c\
$(B)/ft_lstclear.c\
$(B)/ft_lstdelone.c\
$(B)/ft_lstiter.c \
$(B)/ft_lstlast.c\
$(B)/ft_lstmap.c\
$(B)/ft_lstnew.c\
$(B)/ft_lstsize.c\

SRCS	= $(addprefix $(SRC_PATH), $(SRC))
OBJ = ${SRC:.c=.o}
OBJS	= $(addprefix $(OBJ_PATH), $(OBJ))
OBJBONUS = ${BONUS:.c=.o}

CC        = gcc
RM        = rm -f

CFLAGS = -Wall -Wextra -Werror

$(OBJ_PATH)%.o: $(SRC_PATH)%.c
	$(CC) $(CFLAGS) -c $< -o $@ 

${NAME}: ${OBJS}
	ar rc ${NAME} ${OBJS}

bonus: ${OBJBONUS}
	ar rc ${NAME} ${OBJBONUS}

#.c.o:
#${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

all: ${NAME}

clean:
	${RM} ${OBJS} ${OBJBONUS}

fclean:    clean
	${RM} ${NAME}

re:        fclean all
