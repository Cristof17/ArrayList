#ifndef INCLUDE_ARRAYLIST_ARRAYLIST_H_
#define INCLUDE_ARRAYLIST_ARRAYLIST_H_	1

// #include "../defs.h"
// #include "../types.h"
#include <defs.h>
#include <types.h>

// struct ArrayList;
//typedef struct ArrayList ArrayList;

DllExport int ArrayListGet(struct ArrayListPosition);
DllExport ArrayListSize ArrayListPerformSize();
DllExport void ArrayListPut(struct ArrayListPosition, int);
DllExport struct ArrayList ArrayListPerformConstruct(int Data[], struct ArrayListPosition);
DllExport PAResult ArrayListPerformInit(struct ArrayList);
DllExport struct ArrayList ArrayListPerformCopy(struct ArrayList);
DllExport PAResult ArrayListPerformCopyTo(struct ArrayList Dest, struct PAList source, struct PAElement);
// struc  ArrayListPerformRuin(struct ArrayList List);
DllExport HRESULT ArrayListPerformRuin(struct ArrayListPosition, int[]);
DllExport HRESULT ArrayListPerformDelete(struct ArrayList);
// struct ArrayList ArrayListPerformDelete(struct ArrayList List);
// struct PAData ArrayListGet(struct PAData[],PAInt);
// struct PARecord ArrayListPerformArrange(PAInt);
// struct PARecord ArrayListPutCount(struct ArrayList, struct PACount);
// sjt
// struct A
DllExport int ArrayListPerformGetFirst(struct ArrayList);
DllExport int ArrayListPerformGetLast(struct ArrayList);
DllExport int ArrayListPerformPutFirst(struct ArrayList, int);
DllExport int ArrayListPerformPutLast(struct ArrayList, int);
// struct PAData
// struct PAData ArrayList
#endif
