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

struct ArrayList ArrayListPerformCopy(struct ArrayList List)
{
// 	//struct ArrayList copy;
// 	// copt
// 	// copy. 
// 	// copy = ArrayListPefr
// 	// copy = ArrayListPerformConstruct(;)
// 	// copy. 
// 	//copy = ArrayListPerformConstruct();
// 	//copy = ArrayList
	// PAResult result;
	// return result;
	struct ArrayList list;
	return list;
}

// HRESULT ArrayListPerformCopyTo(struct ArrayList Array, struct PAList List, struct PAElement Element) {
	// PAResult result = PARESULT_SUCCESS;
	// struct ArrayListPosition total;
	// struct PACount count;
	// struct ArrayList destination;
	// total = Array.place;
	// if (Element.index.Resource.value.val < FIRST)
	// 	return PARESULT_FAIL;
	// else if (Element.index.Resource.value.val > List.n.number)
	// 	return PARESULT_FAIL;
	// else {
	// 	// int i = FIRST;
	// 	struct PAResource resource = Element.index.Resource;
	// 	PAInt node = resource.value.val;
	// 	Array.place.position = FIRST;
	// 	while (Array.place.position <= List.n.number)
	// 	{
	// 		ArrayListObject neigh = Array.objects[Array.place.position];
	// 		List.adj[node].adj.objects[Array.place.position] = neigh;
	// 		Array.place.position++;

	// 	}
	// }
	// if (result == PARESULT_FAIL)
	// 	return result;
	// return PARESULT_SUCCESS;
// }
// struct PAData ArrayListGet(struct PAData[],PAInt);
// struct PARecord ArrayListPerformArrange(PAInt)
// {

// }
// struct PARecord ArrayListPutCount(struct ArrayList, struct PACount)
// {

// }
// sjt
// struct A
// ArrayListSize ArrayListPerformSize()
// {
// 	// ArrayListSize first;
// 	// return first;
// 	// PAInt first = (PAInt) FIRST;
// 	// PAInt x;
// 	// PAInt y;
// 	// x = first;
// 	//while not end of list
// 	//counter ++
// 	//return counter
// 	//0 is for resizing, put element in first position and then move the rest to the right
// 	//for next move
// 	//n+1 is for NULL terminatior in List workld
// 	// return FIRST;
// }
ArrayListObject ArrayListPerformGetFirst(struct ArrayList List)
{
	ArrayListObject first;
	first = List.elements[FIRST];
	return first;
}
ArrayListObject ArrayListPerformGetLast(struct ArrayList List)
{
	// return List.objects[LAST(List.place.position)];
}
	// struct PAData last;
	// ArrayListObject last;
	// struct ArrayListPosition place;
	// place = List.place;
	// struct ArrayListPosition x;
	// struct ArrayListPosition n;
	// n.position = List.place.position;
	// x.position = FIRST;
	// while (x.position < n.position)
	// {

	// }
	// last = List.objects[(LAST(place.position))];
	// return last;
ArrayListObject ArrayListPerformPutFirst(struct ArrayList List, ArrayListObject Object)
{
//	struct PADAta
	// int first = List.index[FIRST];
	//pseudicod
	//daca array-ul esye plin aloca un nou array
	//daca load-factor-ul este mare aloca un nou array
	// /'/'
	//daa e gol adauga
	//altfel daca nu  e gol
	//verifica load factor
	//daca load factor e mare -> realloc
	//altrfel 
	//adauga element
	return Object;
}
// ArrayListObject ArrayListPerformPutFirst(struct ArrayList);
ArrayListObject ArrayListPerformPutLast(struct ArrayList List, ArrayListObject Object)
{
	// ArrayListObject
	return Object;
}
// PAResult ArrayListPerformAdapt(struct ArrayList List)
// {
// 	PAResult result = { PARESULT_SUCCESS };
// 	return result;
// }
// PAResult ArrayListPerformMove(struct ArrayList List)
// {
// 	PAResult result = { PARESULT_SUCCESS };
// 	return result;
// 	//start, first position for i is 1
// 	//while not end of line
// 	//move to the right all elements and then realloc array with the new size for the next addFirst, or AddLast
// 	//element[i+1] = element[iu];
// 	//element[i] = element[i-1];
// 	//if i == 1
// 	//element[i-1] = new_element
// 	//This is kinda reverse for add directly
// 	//you add by first moving all elements and the inserting the new element on position 0
// 	//this is elementary programming from highschool
// 	//buit it workds`
// 	//this is not business nor logical 
// 	//this is not math
// 	//this should be done usnng diagrams and helper functions
// 	//#noiu #sa #fim #sanatosi
// }
// ArrayListObject ArrayListPerformPutLast(struct ArrayList List)
// {

// }
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
// struct ArrayList ArrayListPerformConstruct(ArrayListObject Data[], struct ArrayListPosition M)
// {
// 	struct ArrayList list;
// 	return list;
// }
// HRESULT ArrayListPerformInit(struct ArrayList List)
// {
// 	HRESULT result = { HRESULT_SUCCESS };
// 	return result;
// 	// srt
// 	//struct ArrayList list;
// 	//list = ArrayListPerformConstruct(List.objects,List.place);
// //	//List.place = PADataPerformCopy(Data);
// 	//use a design pattern
// 	//return list;
// }
// //	PAResult ArrayListPerformCopy()
// //	{
// //		PAResult result;
// //		return result;
// //	//	struct ArrayList Lost;
//		//struct ArrayList copy;
//		//copy = ArrayListPerformConstruct(List.objects,List.place);
//		//copy = ArrayListPerformInit(List);
//	//	return Lost;
//		//return copy;
//	}
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
	// List.elements=
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
// struct PAData ArrayListPerformGet(struct PAIndex Array[],PAInt Position) {
// 	struct PAData index;
// 	// = Array[Position];
// 	return index;
// }
// PAResult ArrayListPeformInit(PAInt size) {
// //	return )
// 	PAResult rezultat;
// 	return rezultat;
// `}
