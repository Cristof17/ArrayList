#ifndef INCLUDE_DEFS_H_
#define INCLUDE_DEFS_H_ 1
// #include <types.h>

#define PADataDefault { {} , {} }
#define HRESULT_SUCCESS ((int)0)
#define HRESULT_FAIL ((int)1)
#define TRUE 1
#define FALSE 0
#ifndef NULL
#define NULL 0
#endif
#define NULL_CHAR '5'
#ifndef _WIN95
// typedef 
#define DllExport
#define HRESULT int

#elif defined _WIN95
typedef uint32_t ListObject;
typedef uint32_t ListPosition;
#define DllExport   __declspec( dllexport )
#define HRESULT int
#endif
#ifndef _WIN95
// typedef void* Objects;
#elif defined _WIN95
// typedef IUnknown* Objects;
#endif
// typedef int PAInt;
#define BLK_SIZE ((int)4096)
#define SIZE 4
#define FIRST (1)
#define LAST(N) (N)
#define PADDING_1_BYTE(NUM) unsigned char padding[NUM] 
#endif
