
//@Author Cristofor Rotsching
#ifndef INCLUDE_TYPES_H_
#define INCLUDE_TYPES_H_    1

#ifdef _WIN95
typedef int ArrayListSize;
typedef int ArrayListObject;
#else
#endif

typedef int ArrayListSize;
typedef int ArrayListObject;
typedef int ArrayListPosition;

struct ArrayListPosition {
    int position;
};
struct ArrayList {
    // struct Position position;
    struct ArrayListPosition place;
    int objects[SIZE];
};

#endif

