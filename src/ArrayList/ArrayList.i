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
    int count;
    int elements[2];
};
# 3 "./src/ArrayList/ArrayList.c" 2


# 1 "./include/ArrayList/ArrayList.h" 1






          struct ArrayList ArrayListPerformConstruct(struct ArrayList Array, int Data[], int Count);
          struct ArrayList ArrayListPerformInit(struct ArrayList, int Value, int Count);
          int ArrayListMoveElementsLeft(struct ArrayList);
          int ArrayListMoveElementsRight(struct ArrayList);
          int ArrayListPerformGetFirst(struct ArrayList);
          int ArrayListPerformGetLast(struct ArrayList);
          int ArrayListPerformPutFirst(struct ArrayList, int);
          int ArrayListPerformPutLast(struct ArrayList, int);
          struct ArrayList ArrayListPerformCopy(struct ArrayList, struct ArrayList);
          ArrayListSize ArrayListPerformSize();
          int ArrayListPerformRuin(struct ArrayList Array);
          int ArrayListPerformDelete(struct ArrayList Array);
# 6 "./src/ArrayList/ArrayList.c" 2
# 17 "./src/ArrayList/ArrayList.c"
struct ArrayList ArrayListPerformCopy(struct ArrayList List, struct ArrayList Copy)
{
 struct ArrayList list;
 return list;
}
ArrayListObject ArrayListPerformGetFirst(struct ArrayList List)
{
 ArrayListObject first;
 first = List.elements[(1)];
 return first;
}
ArrayListObject ArrayListPerformGetLast(struct ArrayList List)
{
 ArrayListObject last;
 last = List.elements[List.count];
 return last;
}
ArrayListObject ArrayListPerformPutFirst(struct ArrayList List, ArrayListObject Object)
{
 ArrayListObject last;
 last = List.count;
 ArrayListMoveElementsRight(List);
 List.elements[(1)] = Object;

 ArrayListObject first;
 first = List.elements[(1)];
 List.count++;
 return first;
}
ArrayListObject ArrayListRemoveFirst(struct ArrayList List)
{
 ArrayListObject first;
 List.elements[(1)] = 0;
 ArrayListMoveElementsLeft(List);
 List.count--;
 first = List.elements[(1)];
 return first;







}
ArrayListObject ArrayListMoveElementsLeft(struct ArrayList List)
{
 int i = (1);
 while (i <= List.count)
 {
  List.elements[i] = List.elements[i + 1];
  i++;
 }
 return List.elements[(1)];
}
ArrayListObject ArrayListMoveElementsRight(struct ArrayList List)
{
 int i = List.count;
 while (i >= (1))
 {
  List.elements[i + 1] = List.elements[i];
  i--;
 }
 return List.elements[(1)];
}
ArrayListObject ArrayListPerformPutLast(struct ArrayList List, ArrayListObject Object)
{

 return Object;
}
          struct ArrayList ArrayListPerformConstruct(struct ArrayList Array, int Data[], int Count)
{
 int i = (1);
 Array.count = Count;
 while (i <= Count)
 {
  Array.elements[i] = Data[i];
  i++;
 }
 return Array;
}
          struct ArrayList ArrayListPerformInit(struct ArrayList Array, int Value, int Count)
{
 int i = (1);
 Array.count = Count;
 while (i <= Count)
 {
  Array.elements[i] = Value;
  i++;
 }
 return Array;
}
ArrayListObject ArrayListGet(struct ArrayListPosition Position)
{
 ArrayListObject object;
 return object;
}
void ArrayListPut(struct ArrayListPosition Position, ArrayListObject ListObject)
{

}
int ArrayListPerformRuin(struct ArrayList List)
{
 int result;
 int i = (1);
 while (i <= List.count)
 {
  List.elements[i] = 0;
  i++;
 }
 List.count = 0;
 result = ((int)0);
 return result;
}
int ArrayListPerformDelete(struct ArrayList List)
{
 int result;
 int i = (1);
 while (i <= List.count)
 {
  List.elements[i] = 0;
  i++;
 }
 result = ((int)0);
 return result;
}
