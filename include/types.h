
//@Author Cristofor Rotsching
#ifndef INCLUDE_TYPES_H_
#define INCLUDE_TYPES_H_    1

#ifdef _WIN95
typedef int ArrayListSize;
typedef int ArrayListObject;
#else
#endif

#ifdef _64BIT
typedef long ArrayListSize;
#else
typedef int ArrayListSize;
#endif 
// typedef int ArrayListSize;
#ifdef _64BIT
typedef long ArrayListObject;
#else
typedef int ArrayListObject;
#endif
#ifdef _64BIT
typedef long ArrayListPosition;
typedef long ArrayListOffset;
#else
typedef long ArrayListOffset;
typedef int ArrayListPosition;
#endif
#ifdef _64BIT
typedef long ArrayListCount;
#else
typedef int ArrayListCount;
#endif
#ifdef _64BIT
typedef long ArrayListValue;
#else
typedef int ArrayListValue;
#endif
//#
// #pragma pack(push, 8)
// #pragma pack(push, 8)

#pragma pack(show)
struct ArrayListPosition {
    ArrayListPosition position;
};
#pragma pack(show)
struct ArrayList {
    // struct Position position;
    ArrayListObject elements[SIZE];
    ArrayListPosition place;
    // #pragma pack(8)
    ArrayListCount count;
    // #pragma pack(8)
    // long count;
};

#endif

