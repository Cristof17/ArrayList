#include <defs.h>
#include <types.h>
// #include <stdio.h>
#ifndef _WIN95
 #include <ArrayList/ArrayList.h>
// #eliuf
#elif defined _WIN95
#include <ArrayList\ArrayList.h>
#endif
/*
 * ArrayList.c
 *
 *  Created on: 20 nov. 2025
 *      Author: cristoforrotsching
 */

struct ArrayList ArrayListPerformCopy(struct ArrayList List, struct ArrayList Copy)
{
	struct ArrayList list;
	return list;
}
ArrayListObject ArrayListPerformGetFirst(struct ArrayList List)
{
	ArrayListObject first;
	first = List.elements[FIRST];
	return first;
}
ArrayListObject ArrayListPerformGetLast(struct ArrayList List)
{
	ArrayListObject last;
	last = List.elements[List.count];
	return last;
}
ArrayListObject ArrayListPerformPutFirst(struct ArrayList List, ArrayListObject Object)
{
	ArrayListObject last;
	last = List.count;
	ArrayListMoveElementsRight(List);
	List.elements[FIRST] = Object;
	// Array
	ArrayListObject first;
	first = List.elements[FIRST];
	List.count++;
	return first;
}
ArrayListObject ArrayListRemoveFirst(struct ArrayList List)
{
	ArrayListObject first;
	List.elements[FIRST] = 0;
	ArrayListMoveElementsLeft(List);
	List.count--;
	first = List.elements[FIRST];
	return first;
	// int i = FIRST;
	// while (i <= List.count)
	// {
	// 	List.elements[i] = List.elements[i + 1];
	// 	i++;
	// }
	// List.count--;
}
ArrayListObject ArrayListRemoveLast(struct ArrayList List)
{
	ArrayListObject last;
	List.elements[List.count] = 0;
	List.count--;
	last = List.elements[List.count];
	return last;
}
ArrayListObject ArrayListMoveElementsLeft(struct ArrayList List)
{
	ArrayListPosition i = FIRST;
	ArrayListObject aux;
	while (i <= List.count)
	{
		aux = List.elements[i + 1];
		List.elements[i] = aux;
		i++;
	}
	return List.elements[FIRST];
}
ArrayListObject ArrayListMoveElementsRight(struct ArrayList List)
{
	ArrayListPosition i = List.count;
	ArrayListObject aux;
	while (i >= FIRST)
	{
		aux = List.elements[i];
		List.elements[i + 1] = aux;
		i--;
	}
	return List.elements[FIRST];
}
ArrayListObject ArrayListPerformPutLast(struct ArrayList List, ArrayListObject Object)
{
	// ArrayListObject
	return Object;
}
DllExport struct ArrayList ArrayListPerformConstruct(struct ArrayList Array, ArrayListObject Data[], ArrayListCount Count)
{
	ArrayListPosition i = FIRST;
	ArrayListValue aux;
	Array.count = Count;
	while (i <= Count)
	{
		aux = Data[i-1];
		Array.elements[i] = aux;
		i++;
	}
	return Array;
}
DllExport struct ArrayList ArrayListPerformInit(struct ArrayList Array, ArrayListValue Value, ArrayListCount Count)
{
	ArrayListPosition i;
	// ArrayListPosition* position;
	// ArrayListPosition* base;
	// ArrayListOffset offset;
	ArrayListObject aux;
	ArrayListPosition j;
	i = FIRST;
	// base = BASE(Array.elements);
	// offset = OFFSET(i,ArrayListObject);
	// position = base + offset;
	// i = &(Array.elements[FIRST]);
	// Array.count = Count;
	// i = FIRST;
	aux = Value;
	// position = i;
	// #pragma pack(push,8)
	while (i <= Count)
	{
		Array.elements[i] = aux;
		// position = i-1;
		// *position = aux;
		// #pragma pack(pop)
		// position = base + offset;
		// *position = aux;
		// Array.elements[i] = aux;
		j = i + 1;
		i = j;
		// base = BASE(Array.elements);
		// offset = OFFSET(i,ArrayListObject);
		// position = base + offset;
	}
	return Array;
}
ArrayListObject ArrayListGet(struct ArrayListPosition Position)
{
	ArrayListObject object;
	return object;
}
// HRESULT ArrayListPerformPrint(struct ArrayList List)
// {
// 	HRESULT result;
// 	int i = FIRST;
// 	while (i <= List.count)
// 	{
// 		printf("Element %d: %d\n", i, List.elements[i]);
// 		i++;
// 	}
// 	result = HRESULT_SUCCESS;
// 	return result;
// }
void ArrayListPut(struct ArrayListPosition Position, ArrayListObject ListObject)
{

}
HRESULT ArrayListPerformRuin(struct ArrayList List)
{
	HRESULT result;
	ArrayListPosition i = FIRST;
	while (i <= List.count)
	{
		List.elements[i] = 0;
		i++;
	}
	List.count = 0;
	result = HRESULT_SUCCESS;
	return result;
}
HRESULT ArrayListPerformDelete(struct ArrayList List)
{
	HRESULT result;
	ArrayListPosition i = FIRST;
	while (i <= List.count)
	{
		List.elements[i] = 0;
		i++;
	}
	result = HRESULT_SUCCESS;
	return result;
}
