#include <unistd.h>
#include <stdlib.h>

int main(int argc, char* argv[])
{
	char c = '*';
	char blank ='\n';
	int i;
	i = atoi(argv[1]);
	int tmp;
	tmp = 0;
	while(i-- > 0)
	{
		while(tmp < i)
		{
			write(1, &c, 1);
			tmp++;
		}
		write(1, &blank,1);
		tmp = 0;
	}
	return 0;
}
