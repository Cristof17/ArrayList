#ifndef INCLUDE_ARRAYLIST_ARRAYLIST_H_
#define INCLUDE_ARRAYLIST_ARRAYLIST_H_	1

// #include "../defs.h"
// #include "../types.h"
#include <defs.h>
#include <types.h>

// struct ArrayList;
//typedef struct ArrayList ArrayList;

// DllExport int ArrayListGet(struct ArrayListPosition);
// DllExport void ArrayListPut(struct ArrayListPosition, int);
// DllExport Result ArrayListPerformCopyTo(struct ArrayList Dest, struct PAList source, struct PAElement);
// struc  ArrayListPerformRuin(struct ArrayList List);
// struct ArrayList ArrayListPerformDelete(struct ArrayList List);
// struct PAData ArrayListGet(struct PAData[],PAInt);
// struct PARecord ArrayListPerformArrange(PAInt);
// struct PARecord ArrayListPutCount(struct ArrayList, struct PACount);
// sjt
// struct A
DllExport struct ArrayList ArrayListPerformConstruct(struct ArrayList Array, int Data[], int Count);
DllExport struct ArrayList ArrayListPerformInit(struct ArrayList, int Value, int Count);
DllExport int ArrayListPerformGetFirst(struct ArrayList);
DllExport int ArrayListPerformGetLast(struct ArrayList);
DllExport int ArrayListPerformPutFirst(struct ArrayList, int);
DllExport int ArrayListPerformPutLast(struct ArrayList, int);
DllExport struct ArrayList ArrayListPerformCopy(struct ArrayList);
DllExport ArrayListSize ArrayListPerformSize();
DllExport HRESULT ArrayListPerformRuin(struct ArrayList Array);
DllExport HRESULT ArrayListPerformDelete(struct ArrayList Array);
// struct PAData
// struct PAData ArrayList
#endif
