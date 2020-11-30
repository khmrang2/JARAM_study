SRCS = hello.c

OBJS = hello.o

RUN = hello.out

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