# 1 "./src/ArrayList/ArrayList.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 466 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./src/ArrayList/ArrayList.c" 2
# 1 "./include/defs.h" 1
# 2 "./src/ArrayList/ArrayList.c" 2
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
# 3 "./src/ArrayList/ArrayList.c" 2


# 1 "./include/ArrayList/ArrayList.h" 1
# 22 "./include/ArrayList/ArrayList.h"
          struct ArrayList ArrayListPerformConstruct(int Data[], struct ArrayListPosition);
          int ArrayListPerformInit(struct ArrayList);
          int ArrayListPerformGetFirst(struct ArrayList);
          int ArrayListPerformGetLast(struct ArrayList);
          int ArrayListPerformPutFirst(struct ArrayList, int);
          int ArrayListPerformPutLast(struct ArrayList, int);
          struct ArrayList ArrayListPerformCopy(struct ArrayList);
          ArrayListSize ArrayListPerformSize();
          int ArrayListPerformRuin(struct ArrayListPosition, int[]);
          int ArrayListPerformDelete(struct ArrayList);
# 6 "./src/ArrayList/ArrayList.c" 2
# 17 "./src/ArrayList/ArrayList.c"
struct ArrayList ArrayListPerformCopy(struct ArrayList List)
{
# 29 "./src/ArrayList/ArrayList.c"
 struct ArrayList list;
 return list;
}
# 87 "./src/ArrayList/ArrayList.c"
ArrayListObject ArrayListPerformGetFirst(struct ArrayList List)
{
 ArrayListObject first;
 first = List.objects[(1)];
 return first;
}
ArrayListObject ArrayListPerformGetLast(struct ArrayList List)
{
 return List.objects[(List.place.position)];
}
# 111 "./src/ArrayList/ArrayList.c"
ArrayListObject ArrayListPerformPutFirst(struct ArrayList List, ArrayListObject Object)
{
# 125 "./src/ArrayList/ArrayList.c"
 return Object;
}

ArrayListObject ArrayListPerformPutLast(struct ArrayList List, ArrayListObject Object)
{

 return Object;
}
# 162 "./src/ArrayList/ArrayList.c"
struct ArrayList ArrayListPerformConstruct(ArrayListObject Data[], struct ArrayListPosition M)
{
 struct ArrayList list;
 return list;
}
int ArrayListPerformInit(struct ArrayList List)
{
 int result = { ((int)0) };
 return result;






}
# 189 "./src/ArrayList/ArrayList.c"
ArrayListObject ArrayListGet(struct ArrayListPosition Position)
{
 ArrayListObject object;
 return object;
}
void ArrayListPut(struct ArrayListPosition Position, ArrayListObject ListObject)
{

}
int ArrayListPerformRuin(struct ArrayListPosition place, ArrayListObject objects[])
{
 int result = { ((int)0) } ;
 return result;
}
int ArrayListPerformDelete(struct ArrayList List)
{
 int result = { ((int)0) };
 return result;
}
