//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:gson-2.6.2-sources.jar!com/google/gson/internal/bind/JsonTreeReader.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/google/gson/JsonArray.h"
#include "com/google/gson/JsonElement.h"
#include "com/google/gson/JsonNull.h"
#include "com/google/gson/JsonObject.h"
#include "com/google/gson/JsonPrimitive.h"
#include "com/google/gson/internal/bind/JsonTreeReader.h"
#include "com/google/gson/stream/JsonReader.h"
#include "com/google/gson/stream/JsonToken.h"
#include "java/io/Reader.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/NumberFormatException.h"
#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

@interface ComGoogleGsonInternalBindJsonTreeReader () {
 @public
  id<JavaUtilList> stack_JsonTreeReader_;
}

- (id)peekStack;

- (id)popStack;

- (void)expectWithComGoogleGsonStreamJsonToken:(ComGoogleGsonStreamJsonToken *)expected;

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindJsonTreeReader, stack_JsonTreeReader_, id<JavaUtilList>)

inline JavaIoReader *ComGoogleGsonInternalBindJsonTreeReader_get_UNREADABLE_READER(void);
static JavaIoReader *ComGoogleGsonInternalBindJsonTreeReader_UNREADABLE_READER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleGsonInternalBindJsonTreeReader, UNREADABLE_READER, JavaIoReader *)

inline id ComGoogleGsonInternalBindJsonTreeReader_get_SENTINEL_CLOSED(void);
static id ComGoogleGsonInternalBindJsonTreeReader_SENTINEL_CLOSED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleGsonInternalBindJsonTreeReader, SENTINEL_CLOSED, id)

__attribute__((unused)) static id ComGoogleGsonInternalBindJsonTreeReader_peekStack(ComGoogleGsonInternalBindJsonTreeReader *self);

__attribute__((unused)) static id ComGoogleGsonInternalBindJsonTreeReader_popStack(ComGoogleGsonInternalBindJsonTreeReader *self);

__attribute__((unused)) static void ComGoogleGsonInternalBindJsonTreeReader_expectWithComGoogleGsonStreamJsonToken_(ComGoogleGsonInternalBindJsonTreeReader *self, ComGoogleGsonStreamJsonToken *expected);

@interface ComGoogleGsonInternalBindJsonTreeReader_1 : JavaIoReader

- (instancetype)init;

- (jint)readWithCharArray:(IOSCharArray *)buffer
                  withInt:(jint)offset
                  withInt:(jint)count;

- (void)close;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonInternalBindJsonTreeReader_1)

__attribute__((unused)) static void ComGoogleGsonInternalBindJsonTreeReader_1_init(ComGoogleGsonInternalBindJsonTreeReader_1 *self);

__attribute__((unused)) static ComGoogleGsonInternalBindJsonTreeReader_1 *new_ComGoogleGsonInternalBindJsonTreeReader_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleGsonInternalBindJsonTreeReader_1 *create_ComGoogleGsonInternalBindJsonTreeReader_1_init(void);

J2OBJC_INITIALIZED_DEFN(ComGoogleGsonInternalBindJsonTreeReader)

@implementation ComGoogleGsonInternalBindJsonTreeReader

- (instancetype)initWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)element {
  ComGoogleGsonInternalBindJsonTreeReader_initWithComGoogleGsonJsonElement_(self, element);
  return self;
}

- (void)beginArray {
  ComGoogleGsonInternalBindJsonTreeReader_expectWithComGoogleGsonStreamJsonToken_(self, JreLoadEnum(ComGoogleGsonStreamJsonToken, BEGIN_ARRAY));
  ComGoogleGsonJsonArray *array = (ComGoogleGsonJsonArray *) cast_chk(ComGoogleGsonInternalBindJsonTreeReader_peekStack(self), [ComGoogleGsonJsonArray class]);
  [((id<JavaUtilList>) nil_chk(stack_JsonTreeReader_)) addWithId:[((ComGoogleGsonJsonArray *) nil_chk(array)) iterator]];
}

- (void)endArray {
  ComGoogleGsonInternalBindJsonTreeReader_expectWithComGoogleGsonStreamJsonToken_(self, JreLoadEnum(ComGoogleGsonStreamJsonToken, END_ARRAY));
  ComGoogleGsonInternalBindJsonTreeReader_popStack(self);
  ComGoogleGsonInternalBindJsonTreeReader_popStack(self);
}

