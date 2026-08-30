#ifndef HAVE_STDIO_H
#elif defined HAVE_STDIO_H
#endif
#include <stdio.h>
#include <ArrayList/ArrayList.h>
#include <types.h>
int main()
{
	struct ArrayList List;
	List = ArrayListPerformConstruct(List, (int[]){ 1, 2 }, 2);
	// ArrayListPerformPrint(List);
	int i = FIRST;
	while (i <= List.count){
#ifdef _64BIT
		printf("%ld\n", List.elements[i]);
#else
		printf("%d\n", List.elements[i]);
#endif
		i++;
	}
	List = ArrayListPerformInit(List, 5, 4);
	i = FIRST;
	while (i <= List.count){
#ifdef _64BIT
		printf("%ld\n", List.elements[i]);
#else
		printf("%d\n", List.elements[i]);
#endif
		i++;
	}
	return 0;
}
