/* ArrayList.h @author cristoforrotsching */
#ifndef INCLUDE_ARRAYLIST_ARRAYLIST_H_
#define INCLUDE_ARRAYLIST_ARRAYLIST_H_	1

#include <defs.h>
#include <types.h>

DllExport struct ArrayList ArrayListPerformConstruct(struct ArrayList Array, ArrayListValue Data[], ArrayListCount Count);
DllExport struct ArrayList ArrayListPerformInit(struct ArrayList Array, ArrayListValue Data, ArrayListCount Count);
DllExport ArrayListValue ArrayListMoveElementsLeft(struct ArrayList Array);
DllExport ArrayListValue ArrayListMoveElementsRight(struct ArrayList Array);
DllExport ArrayListValue ArrayListPerformGetFirst(struct ArrayList Array);
DllExport ArrayListValue ArrayListPerformGetLast(struct ArrayList Array);
DllExport ArrayListValue ArrayListPerformPutFirst(struct ArrayList Array, ArrayListValue Data);
DllExport ArrayListValue ArrayListPerformPutLast(struct ArrayList Array, ArrayListValue Data);
DllExport ArrayListValue ArrayListRemoveFirst(struct ArrayList Array);
DllExport ArrayListValue ArrayListRemoveLast(struct ArrayList Array);
DllExport struct ArrayList ArrayListPerformCopy(struct ArrayList From, struct ArrayList To);
DllExport ArrayListSize ArrayListPerformSize(struct ArrayList Array);
DllExport HRESULT ArrayListPerformRuin(struct ArrayList PA);
DllExport HRESULT ArrayListPerformDelete(struct ArrayList PA);
// DllExport HRESULT ArrayListPerformPrint(struct ArrayList Array);
#endif
