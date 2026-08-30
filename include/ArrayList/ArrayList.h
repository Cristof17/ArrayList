/* ArrayList.h @author cristoforrotsching */
#ifndef INCLUDE_ARRAYLIST_ARRAYLIST_H_
#define INCLUDE_ARRAYLIST_ARRAYLIST_H_	1

#include <defs.h>
#include <types.h>

DllExport struct ArrayList ArrayListPerformConstruct(struct ArrayList Array, ArrayListObject Data[], ArrayListCount Count);
DllExport struct ArrayList ArrayListPerformInit(struct ArrayList, ArrayListValue Value, ArrayListCount Count);
DllExport ArrayListObject ArrayListMoveElementsLeft(struct ArrayList);
DllExport ArrayListObject ArrayListMoveElementsRight(struct ArrayList);
DllExport ArrayListObject ArrayListPerformGetFirst(struct ArrayList);
DllExport ArrayListObject ArrayListPerformGetLast(struct ArrayList);
DllExport ArrayListObject ArrayListPerformPutFirst(struct ArrayList, ArrayListObject);
DllExport ArrayListObject ArrayListPerformPutLast(struct ArrayList, ArrayListObject);
DllExport ArrayListObject ArrayListRemoveFirst(struct ArrayList);
DllExport ArrayListObject ArrayListRemoveLast(struct ArrayList);
DllExport struct ArrayList ArrayListPerformCopy(struct ArrayList, struct ArrayList);
DllExport ArrayListSize ArrayListPerformSize();
DllExport HRESULT ArrayListPerformRuin(struct ArrayList Array);
DllExport HRESULT ArrayListPerformDelete(struct ArrayList Array);
// DllExport HRESULT ArrayListPerformPrint(struct ArrayList Array);
#endif
