//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:gson-2.6.2-sources.jar!com/google/gson/internal/bind/TimeTypeAdapter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/gson/Gson.h"
#include "com/google/gson/JsonSyntaxException.h"
#include "com/google/gson/TypeAdapter.h"
#include "com/google/gson/TypeAdapterFactory.h"
#include "com/google/gson/internal/bind/TimeTypeAdapter.h"
#include "com/google/gson/reflect/TypeToken.h"
#include "com/google/gson/stream/JsonReader.h"
#include "com/google/gson/stream/JsonToken.h"
#include "com/google/gson/stream/JsonWriter.h"
#include "java/sql/Time.h"
#include "java/text/DateFormat.h"
#include "java/text/ParseException.h"
#include "java/text/SimpleDateFormat.h"
#include "java/util/Date.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface ComGoogleGsonInternalBindTimeTypeAdapter () {
 @public
  JavaTextDateFormat *format_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindTimeTypeAdapter, format_, JavaTextDateFormat *)

@interface ComGoogleGsonInternalBindTimeTypeAdapter_1 : NSObject < ComGoogleGsonTypeAdapterFactory >

- (instancetype)init;

- (ComGoogleGsonTypeAdapter *)createWithComGoogleGsonGson:(ComGoogleGsonGson *)gson
                        withComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)typeToken;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonInternalBindTimeTypeAdapter_1)

__attribute__((unused)) static void ComGoogleGsonInternalBindTimeTypeAdapter_1_init(ComGoogleGsonInternalBindTimeTypeAdapter_1 *self);

__attribute__((unused)) static ComGoogleGsonInternalBindTimeTypeAdapter_1 *new_ComGoogleGsonInternalBindTimeTypeAdapter_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleGsonInternalBindTimeTypeAdapter_1 *create_ComGoogleGsonInternalBindTimeTypeAdapter_1_init(void);

J2OBJC_INITIALIZED_DEFN(ComGoogleGsonInternalBindTimeTypeAdapter)

id<ComGoogleGsonTypeAdapterFactory> ComGoogleGsonInternalBindTimeTypeAdapter_FACTORY;

@implementation ComGoogleGsonInternalBindTimeTypeAdapter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonInternalBindTimeTypeAdapter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (JavaSqlTime *)readWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)inArg {
  @synchronized(self) {
    if ([((ComGoogleGsonStreamJsonReader *) nil_chk(inArg)) peek] == JreLoadEnum(ComGoogleGsonStreamJsonToken, NULL)) {
      [inArg nextNull];
      return JreRetainedLocalValue(nil);
    }
    @try {
      JavaUtilDate *date = [((JavaTextDateFormat *) nil_chk(format_)) parseWithNSString:[inArg nextString]];
      return JreRetainedLocalValue(create_JavaSqlTime_initWithLong_([((JavaUtilDate *) nil_chk(date)) getTime]));
    }
    @catch (JavaTextParseException *e) {
      @throw create_ComGoogleGsonJsonSyntaxException_initWithJavaLangThrowable_(e);
    }
  }
}

- (void)writeWithComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)outArg
                                        withId:(JavaSqlTime *)value {
  @synchronized(self) {
    [((ComGoogleGsonStreamJsonWriter *) nil_chk(outArg)) valueWithNSString:value == nil ? nil : [((JavaTextDateFormat *) nil_chk(format_)) formatWithJavaUtilDate:value]];
  }
}

- (void)dealloc {
  RELEASE_(format_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaSqlTime;", 0x21, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x21, 3, 4, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(readWithComGoogleGsonStreamJsonReader:);
  methods[2].selector = @selector(writeWithComGoogleGsonStreamJsonWriter:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "FACTORY", "LComGoogleGsonTypeAdapterFactory;", .constantValue.asLong = 0, 0x19, -1, 5, -1, -1 },
    { "format_", "LJavaTextDateFormat;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "read", "LComGoogleGsonStreamJsonReader;", "LJavaIoIOException;", "write", "LComGoogleGsonStreamJsonWriter;LJavaSqlTime;", &ComGoogleGsonInternalBindTimeTypeAdapter_FACTORY, "Lcom/google/gson/TypeAdapter<Ljava/sql/Time;>;" };
  static const J2ObjcClassInfo _ComGoogleGsonInternalBindTimeTypeAdapter = { "TimeTypeAdapter", "com.google.gson.internal.bind", ptrTable, methods, fields, 7, 0x11, 3, 2, -1, -1, -1, 6, -1 };
  return &_ComGoogleGsonInternalBindTimeTypeAdapter;
}

+ (void)initialize {
  if (self == [ComGoogleGsonInternalBindTimeTypeAdapter class]) {
    JreStrongAssignAndConsume(&ComGoogleGsonInternalBindTimeTypeAdapter_FACTORY, new_ComGoogleGsonInternalBindTimeTypeAdapter_1_init());
    J2OBJC_SET_INITIALIZED(ComGoogleGsonInternalBindTimeTypeAdapter)
  }
}

@end

void ComGoogleGsonInternalBindTimeTypeAdapter_init(ComGoogleGsonInternalBindTimeTypeAdapter *self) {
  ComGoogleGsonTypeAdapter_init(self);
  JreStrongAssignAndConsume(&self->format_, new_JavaTextSimpleDateFormat_initWithNSString_(@"hh:mm:ss a"));
}

ComGoogleGsonInternalBindTimeTypeAdapter *new_ComGoogleGsonInternalBindTimeTypeAdapter_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonInternalBindTimeTypeAdapter, init)
}

ComGoogleGsonInternalBindTimeTypeAdapter *create_ComGoogleGsonInternalBindTimeTypeAdapter_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonInternalBindTimeTypeAdapter, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalBindTimeTypeAdapter)

@implementation ComGoogleGsonInternalBindTimeTypeAdapter_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonInternalBindTimeTypeAdapter_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (ComGoogleGsonTypeAdapter *)createWithComGoogleGsonGson:(ComGoogleGsonGson *)gson
                        withComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)typeToken {
  return [((ComGoogleGsonReflectTypeToken *) nil_chk(typeToken)) getRawType] == JavaSqlTime_class_() ? create_ComGoogleGsonInternalBindTimeTypeAdapter_init() : nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleGsonTypeAdapter;", 0x1, 0, 1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(createWithComGoogleGsonGson:withComGoogleGsonReflectTypeToken:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "create", "LComGoogleGsonGson;LComGoogleGsonReflectTypeToken;", "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;", "LComGoogleGsonInternalBindTimeTypeAdapter;" };
  static const J2ObjcClassInfo _ComGoogleGsonInternalBindTimeTypeAdapter_1 = { "", "com.google.gson.internal.bind", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 3, -1, -1, -1, -1 };
  return &_ComGoogleGsonInternalBindTimeTypeAdapter_1;
}

@end

void ComGoogleGsonInternalBindTimeTypeAdapter_1_init(ComGoogleGsonInternalBindTimeTypeAdapter_1 *self) {
  NSObject_init(self);
}

ComGoogleGsonInternalBindTimeTypeAdapter_1 *new_ComGoogleGsonInternalBindTimeTypeAdapter_1_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonInternalBindTimeTypeAdapter_1, init)
}

ComGoogleGsonInternalBindTimeTypeAdapter_1 *create_ComGoogleGsonInternalBindTimeTypeAdapter_1_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonInternalBindTimeTypeAdapter_1, init)
}
