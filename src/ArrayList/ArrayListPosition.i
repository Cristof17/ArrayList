# 1 "src/ArrayList/ArrayListPosition.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 466 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "src/ArrayList/ArrayListPosition.c" 2
# 10 "src/ArrayList/ArrayListPosition.c"
# 1 "./include/ArrayList/ArrayListPosition.h" 1
# 11 "./include/ArrayList/ArrayListPosition.h"
# 1 "./include/defs.h" 1
# 12 "./include/ArrayList/ArrayListPosition.h" 2
# 1 "./include/types.h" 1
# 12 "./include/types.h"
typedef int ArrayListSize;
typedef int ArrayListObject;
typedef int ArrayListPosition;

struct ArrayListPosition {
    int position;
};
struct ArrayList {

    struct ArrayListPosition place;
    int objects[2];
};
# 13 "./include/ArrayList/ArrayListPosition.h" 2


          struct ArrayListPosition ArrayListPositionPerformConstruct(struct ArrayListPosition);
          struct ArrayListPosition ArrayListPositionPerformInit(struct ArrayListPosition);
          struct ArrayListPosition ArrayListPositionPerformCopy(struct ArrayListPosition);
          int ArrayListPositionPerformDelete(struct ArrayListPosition);
          int ArrayListPositionPerformRuin(struct ArrayListPosition);
# 11 "src/ArrayList/ArrayListPosition.c" 2






struct ArrayListPosition ArrayListPositionPerformConstruct(struct ArrayListPosition place)
{
 struct ArrayListPosition position = { (1) };
 return position;
}
struct ArrayListPosition ArrayListPositionPerformInit(struct ArrayListPosition ListPosition)
{
    struct ArrayListPosition position;
 position = ArrayListPositionPerformConstruct(ListPosition);

 return position;
}
struct ArrayListPosition ArrayListPositionPerformCopy(struct ArrayListPosition ListPosition)
{
 struct ArrayListPosition copy;
 copy = ArrayListPositionPerformConstruct(ListPosition);

 copy = ArrayListPositionPerformInit(ListPosition);
 return copy;
}
int ArrayListPositionPerformDelete(struct ArrayListPosition Position)
{
 int result = { ((int)0) };
 return result;
}
int ArrayListPositionPerformRuin(struct ArrayListPosition Position)
{
 int result = { ((int)0) };
 return result;
}
