
//@Author Cristofor Rotsching
#ifndef INCLUDE_TYPES_H_
#define INCLUDE_TYPES_H_    1

#include <defs.h>
#ifdef _WIN95
//#define short HALF_PTR;
typedef PAInt int32_t;
typedef int PAInt;
typedef int PANumber;
typedef PABool BOOL;
typedef int PAResult;
typedef int ArrayListSize;
typedef int ArrayListObject;
#else
// typedef int PANumber;
struct PANumber;
typedef int PAInt;
//#define PAInt int
// typedef int PAResource;
typedef int PABool;
typedef int PAResult;
typedef int ArrayListSize;
// typedef int ArrayListObject;
// typedef int ArrayListPosition;
#endif
// struct Client;
//struct Client;
// struct Builder;
// struct Director;
// struct Target;
// struct NormalTree;
// struct Target;
struct Adapter;
struct PADestination;
struct PAArrow;
// struct ConcreteAggregate;
// struct Client ;
// struct PAInput;
// struct BFSAlgorithm;
struct PAData;
//struct BFSRecord;
struct NormalTree;
struct Adaptee;
// struct BFSAlgorithm;
// struct BFSOutput;
// struct PAResult;
// struct ArrayList;
struct PAResource;
struct PACount;
struct PANormalTree;
struct PATransposeTree;
// struct BFSRecord;
// struct PACount;
// struct PAElement;
// struct PACount;
// typedef struct PAData PAData;
// struct PASize;
struct PAInput;
struct PAOutput;
// struct PAResource;
struct PAData;
struct PAValue;
struct List;
struct PAList;
struct PAStatus;
// struct PAFeature;
// struct PAValue;
// struct PADestination;
// struct PAStatus/*.*/;
// struct PAPair;struct PAPair;
struct PAElement;
struct PADestination;
struct PAPair;
struct PAArrow;
struct BFSInput;
struct BFSRecord;
struct BFSOutput;
struct PASeries;
struct PATree;
struct PALink;
// struct ConcreteIterator;
// struct Iterator;
// struct PAList;
// struct PAFeature;
// struct PASeries;
// struct PAData;
// struct PALink;
// struct PATree;
// struct PAResource;
// struct Aggregate;
struct AdapterTarget;
struct AdapterClient;
struct Adapter;
// struct Adaptee;
// struct PAResult;
struct Adaptee;
// struct Adaptee;
struct Adapter;
struct IteratorClient;
struct Target;
struct Builder;
struct Director;
struct NormalTree;
struct Product ;
struct TransposeTree;
struct IteratorAggregate;
struct IteratorConcreteAggregate;
struct IteratorConcreteIterator;
struct IteratorIterator ;
struct BuilderClient ;
struct BFSProcedure;
struct Input;
struct Algorithm;
struct Output;
struct FlyweightClient;
struct FlyweightFlyweightFactory;
struct FlyweightConcreteFlyweight;
struct FlyweightUnsharedConcreteFlyweight;
struct FlyweightFlyweight;
struct BridgeAbstraction;
struct BridgeClient;
struct BridgeConcreteImplementorA;
struct BridgeConcreteImplementorB;
struct BridgeImplementor;
struct PrototypePrototype;
struct PrototypeClient;
struct PANumber {
    //  val;
    // long long val;
    unsigned char val;
    // PADDING_1_BYTE(0);
};
struct PrototypeConcretePrototype1;
struct PrototypeConcretePrototype2;
struct Facade;
    // struct PASeries adj;
// };
    // struct PrototypePrototype prototype;
// };
    // struct PASeries adj;
// };
    // struct PASeries adj_trans;
// };

// struct Input {
//  struct Algorithm algorithm;
// };
struct Output {

};
struct Input {
    ;
};
    // struct Algorithm {
            // struct Input input;
        // };
struct ArrayListPosition {
    int position;
};
struct ArrayList {
    // struct Position position;
    struct ArrayListPosition place;
    int objects[SIZE];
};
struct PAResource {
    // struct
    // PA_INt
    // PAInt value;
    struct PANumber value;
    // PADDING_1_BYTE(0);
};
struct PAStatus {
    struct PAResource visited;
};
struct PAData {
    struct PAResource Resource;
    // PADDING_1_BYTE(0);
};
struct PAElement { 
    //  struct PAData data;
    struct PAData index;
    // struct PADestination Next;
    struct PAStatus status;
    // struct PAFeature type;
    // PADDING_1_BYTE(0);
};
struct PAFeature {
    PAInt kind;
};
struct PACount {
    // PADDING_1_BYTE(0);
    struct PANumber number;
};
// };

