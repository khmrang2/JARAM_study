SRCS = stars.c

OBJS = stars.o

RUN = stars.out

CC = gcc

RM = rm -f

${NAME}: ${OBJS}
	gcc -o ${RUN} ${OBJS}

all : ${NAME}

bonus: all

clean:
	${RM} ${OBJS}

fclean: clean
	${RM} ${RUN}
	
re: fclean all