- (void)beginObject {
  ComGoogleGsonInternalBindJsonTreeReader_expectWithComGoogleGsonStreamJsonToken_(self, JreLoadEnum(ComGoogleGsonStreamJsonToken, BEGIN_OBJECT));
  ComGoogleGsonJsonObject *object = (ComGoogleGsonJsonObject *) cast_chk(ComGoogleGsonInternalBindJsonTreeReader_peekStack(self), [ComGoogleGsonJsonObject class]);
  [((id<JavaUtilList>) nil_chk(stack_JsonTreeReader_)) addWithId:[((id<JavaUtilSet>) nil_chk([((ComGoogleGsonJsonObject *) nil_chk(object)) entrySet])) iterator]];
}

- (void)endObject {
  ComGoogleGsonInternalBindJsonTreeReader_expectWithComGoogleGsonStreamJsonToken_(self, JreLoadEnum(ComGoogleGsonStreamJsonToken, END_OBJECT));
  ComGoogleGsonInternalBindJsonTreeReader_popStack(self);
  ComGoogleGsonInternalBindJsonTreeReader_popStack(self);
}

- (jboolean)hasNext {
  ComGoogleGsonStreamJsonToken *token = [self peek];
  return token != JreLoadEnum(ComGoogleGsonStreamJsonToken, END_OBJECT) && token != JreLoadEnum(ComGoogleGsonStreamJsonToken, END_ARRAY);
}

- (ComGoogleGsonStreamJsonToken *)peek {
  if ([((id<JavaUtilList>) nil_chk(stack_JsonTreeReader_)) isEmpty]) {
    return JreLoadEnum(ComGoogleGsonStreamJsonToken, END_DOCUMENT);
  }
  id o = ComGoogleGsonInternalBindJsonTreeReader_peekStack(self);
  if ([JavaUtilIterator_class_() isInstance:o]) {
    jboolean isObject = [[stack_JsonTreeReader_ getWithInt:[stack_JsonTreeReader_ size] - 2] isKindOfClass:[ComGoogleGsonJsonObject class]];
    id<JavaUtilIterator> iterator = (id<JavaUtilIterator>) cast_check(o, JavaUtilIterator_class_());
    if ([((id<JavaUtilIterator>) nil_chk(iterator)) hasNext]) {
      if (isObject) {
        return JreLoadEnum(ComGoogleGsonStreamJsonToken, NAME);
      }
      else {
        [stack_JsonTreeReader_ addWithId:[iterator next]];
        return [self peek];
      }
    }
    else {
      return isObject ? JreLoadEnum(ComGoogleGsonStreamJsonToken, END_OBJECT) : JreLoadEnum(ComGoogleGsonStreamJsonToken, END_ARRAY);
    }
  }
  else if ([o isKindOfClass:[ComGoogleGsonJsonObject class]]) {
    return JreLoadEnum(ComGoogleGsonStreamJsonToken, BEGIN_OBJECT);
  }
  else if ([o isKindOfClass:[ComGoogleGsonJsonArray class]]) {
    return JreLoadEnum(ComGoogleGsonStreamJsonToken, BEGIN_ARRAY);
  }
  else if ([o isKindOfClass:[ComGoogleGsonJsonPrimitive class]]) {
    ComGoogleGsonJsonPrimitive *primitive = (ComGoogleGsonJsonPrimitive *) cast_chk(o, [ComGoogleGsonJsonPrimitive class]);
    if ([((ComGoogleGsonJsonPrimitive *) nil_chk(primitive)) isString]) {
      return JreLoadEnum(ComGoogleGsonStreamJsonToken, STRING);
    }
    else if ([primitive isBoolean]) {
      return JreLoadEnum(ComGoogleGsonStreamJsonToken, BOOLEAN);
    }
    else if ([primitive isNumber]) {
      return JreLoadEnum(ComGoogleGsonStreamJsonToken, NUMBER);
    }
    else {
      @throw create_JavaLangAssertionError_init();
    }
  }
  else if ([o isKindOfClass:[ComGoogleGsonJsonNull class]]) {
    return JreLoadEnum(ComGoogleGsonStreamJsonToken, NULL);
  }
  else if (o == ComGoogleGsonInternalBindJsonTreeReader_SENTINEL_CLOSED) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"JsonReader is closed");
  }
  else {
    @throw create_JavaLangAssertionError_init();
  }
}

- (id)peekStack {
  return ComGoogleGsonInternalBindJsonTreeReader_peekStack(self);
}

- (id)popStack {
  return ComGoogleGsonInternalBindJsonTreeReader_popStack(self);
}

