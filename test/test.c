#ifndef HAVE_STDIO_H
#elif defined HAVE_STDIO_H
#endif
#include <stdio.h>
#include <ArrayList/ArrayList.h>
#include <types.h>
int main()
{
	struct ArrayList List;
	List = ArrayListPerformConstruct(List, (int[]){ 1, 2, 3, 4, 5 }, 5);
	printf("List count: %d\n", List.count);
	return 0;
}
