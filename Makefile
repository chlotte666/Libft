# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: challeau <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/07 18:08:08 by challeau          #+#    #+#              #
#    Updated: 2020/02/08 14:37:44 by challeau         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	=	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
			ft_isdigit.c ft_isprint.c ft_itoa.c  ft_memccpy.c ft_memchr.c \
			ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putnbr_fd.c \
			ft_putendl_fd.c ft_putstr_fd.c ft_split.c ft_strchr.c ft_strdup.c ft_strjoin.c \
			ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c \
			ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c ft_strnlen.c \
			ft_realloc.c ft_strrev.c ft_strlowcase.c ft_strcat.c

BSRCS	=	ft_lstadd_back.c ft_lstadd_front.c \
			ft_lstclear.c ft_lstdelone.c ft_lstiter.c ft_lstlast.c \
			ft_lstmap.c ft_lstnew.c ft_lstsize.c

OBJS	=	${SRCS:.c=.o}

BOBJS	=	${BSRCS:.c=.o}

HEAD	=	Libft

NAME	=	libft.a

RM		=	rm -f

FLAGS	=	-Wall -Wextra -Werror

.c.o:
	gcc ${FLAGS} -I ${HEAD} -c $< -o ${<:.c=.o}

$(NAME) : ${OBJS}
	ar -rcs libft.a ${OBJS}

all:	${NAME}

bonus:	${OBJS} $(BOBJS)
	ar -rcs libft.a $(OBJS) ${BOBJS}

clean:
		${RM} ${OBJS}
		${RM} ${BOBJS}

fclean:	clean
	${RM} ${NAME}
	${RM} libft_bonus.a

re:		fclean all

.PHONY:all clean fclean re bonus%