- (void)expectWithComGoogleGsonStreamJsonToken:(ComGoogleGsonStreamJsonToken *)expected {
  ComGoogleGsonInternalBindJsonTreeReader_expectWithComGoogleGsonStreamJsonToken_(self, expected);
}

- (NSString *)nextName {
  ComGoogleGsonInternalBindJsonTreeReader_expectWithComGoogleGsonStreamJsonToken_(self, JreLoadEnum(ComGoogleGsonStreamJsonToken, NAME));
  id<JavaUtilIterator> i = (id<JavaUtilIterator>) cast_check(ComGoogleGsonInternalBindJsonTreeReader_peekStack(self), JavaUtilIterator_class_());
  id<JavaUtilMap_Entry> entry_ = (id<JavaUtilMap_Entry>) cast_check([((id<JavaUtilIterator>) nil_chk(i)) next], JavaUtilMap_Entry_class_());
  [((id<JavaUtilList>) nil_chk(stack_JsonTreeReader_)) addWithId:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getValue]];
  return (NSString *) cast_chk([entry_ getKey], [NSString class]);
}

- (NSString *)nextString {
  ComGoogleGsonStreamJsonToken *token = [self peek];
  if (token != JreLoadEnum(ComGoogleGsonStreamJsonToken, STRING) && token != JreLoadEnum(ComGoogleGsonStreamJsonToken, NUMBER)) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$@$@", @"Expected ", JreLoadEnum(ComGoogleGsonStreamJsonToken, STRING), @" but was ", token));
  }
  return [((ComGoogleGsonJsonPrimitive *) nil_chk(((ComGoogleGsonJsonPrimitive *) cast_chk(ComGoogleGsonInternalBindJsonTreeReader_popStack(self), [ComGoogleGsonJsonPrimitive class])))) getAsString];
}

- (jboolean)nextBoolean {
  ComGoogleGsonInternalBindJsonTreeReader_expectWithComGoogleGsonStreamJsonToken_(self, JreLoadEnum(ComGoogleGsonStreamJsonToken, BOOLEAN));
  return [((ComGoogleGsonJsonPrimitive *) nil_chk(((ComGoogleGsonJsonPrimitive *) cast_chk(ComGoogleGsonInternalBindJsonTreeReader_popStack(self), [ComGoogleGsonJsonPrimitive class])))) getAsBoolean];
}

- (void)nextNull {
  ComGoogleGsonInternalBindJsonTreeReader_expectWithComGoogleGsonStreamJsonToken_(self, JreLoadEnum(ComGoogleGsonStreamJsonToken, NULL));
  ComGoogleGsonInternalBindJsonTreeReader_popStack(self);
}

- (jdouble)nextDouble {
  ComGoogleGsonStreamJsonToken *token = [self peek];
  if (token != JreLoadEnum(ComGoogleGsonStreamJsonToken, NUMBER) && token != JreLoadEnum(ComGoogleGsonStreamJsonToken, STRING)) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$@$@", @"Expected ", JreLoadEnum(ComGoogleGsonStreamJsonToken, NUMBER), @" but was ", token));
  }
  jdouble result = [((ComGoogleGsonJsonPrimitive *) nil_chk(((ComGoogleGsonJsonPrimitive *) cast_chk(ComGoogleGsonInternalBindJsonTreeReader_peekStack(self), [ComGoogleGsonJsonPrimitive class])))) getAsDouble];
  if (![self isLenient] && (JavaLangDouble_isNaNWithDouble_(result) || JavaLangDouble_isInfiniteWithDouble_(result))) {
    @throw create_JavaLangNumberFormatException_initWithNSString_(JreStrcat("$D", @"JSON forbids NaN and infinities: ", result));
  }
  ComGoogleGsonInternalBindJsonTreeReader_popStack(self);
  return result;
}

- (jlong)nextLong {
  ComGoogleGsonStreamJsonToken *token = [self peek];
  if (token != JreLoadEnum(ComGoogleGsonStreamJsonToken, NUMBER) && token != JreLoadEnum(ComGoogleGsonStreamJsonToken, STRING)) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$@$@", @"Expected ", JreLoadEnum(ComGoogleGsonStreamJsonToken, NUMBER), @" but was ", token));
  }
  jlong result = [((ComGoogleGsonJsonPrimitive *) nil_chk(((ComGoogleGsonJsonPrimitive *) cast_chk(ComGoogleGsonInternalBindJsonTreeReader_peekStack(self), [ComGoogleGsonJsonPrimitive class])))) getAsLong];
  ComGoogleGsonInternalBindJsonTreeReader_popStack(self);
  return result;
}

