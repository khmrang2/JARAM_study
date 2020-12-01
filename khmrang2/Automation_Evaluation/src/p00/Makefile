SRCS = stars.py

CC = python3

RM = rm -f

${NAME}:
	${CC} ${SRCS}

all : ${NAME}

bonus: all

clean:
	${RM} ${OBJS}

fclean: clean
	${RM} ${RUN}
	
re: fclean all