struct PASeries {
    struct PACount m;
    // struct PANumber adj[0];
    struct PAElement adj[SIZE];
};
struct PAList {
    struct PACount n;
    struct PASeries neigh[SIZE];
    // struct PANod Nod;
};
struct FlyweightFlyweightClient {
    // struct PASeries series;
    //PAInt todo;
    struct PASeries series;
};
struct FlyweightFlyweight {
    struct PAElement allState;
    //PAInt todo;
};
struct FlyweightFlyweightFactory {
    struct FlyweightFlyweight flyweight;
//  PAInt todo;
};
struct FlyweightConcreteFlyweight {
    struct PAList list;
    //PAInt todo;
};
struct FlyweightUnsharedConcreteFlyweight {
    struct PASeries intrinsicState;
    //PAInt todo;
};
struct PATree  {
    struct PACount n;
    struct PACount m;
    struct PAElement source;
    struct PAList adj;
};
struct BridgeAbstraction {
    struct PAElement elements[SIZE];
};
struct BridgeClient{
    struct PATree tree;
};
struct BridgeConcreteImplementorA {
    struct ArrayList list;
};
struct BridgeConcreteImplementorB {
};
//struct ArrayListObject {
//  ListObject object;
//};
// struct Position {
//  PositionInt position;
// };
// struct BFSPorce

struct PAInput {
    struct PACount n;
    struct PACount m;
    struct PAElement source;
};
struct BFSRecord {
struct PACount n;
    struct PAList d;
};
struct PAOutput {
    struct BFSRecord result;
};
// struct PAData {
// //    int Value;
//  INT Value;
// };
struct PAValue {
    PAInt value;
};
struct PADestination {
    struct PAElement element;
};
struct PAPair {
    struct
    PAElement Node;
    struct PAElement Neigh;
    PADDING_1_BYTE(2);
};
struct PAArrow {
    struct PAPair p;
};
struct BFSInput {
    struct PACount n;
    struct PACount m;
    struct PAElement source;
};
struct BFSOutput {
    struct BFSRecord result;
};
// struct Output {
    // //   struct PARezultat rezultat;
    // //   struct BFSOutput outputBFS;
    // };
    //struct PASeries
    //{
        //
        //};
struct PALink {
    struct PAPair p;
    // PADDING_1_BYTE(0);
};
// struct PAResult {
    //  PA_INT code;
    // };
struct PANormalTree {
    struct PATree tree;
    //struct PAList adj;
};
struct PATransposeTree {
    struct PATree tree;
    //struct PAList adj_trans;
};
struct FactoryProduct1 {
    struct PANormalTree tree;
};
struct FactoryProduct2 {
    struct PATransposeTree trans;
};

struct FactoryConcreteProduct 
{
    struct PANormalTree tree;
};
struct FactoryConcreteCreator {
    //NotmalTree
    struct PANormalTree tree;
};
struct FactoryConcreteCreator2 {
    //TransposeTree
    struct PATransposeTree tree;
};
struct FactoryCreator
{
    struct PANormalTree normalTree;
    struct PATransposeTree transposeTree;
};
struct FlyWeight {
    PAInt todo;
};
struct Adaptee {
    struct ArrayList list;
};
struct Adapter {
    struct Adaptee adaptee;
  //struct PAList list;
};
struct IteratorClient {
    struct PATree tree;
};
struct AdapterTarget {
    struct PAList list;
    //struct Adapter adapter;
};
struct AdapterClient {
    struct AdapterTarget target;
};
struct BuilderProduct {
    struct PATree tree;
};
struct Builder {
    // struct NormalTree NormalTree;
    // struct TransposeTree
    struct BuilderProduct Product;
};
struct Director {
    struct Builder builder;
};
struct IteratorIterator  {
    struct PAList series;
};
struct IteratorAggregate {
    struct IteratorIterator iterator;
};
struct ConcreteBuilder {
    struct Builder builder;
};
struct IteratorConcreteIterator  {
    PAInt position;
};
struct IteratorConcreteAggregate {
    struct IteratorConcreteIterator iterator;
};
// struct BuilderProduct{
// };
struct PrototypePrototype {
    struct PASeries adj;
};
struct PrototypeClient {
    struct PrototypePrototype prototype;
};
struct PrototypeConcretePrototype1 {
    struct PASeries adj;
};
struct PrototypeConcretePrototype2 {
    struct PASeries adj_trans;
};
struct BFSProcedure {
    // struct PATree tree;
    struct BFSInput input;
    struct PAList adj;
    // struct 
    
};
struct Facade {
    struct PASeries series;
    struct PACount size;
    struct PAList list;
    struct PAElement element;
    struct PALink link;
    struct PAData data;
    struct FactoryCreator factory;
};
#endif

