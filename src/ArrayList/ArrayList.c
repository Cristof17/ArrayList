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
 *      Author: AdministratorUser
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
	return Object;
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