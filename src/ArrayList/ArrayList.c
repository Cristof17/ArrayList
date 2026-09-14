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

DllExport struct ArrayList ArrayListPerformCopy(struct ArrayList From, struct ArrayList To)
{
	struct ArrayList list;
	return list;
}
DllExport ArrayListValue ArrayListPerformGetFirst(struct ArrayList Array)
{
	ArrayListValue first;
	first = Array.elements[FIRST];
	return first;
}
DllExport ArrayListValue ArrayListPerformGetLast(struct ArrayList Array)
{
	ArrayListValue last;
	last = Array.elements[Array.count];
	return last;
}
DllExport ArrayListValue ArrayListPerformPutFirst(struct ArrayList Array, ArrayListValue Data)
{
	ArrayListValue last;
	last = Array.count;
	ArrayListMoveElementsRight(Array);
	Array.elements[FIRST] = Data;
	// Array
	ArrayListValue first;
	first = Array.elements[FIRST];
	Array.count++;
	return first;
}
DllExport ArrayListValue ArrayListRemoveFirst(struct ArrayList Array)
{
	ArrayListValue first;
	Array.elements[FIRST] = 0;
	ArrayListMoveElementsLeft(Array);
	Array.count--;
	first = Array.elements[FIRST];
	return first;
	// int i = FIRST;
	// while (i <= List.count)
	// {
	// 	List.elements[i] = List.elements[i + 1];
	// 	i++;
	// }
	// List.count--;
}
DllExport ArrayListValue ArrayListRemoveLast(struct ArrayList Array)
{
	ArrayListValue last;
	Array.elements[Array.count] = 0;
	Array.count--;
	last = Array.elements[Array.count];
	return last;
}
DllExport ArrayListValue ArrayListMoveElementsLeft(struct ArrayList Array)
{
	ArrayListPosition i = FIRST;
	ArrayListValue aux;
	while (i <= Array.count)
	{
		aux = Array.elements[i + 1];
		Array.elements[i] = aux;
		i++;
	}
	return Array.elements[FIRST];
}
DllExport ArrayListValue ArrayListMoveElementsRight(struct ArrayList Array)
{
	ArrayListPosition i = Array.count;
	ArrayListValue aux;
	while (i >= FIRST)
	{
		aux = Array.elements[i];
		Array.elements[i + 1] = aux;
		i--;
	}
	return Array.elements[FIRST];
}
DllExport ArrayListValue ArrayListPerformPutLast(struct ArrayList Array, ArrayListValue Data)
{
	// ArrayListObject
	return Data;
}
DllExport struct ArrayList ArrayListPerformConstruct(struct ArrayList Array, ArrayListValue Data[], ArrayListCount Count)
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
DllExport struct ArrayList ArrayListPerformInit(struct ArrayList Array, ArrayListValue Data, ArrayListCount Count)
{
	ArrayListPosition i;
	ArrayListPosition j;
	ArrayListValue aux;
	// ArrayListPosition* position;
	// ArrayListPosition* base;
	// ArrayListOffset offset;
	i = FIRST;
	// base = BASE(Array.elements);
	// offset = OFFSET(i,ArrayListObject);
	// position = base + offset;
	// i = &(Array.elements[FIRST]);
	// Array.count = Count;
	// i = FIRST;
	aux = Data;
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
DllExport HRESULT ArrayListPerformRuin(struct ArrayList PA)
{
	HRESULT result;
	ArrayListPosition i = FIRST;
	while (i <= PA.count)
	{
		PA.elements[i] = 0;
		i++;
	}
	PA.count = 0;
	result = HRESULT_SUCCESS;
	return result;
}
DllExport HRESULT ArrayListPerformDelete(struct ArrayList PA)
{
	HRESULT result;
	ArrayListPosition i = FIRST;
	while (i <= PA.count)
	{
		PA.elements[i] = 0;
		i++;
	}
	result = HRESULT_SUCCESS;
	return result;
}
