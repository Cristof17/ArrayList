
//@Author Cristofor Rotsching
#ifndef INCLUDE_TYPES_H_
#define INCLUDE_TYPES_H_    1

#ifdef _WIN95
typedef int ArrayListSize;
typedef int ArrayListObject;
#else
#endif

typedef int ArrayListSize;
#ifdef _64BIT
typedef long ArrayListObject;
#else
typedef int ArrayListObject;
#endif
#ifdef _64BIT
typedef long ArrayListPosition;
#else
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

struct ArrayListPosition {
    #pragma pack(push, 8)
    #pragma pack(pop)
    ArrayListPosition position;
};
struct ArrayList {
    // struct Position position;
    ArrayListPosition place;
    ArrayListCount count;
    // long count;
    ArrayListObject elements[SIZE];
};

#endif

