# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bgomez-r <bgomez-r@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/24 04:03:18 by bgomez-r          #+#    #+#              #
#    Updated: 2021/03/24 04:27:43 by bgomez-r         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#########################	Special Targets	#################################
# If the compilation fails, remove any residue generated.
.DELETE_ON_ERROR:
# Mutes all outputs per screen
#.SILENT:
#########################	Program Name	###################################
# Variable to indicate the name of our program
NAME		=	checker

NAME_2	=	push_swap

#########################	Function Files	#################################
SRCS		=



############################################################################
CC				= gcc

INCLUDES	= -Iheaders -I$(FTPRINTF_PATH)

CFLAGS		= -Wall -Wextra -Werror -w -O3 $(INCLUDES)

LIB_COMMON		= -lm -L$(FTPRINTF_PATH) -l$(FTPRINTF_NAME)

OBJS			= $(SRCS:.c=.o)

LFTDIR		=	./42_libft

FTPRINTF_PATH	= printf
FTPRINTF_NAME	= ftprintf
FTPRINTF_FILE	= $(FTPRINTF_PATH)/lib$(FTPRINTF_NAME).a

RM				= rm -rf

##########################	Rules	########################################

all: #$(NAME_2) $(NAME)

$(NAME):

$(NAME_2):


##########################################################################

clean:




fclean:




re:			fclean all



debug:	CFLAGS += -O3 -g3 #-fsanitize=address #system("leaks -fullContent cub3D");
debug:	$(NAME)

run:	$(NAME)
			./nameProgma ARGS

##########################	Rules Phony	 ##################################

.PHONY:		all clean flcean re debug
