#include <defs.h>
#include <types.h>

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
	int i = FIRST;
	while (i <= List.count)
	{
		List.elements[i] = List.elements[i + 1];
		i++;
	}
	return List.elements[FIRST];
}
ArrayListObject ArrayListMoveElementsRight(struct ArrayList List)
{
	int i = List.count;
	while (i >= FIRST)
	{
		List.elements[i + 1] = List.elements[i];
		i--;
	}
	return List.elements[FIRST];
}
ArrayListObject ArrayListPerformPutLast(struct ArrayList List, ArrayListObject Object)
{
	// ArrayListObject
	return Object;
}
DllExport struct ArrayList ArrayListPerformConstruct(struct ArrayList Array, int Data[], int Count)
{
	int i = FIRST;
	Array.count = Count;
	while (i <= Count)
	{
		Array.elements[i] = Data[i];
		i++;
	}
	return Array;
}
DllExport struct ArrayList ArrayListPerformInit(struct ArrayList Array, int Value, int Count)
{
	int i = FIRST;
	Array.count = Count;
	while (i <= Count)
	{
		Array.elements[i] = Value;
		i++;
	}
	return Array;
}
ArrayListObject ArrayListGet(struct ArrayListPosition Position)
{
	ArrayListObject object;
	return object;
}
void ArrayListPut(struct ArrayListPosition Position, ArrayListObject ListObject)
{

}
HRESULT ArrayListPerformRuin(struct ArrayList List)
{
	HRESULT result;
	int i = FIRST;
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
	int i = FIRST;
	while (i <= List.count)
	{
		List.elements[i] = 0;
		i++;
	}
	result = HRESULT_SUCCESS;
	return result;
}