- (jint)nextInt {
  ComGoogleGsonStreamJsonToken *token = [self peek];
  if (token != JreLoadEnum(ComGoogleGsonStreamJsonToken, NUMBER) && token != JreLoadEnum(ComGoogleGsonStreamJsonToken, STRING)) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$@$@", @"Expected ", JreLoadEnum(ComGoogleGsonStreamJsonToken, NUMBER), @" but was ", token));
  }
  jint result = [((ComGoogleGsonJsonPrimitive *) nil_chk(((ComGoogleGsonJsonPrimitive *) cast_chk(ComGoogleGsonInternalBindJsonTreeReader_peekStack(self), [ComGoogleGsonJsonPrimitive class])))) getAsInt];
  ComGoogleGsonInternalBindJsonTreeReader_popStack(self);
  return result;
}

- (void)close {
  [((id<JavaUtilList>) nil_chk(stack_JsonTreeReader_)) clear];
  [stack_JsonTreeReader_ addWithId:ComGoogleGsonInternalBindJsonTreeReader_SENTINEL_CLOSED];
}

- (void)skipValue {
  if ([self peek] == JreLoadEnum(ComGoogleGsonStreamJsonToken, NAME)) {
    [self nextName];
  }
  else {
    ComGoogleGsonInternalBindJsonTreeReader_popStack(self);
  }
}

- (NSString *)description {
  return [[self java_getClass] getSimpleName];
}

- (void)promoteNameToValue {
  ComGoogleGsonInternalBindJsonTreeReader_expectWithComGoogleGsonStreamJsonToken_(self, JreLoadEnum(ComGoogleGsonStreamJsonToken, NAME));
  id<JavaUtilIterator> i = (id<JavaUtilIterator>) cast_check(ComGoogleGsonInternalBindJsonTreeReader_peekStack(self), JavaUtilIterator_class_());
  id<JavaUtilMap_Entry> entry_ = (id<JavaUtilMap_Entry>) cast_check([((id<JavaUtilIterator>) nil_chk(i)) next], JavaUtilMap_Entry_class_());
  [((id<JavaUtilList>) nil_chk(stack_JsonTreeReader_)) addWithId:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getValue]];
  [stack_JsonTreeReader_ addWithId:create_ComGoogleGsonJsonPrimitive_initWithNSString_((NSString *) cast_chk([entry_ getKey], [NSString class]))];
}

- (void)dealloc {
  RELEASE_(stack_JsonTreeReader_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LComGoogleGsonStreamJsonToken;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 2, 3, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleGsonJsonElement:);
  methods[1].selector = @selector(beginArray);
  methods[2].selector = @selector(endArray);
  methods[3].selector = @selector(beginObject);
  methods[4].selector = @selector(endObject);
  methods[5].selector = @selector(hasNext);
  methods[6].selector = @selector(peek);
  methods[7].selector = @selector(peekStack);
  methods[8].selector = @selector(popStack);
  methods[9].selector = @selector(expectWithComGoogleGsonStreamJsonToken:);
  methods[10].selector = @selector(nextName);
  methods[11].selector = @selector(nextString);
  methods[12].selector = @selector(nextBoolean);
  methods[13].selector = @selector(nextNull);
  methods[14].selector = @selector(nextDouble);
  methods[15].selector = @selector(nextLong);
  methods[16].selector = @selector(nextInt);
  methods[17].selector = @selector(close);
  methods[18].selector = @selector(skipValue);
  methods[19].selector = @selector(description);
  methods[20].selector = @selector(promoteNameToValue);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "UNREADABLE_READER", "LJavaIoReader;", .constantValue.asLong = 0, 0x1a, -1, 5, -1, -1 },
    { "SENTINEL_CLOSED", "LNSObject;", .constantValue.asLong = 0, 0x1a, -1, 6, -1, -1 },
    { "stack_JsonTreeReader_", "LJavaUtilList;", .constantValue.asLong = 0, 0x12, 7, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "LComGoogleGsonJsonElement;", "LJavaIoIOException;", "expect", "LComGoogleGsonStreamJsonToken;", "toString", &ComGoogleGsonInternalBindJsonTreeReader_UNREADABLE_READER, &ComGoogleGsonInternalBindJsonTreeReader_SENTINEL_CLOSED, "stack", "Ljava/util/List<Ljava/lang/Object;>;" };
  static const J2ObjcClassInfo _ComGoogleGsonInternalBindJsonTreeReader = { "JsonTreeReader", "com.google.gson.internal.bind", ptrTable, methods, fields, 7, 0x11, 21, 3, -1, -1, -1, -1, -1 };
  return &_ComGoogleGsonInternalBindJsonTreeReader;
}

