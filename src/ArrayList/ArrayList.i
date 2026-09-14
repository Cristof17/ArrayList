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
# 13 "./include/types.h"
typedef long ArrayListSize;





typedef long ArrayListObject;




typedef long ArrayListPosition;
typedef long ArrayListOffset;





typedef long ArrayListCount;




typedef long ArrayListValue;







#pragma pack(show)
struct ArrayListPosition {
    ArrayListPosition position;
};
#pragma pack(show)
struct ArrayList {

    ArrayListObject elements[4];
    ArrayListPosition place;

    ArrayListCount count;


};
# 3 "./src/ArrayList/ArrayList.c" 2


# 1 "./include/ArrayList/ArrayList.h" 1







          struct ArrayList ArrayListPerformConstruct(struct ArrayList Array, ArrayListValue Data[], ArrayListCount Count);
          struct ArrayList ArrayListPerformInit(struct ArrayList Array, ArrayListValue Data, ArrayListCount Count);
          ArrayListValue ArrayListMoveComponentsLeft(struct ArrayList Array);
          ArrayListValue ArrayListMoveComponentsRight(struct ArrayList Array);
          ArrayListValue ArrayListPerformGetFirst(struct ArrayList Array);
          ArrayListValue ArrayListPerformGetLast(struct ArrayList Array);
          ArrayListValue ArrayListPerformPutFirst(struct ArrayList Array, ArrayListValue Data);
          ArrayListValue ArrayListPerformPutLast(struct ArrayList Array, ArrayListValue Data);
          ArrayListValue ArrayListRemoveFirst(struct ArrayList Array);
          ArrayListValue ArrayListRemoveLast(struct ArrayList Array);
          struct ArrayList ArrayListPerformCopy(struct ArrayList From, struct ArrayList To);
          ArrayListSize ArrayListPerformSize(struct ArrayList Array);
          int ArrayListPerformRuin(struct ArrayList PA);
          int ArrayListPerformDelete(struct ArrayList PA);
# 6 "./src/ArrayList/ArrayList.c" 2
# 17 "./src/ArrayList/ArrayList.c"
          struct ArrayList ArrayListPerformCopy(struct ArrayList From, struct ArrayList To)
{
 struct ArrayList list;
 return list;
}
          ArrayListValue ArrayListPerformGetFirst(struct ArrayList Array)
{
 ArrayListValue first;
 first = Array.elements[(1)];
 return first;
}
          ArrayListValue ArrayListPerformGetLast(struct ArrayList Array)
{
 ArrayListValue last;
 last = Array.elements[Array.count];
 return last;
}
          ArrayListValue ArrayListPerformPutFirst(struct ArrayList Array, ArrayListValue Data)
{
 ArrayListValue last;
 last = Array.count;
 ArrayListMoveComponentsRight(Array);
 Array.elements[(1)] = Data;

 ArrayListValue first;
 first = Array.elements[(1)];
 Array.count++;
 return first;
}
          ArrayListValue ArrayListRemoveFirst(struct ArrayList Array)
{
 ArrayListValue first;
 Array.elements[(1)] = 0;
 ArrayListMoveComponentsLeft(Array);
 Array.count--;
 first = Array.elements[(1)];
 return first;







}
          ArrayListValue ArrayListRemoveLast(struct ArrayList Array)
{
 ArrayListValue last;
 Array.elements[Array.count] = 0;
 Array.count--;
 last = Array.elements[Array.count];
 return last;
}
          ArrayListValue ArrayListMoveComponentsLeft(struct ArrayList Array)
{
 ArrayListPosition i = (1);
 ArrayListValue aux;
 while (i <= Array.count)
 {
  aux = Array.elements[i + 1];
  Array.elements[i] = aux;
  i++;
 }
 return Array.elements[(1)];
}
          ArrayListValue ArrayListMoveComponentsRight(struct ArrayList Array)
{
 ArrayListPosition i = Array.count;
 ArrayListValue aux;
 while (i >= (1))
 {
  aux = Array.elements[i];
  Array.elements[i + 1] = aux;
  i--;
 }
 return Array.elements[(1)];
}
          ArrayListValue ArrayListPerformPutLast(struct ArrayList Array, ArrayListValue Data)
{

 return Data;
}
          struct ArrayList ArrayListPerformConstruct(struct ArrayList Array, ArrayListValue Data[], ArrayListCount Count)
{
 ArrayListPosition i = (1);
 ArrayListValue aux;
 Array.count = Count;
 while (i <= Count)
 {
  aux = Data[i-1];
  Array.elements[i] = aux;
  i++;
 }
 return Array;
}
          struct ArrayList ArrayListPerformInit(struct ArrayList Array, ArrayListValue Data, ArrayListCount Count)
{
 ArrayListPosition i;
 ArrayListPosition j;
 ArrayListValue aux;



 i = (1);






 aux = Data;


 while (i <= Count)
 {
  Array.elements[i] = aux;






  j = i + 1;
  i = j;



 }
 return Array;
}
ArrayListObject ArrayListGet(struct ArrayListPosition Position)
{
 ArrayListObject object;
 return object;
}
# 164 "./src/ArrayList/ArrayList.c"
void ArrayListPut(struct ArrayListPosition Position, ArrayListObject ListObject)
{

}
          int ArrayListPerformRuin(struct ArrayList PA)
{
 int result;
 ArrayListPosition i = (1);
 while (i <= PA.count)
 {
  PA.elements[i] = 0;
  i++;
 }
 PA.count = 0;
 result = ((int)0);
 return result;
}
          int ArrayListPerformDelete(struct ArrayList PA)
{
 int result;
 ArrayListPosition i = (1);
 while (i <= PA.count)
 {
  PA.elements[i] = 0;
  i++;
 }
 result = ((int)0);
 return result;
}
