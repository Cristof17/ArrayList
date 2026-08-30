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

typedef long ArrayListObject;




typedef long ArrayListPosition;




typedef long ArrayListCount;




typedef long ArrayListValue;





struct ArrayListPosition {
#pragma pack(push, 8)
#pragma pack(pop)
    ArrayListPosition position;
};
struct ArrayList {

    ArrayListPosition place;
    ArrayListCount count;

    ArrayListObject elements[4];
};
# 3 "./src/ArrayList/ArrayList.c" 2


# 1 "./include/ArrayList/ArrayList.h" 1







          struct ArrayList ArrayListPerformConstruct(struct ArrayList Array, ArrayListObject Data[], ArrayListCount Count);
          struct ArrayList ArrayListPerformInit(struct ArrayList, ArrayListValue Value, ArrayListCount Count);
          ArrayListObject ArrayListMoveElementsLeft(struct ArrayList);
          ArrayListObject ArrayListMoveElementsRight(struct ArrayList);
          ArrayListObject ArrayListPerformGetFirst(struct ArrayList);
          ArrayListObject ArrayListPerformGetLast(struct ArrayList);
          ArrayListObject ArrayListPerformPutFirst(struct ArrayList, ArrayListObject);
          ArrayListObject ArrayListPerformPutLast(struct ArrayList, ArrayListObject);
          ArrayListObject ArrayListRemoveFirst(struct ArrayList);
          ArrayListObject ArrayListRemoveLast(struct ArrayList);
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
ArrayListObject ArrayListRemoveLast(struct ArrayList List)
{
 ArrayListObject last;
 List.elements[List.count] = 0;
 List.count--;
 last = List.elements[List.count];
 return last;
}
ArrayListObject ArrayListMoveElementsLeft(struct ArrayList List)
{
 int i = (1);
 int aux;
 while (i <= List.count)
 {
  aux = List.elements[i + 1];
  List.elements[i] = aux;
  i++;
 }
 return List.elements[(1)];
}
ArrayListObject ArrayListMoveElementsRight(struct ArrayList List)
{
 int i = List.count;
 int aux;
 while (i >= (1))
 {
  aux = List.elements[i];
  List.elements[i + 1] = aux;
  i--;
 }
 return List.elements[(1)];
}
ArrayListObject ArrayListPerformPutLast(struct ArrayList List, ArrayListObject Object)
{

 return Object;
}
          struct ArrayList ArrayListPerformConstruct(struct ArrayList Array, ArrayListObject Data[], ArrayListCount Count)
{
 int i = (1);
 int aux;
 Array.count = Count;
 while (i <= Count)
 {
  aux = Data[i-1];
  Array.elements[i] = aux;
  i++;
 }
 return Array;
}
          struct ArrayList ArrayListPerformInit(struct ArrayList Array, ArrayListValue Value, ArrayListCount Count)
{
 ArrayListPosition i = (1);

 int aux = Value;
 int position;

 while (i <= Count)
 {
  position = i-1;
  Array.elements[position] = aux;
  i++;
 }
 return Array;
}
ArrayListObject ArrayListGet(struct ArrayListPosition Position)
{
 ArrayListObject object;
 return object;
}
# 144 "./src/ArrayList/ArrayList.c"
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