+ (void)initialize {
  if (self == [ComGoogleGsonInternalBindJsonTreeReader class]) {
    JreStrongAssignAndConsume(&ComGoogleGsonInternalBindJsonTreeReader_UNREADABLE_READER, new_ComGoogleGsonInternalBindJsonTreeReader_1_init());
    JreStrongAssignAndConsume(&ComGoogleGsonInternalBindJsonTreeReader_SENTINEL_CLOSED, new_NSObject_init());
    J2OBJC_SET_INITIALIZED(ComGoogleGsonInternalBindJsonTreeReader)
  }
}

@end

void ComGoogleGsonInternalBindJsonTreeReader_initWithComGoogleGsonJsonElement_(ComGoogleGsonInternalBindJsonTreeReader *self, ComGoogleGsonJsonElement *element) {
  ComGoogleGsonStreamJsonReader_initWithJavaIoReader_(self, ComGoogleGsonInternalBindJsonTreeReader_UNREADABLE_READER);
  JreStrongAssignAndConsume(&self->stack_JsonTreeReader_, new_JavaUtilArrayList_init());
  [self->stack_JsonTreeReader_ addWithId:element];
}

ComGoogleGsonInternalBindJsonTreeReader *new_ComGoogleGsonInternalBindJsonTreeReader_initWithComGoogleGsonJsonElement_(ComGoogleGsonJsonElement *element) {
  J2OBJC_NEW_IMPL(ComGoogleGsonInternalBindJsonTreeReader, initWithComGoogleGsonJsonElement_, element)
}

ComGoogleGsonInternalBindJsonTreeReader *create_ComGoogleGsonInternalBindJsonTreeReader_initWithComGoogleGsonJsonElement_(ComGoogleGsonJsonElement *element) {
  J2OBJC_CREATE_IMPL(ComGoogleGsonInternalBindJsonTreeReader, initWithComGoogleGsonJsonElement_, element)
}

id ComGoogleGsonInternalBindJsonTreeReader_peekStack(ComGoogleGsonInternalBindJsonTreeReader *self) {
  return [((id<JavaUtilList>) nil_chk(self->stack_JsonTreeReader_)) getWithInt:[self->stack_JsonTreeReader_ size] - 1];
}

id ComGoogleGsonInternalBindJsonTreeReader_popStack(ComGoogleGsonInternalBindJsonTreeReader *self) {
  return [((id<JavaUtilList>) nil_chk(self->stack_JsonTreeReader_)) removeWithInt:[self->stack_JsonTreeReader_ size] - 1];
}

void ComGoogleGsonInternalBindJsonTreeReader_expectWithComGoogleGsonStreamJsonToken_(ComGoogleGsonInternalBindJsonTreeReader *self, ComGoogleGsonStreamJsonToken *expected) {
  if ([self peek] != expected) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$@$@", @"Expected ", expected, @" but was ", [self peek]));
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalBindJsonTreeReader)

@implementation ComGoogleGsonInternalBindJsonTreeReader_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonInternalBindJsonTreeReader_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)readWithCharArray:(IOSCharArray *)buffer
                  withInt:(jint)offset
                  withInt:(jint)count {
  @throw create_JavaLangAssertionError_init();
}

- (void)close {
  @throw create_JavaLangAssertionError_init();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(readWithCharArray:withInt:withInt:);
  methods[2].selector = @selector(close);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "read", "[CII", "LJavaIoIOException;", "LComGoogleGsonInternalBindJsonTreeReader;" };
  static const J2ObjcClassInfo _ComGoogleGsonInternalBindJsonTreeReader_1 = { "", "com.google.gson.internal.bind", ptrTable, methods, NULL, 7, 0x8018, 3, 0, 3, -1, -1, -1, -1 };
  return &_ComGoogleGsonInternalBindJsonTreeReader_1;
}

@end

void ComGoogleGsonInternalBindJsonTreeReader_1_init(ComGoogleGsonInternalBindJsonTreeReader_1 *self) {
  JavaIoReader_init(self);
}

ComGoogleGsonInternalBindJsonTreeReader_1 *new_ComGoogleGsonInternalBindJsonTreeReader_1_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonInternalBindJsonTreeReader_1, init)
}

ComGoogleGsonInternalBindJsonTreeReader_1 *create_ComGoogleGsonInternalBindJsonTreeReader_1_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonInternalBindJsonTreeReader_1, init)
}
