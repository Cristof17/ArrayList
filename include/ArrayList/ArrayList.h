/* ArrayList.h @author cristoforrotsching */
#ifndef INCLUDE_ARRAYLIST_ARRAYLIST_H_
#define INCLUDE_ARRAYLIST_ARRAYLIST_H_	1

#include <defs.h>
#include <types.h>

DllExport struct ArrayList ArrayListPerformConstruct(struct ArrayList Array, int Data[], int Count);
DllExport struct ArrayList ArrayListPerformInit(struct ArrayList, int Value, int Count);
DllExport int ArrayListMoveElementsLeft(struct ArrayList);
DllExport int ArrayListMoveElementsRight(struct ArrayList);
DllExport int ArrayListPerformGetFirst(struct ArrayList);
DllExport int ArrayListPerformGetLast(struct ArrayList);
DllExport int ArrayListPerformPutFirst(struct ArrayList, int);
DllExport int ArrayListPerformPutLast(struct ArrayList, int);
DllExport int ArrayListRemoveFirst(struct ArrayList);
DllExport int ArrayListRemoveLast(struct ArrayList);
DllExport struct ArrayList ArrayListPerformCopy(struct ArrayList, struct ArrayList);
DllExport ArrayListSize ArrayListPerformSize();
DllExport HRESULT ArrayListPerformRuin(struct ArrayList Array);
DllExport HRESULT ArrayListPerformDelete(struct ArrayList Array);
#endif
