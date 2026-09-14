/* ArrayList.h @author cristoforrotsching */
#ifndef INCLUDE_ARRAYLIST_ARRAYLIST_H_
#define INCLUDE_ARRAYLIST_ARRAYLIST_H_	1

#include <defs.h>
#include <types.h>

DllExport struct ArrayList ArrayListPerformConstruct(struct ArrayList, ArrayListValue Data[], ArrayListCount Count);
DllExport struct ArrayList ArrayListPerformInit(struct ArrayList Array, ArrayListValue Data, ArrayListCount Count);
DllExport ArrayListObject ArrayListMoveElementsLeft(struct ArrayList Array);
DllExport ArrayListObject ArrayListMoveElementsRight(struct ArrayList Array);
DllExport ArrayListObject ArrayListPerformGetFirst(struct ArrayList Array);
DllExport ArrayListObject ArrayListPerformGetLast(struct ArrayList Array);
DllExport ArrayListObject ArrayListPerformPutFirst(struct ArrayList Array, ArrayListValue Data);
DllExport ArrayListObject ArrayListPerformPutLast(struct ArrayList Array, ArrayListValue Data);
DllExport ArrayListObject ArrayListRemoveFirst(struct ArrayList Array);
DllExport ArrayListObject ArrayListRemoveLast(struct ArrayList Array);
DllExport struct ArrayList ArrayListPerformCopy(struct ArrayList From, struct ArrayList To);
DllExport ArrayListSize ArrayListPerformSize(struct ArrayList Array);
DllExport HRESULT ArrayListPerformRuin(struct ArrayList PA);
DllExport HRESULT ArrayListPerformDelete(struct ArrayList PA);
// DllExport HRESULT ArrayListPerformPrint(struct ArrayList Array);
#endif
