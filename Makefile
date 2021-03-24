# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bgomez-r <bgomez-r@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/24 04:03:18 by bgomez-r          #+#    #+#              #
#    Updated: 2021/03/24 20:59:41 by bgomez-r         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#########################	Special Targets	#################################
# If the compilation fails, remove any residue generated.
.DELETE_ON_ERROR:
# Mutes all outputs per screen
#.SILENT:
#########################	Program Name	###################################
# Variable to indicate the name of our program
NAME_CK		=	checker

#NAME_PS	=	push_swap

#########################	Function Files	#################################
SRCS		=	print_error.c \
					checher.c \



############################################################################
CC						= gcc

INCLUDES			= -Iincludes

CFLAGS				= -Wall -Wextra -Werror -w -O3 $(INCLUDES)

LIB_COMMON		= -lm -L$(LIBFT_PATH) -l$(LIBFT_NAME)

OBJS					= $(SRCS:.c=.o)

LIBFT_PATH	= ./42_libft/libft
LIBFT_NAME	= libft
LIBFT_FILE	= $(LIBFT_PATH)/lib$(LIBFT_NAME).a

RM						= rm -rf

##########################	Rules	########################################

all: 	$(NAME_CK)	#$(NAME_PS)

$(NAME_CK): $(OBJS) $(LIBFT_FILE)
							$(CC) $(OBJS) -o checker $(CFLAGS) $(LIB_COMMON)
#$(NAME_PS):


##########################################################################

clean:




fclean:




re:			fclean all



debug:	CFLAGS += -O3 -g3 #-fsanitize=address #system("leaks -fullContent cub3D");
debug:	$(NAME)


##########################	Rules Phony	 ##################################

.PHONY:		all clean flcean re debug
