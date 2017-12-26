//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:gson-2.6.2-sources.jar!com/google/gson/internal/Primitives.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/gson/internal/$Gson$Preconditions.h"
#include "com/google/gson/internal/Primitives.h"
#include "java/lang/Boolean.h"
#include "java/lang/Byte.h"
#include "java/lang/Character.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/Short.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/lang/Void.h"
#include "java/lang/reflect/Type.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"

@interface ComGoogleGsonInternalPrimitives ()

- (instancetype)init;

+ (void)addWithJavaUtilMap:(id<JavaUtilMap>)forward
           withJavaUtilMap:(id<JavaUtilMap>)backward
              withIOSClass:(IOSClass *)key
              withIOSClass:(IOSClass *)value;

@end

inline id<JavaUtilMap> ComGoogleGsonInternalPrimitives_get_PRIMITIVE_TO_WRAPPER_TYPE(void);
static id<JavaUtilMap> ComGoogleGsonInternalPrimitives_PRIMITIVE_TO_WRAPPER_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleGsonInternalPrimitives, PRIMITIVE_TO_WRAPPER_TYPE, id<JavaUtilMap>)

inline id<JavaUtilMap> ComGoogleGsonInternalPrimitives_get_WRAPPER_TO_PRIMITIVE_TYPE(void);
static id<JavaUtilMap> ComGoogleGsonInternalPrimitives_WRAPPER_TO_PRIMITIVE_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleGsonInternalPrimitives, WRAPPER_TO_PRIMITIVE_TYPE, id<JavaUtilMap>)

__attribute__((unused)) static void ComGoogleGsonInternalPrimitives_init(ComGoogleGsonInternalPrimitives *self);

__attribute__((unused)) static ComGoogleGsonInternalPrimitives *new_ComGoogleGsonInternalPrimitives_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleGsonInternalPrimitives *create_ComGoogleGsonInternalPrimitives_init(void);

__attribute__((unused)) static void ComGoogleGsonInternalPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(id<JavaUtilMap> forward, id<JavaUtilMap> backward, IOSClass *key, IOSClass *value);

J2OBJC_INITIALIZED_DEFN(ComGoogleGsonInternalPrimitives)

@implementation ComGoogleGsonInternalPrimitives

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonInternalPrimitives_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)addWithJavaUtilMap:(id<JavaUtilMap>)forward
           withJavaUtilMap:(id<JavaUtilMap>)backward
              withIOSClass:(IOSClass *)key
              withIOSClass:(IOSClass *)value {
  ComGoogleGsonInternalPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(forward, backward, key, value);
}

+ (jboolean)isPrimitiveWithJavaLangReflectType:(id<JavaLangReflectType>)type {
  return ComGoogleGsonInternalPrimitives_isPrimitiveWithJavaLangReflectType_(type);
}

+ (jboolean)isWrapperTypeWithJavaLangReflectType:(id<JavaLangReflectType>)type {
  return ComGoogleGsonInternalPrimitives_isWrapperTypeWithJavaLangReflectType_(type);
}

+ (IOSClass *)wrapWithIOSClass:(IOSClass *)type {
  return ComGoogleGsonInternalPrimitives_wrapWithIOSClass_(type);
}

+ (IOSClass *)unwrapWithIOSClass:(IOSClass *)type {
  return ComGoogleGsonInternalPrimitives_unwrapWithIOSClass_(type);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 0, 1, -1, 2, -1, -1 },
    { NULL, "Z", 0x9, 3, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 5, 4, -1, -1, -1, -1 },
    { NULL, "LIOSClass;", 0x9, 6, 7, -1, 8, -1, -1 },
    { NULL, "LIOSClass;", 0x9, 9, 7, -1, 8, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addWithJavaUtilMap:withJavaUtilMap:withIOSClass:withIOSClass:);
  methods[2].selector = @selector(isPrimitiveWithJavaLangReflectType:);
  methods[3].selector = @selector(isWrapperTypeWithJavaLangReflectType:);
  methods[4].selector = @selector(wrapWithIOSClass:);
  methods[5].selector = @selector(unwrapWithIOSClass:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "PRIMITIVE_TO_WRAPPER_TYPE", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1a, -1, 10, 11, -1 },
    { "WRAPPER_TO_PRIMITIVE_TYPE", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1a, -1, 12, 11, -1 },
  };
  static const void *ptrTable[] = { "add", "LJavaUtilMap;LJavaUtilMap;LIOSClass;LIOSClass;", "(Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)V", "isPrimitive", "LJavaLangReflectType;", "isWrapperType", "wrap", "LIOSClass;", "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/lang/Class<TT;>;", "unwrap", &ComGoogleGsonInternalPrimitives_PRIMITIVE_TO_WRAPPER_TYPE, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;", &ComGoogleGsonInternalPrimitives_WRAPPER_TO_PRIMITIVE_TYPE };
  static const J2ObjcClassInfo _ComGoogleGsonInternalPrimitives = { "Primitives", "com.google.gson.internal", ptrTable, methods, fields, 7, 0x11, 6, 2, -1, -1, -1, -1, -1 };
  return &_ComGoogleGsonInternalPrimitives;
}

+ (void)initialize {
  if (self == [ComGoogleGsonInternalPrimitives class]) {
    {
      id<JavaUtilMap> primToWrap = create_JavaUtilHashMap_initWithInt_(16);
      id<JavaUtilMap> wrapToPrim = create_JavaUtilHashMap_initWithInt_(16);
      ComGoogleGsonInternalPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(primToWrap, wrapToPrim, [IOSClass booleanClass], JavaLangBoolean_class_());
      ComGoogleGsonInternalPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(primToWrap, wrapToPrim, [IOSClass byteClass], JavaLangByte_class_());
      ComGoogleGsonInternalPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(primToWrap, wrapToPrim, [IOSClass charClass], JavaLangCharacter_class_());
      ComGoogleGsonInternalPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(primToWrap, wrapToPrim, [IOSClass doubleClass], JavaLangDouble_class_());
      ComGoogleGsonInternalPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(primToWrap, wrapToPrim, [IOSClass floatClass], JavaLangFloat_class_());
      ComGoogleGsonInternalPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(primToWrap, wrapToPrim, [IOSClass intClass], JavaLangInteger_class_());
      ComGoogleGsonInternalPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(primToWrap, wrapToPrim, [IOSClass longClass], JavaLangLong_class_());
      ComGoogleGsonInternalPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(primToWrap, wrapToPrim, [IOSClass shortClass], JavaLangShort_class_());
      ComGoogleGsonInternalPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(primToWrap, wrapToPrim, [IOSClass voidClass], JavaLangVoid_class_());
      JreStrongAssign(&ComGoogleGsonInternalPrimitives_PRIMITIVE_TO_WRAPPER_TYPE, JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(primToWrap));
      JreStrongAssign(&ComGoogleGsonInternalPrimitives_WRAPPER_TO_PRIMITIVE_TYPE, JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(wrapToPrim));
    }
    J2OBJC_SET_INITIALIZED(ComGoogleGsonInternalPrimitives)
  }
}

@end

void ComGoogleGsonInternalPrimitives_init(ComGoogleGsonInternalPrimitives *self) {
  NSObject_init(self);
  @throw create_JavaLangUnsupportedOperationException_init();
}

ComGoogleGsonInternalPrimitives *new_ComGoogleGsonInternalPrimitives_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonInternalPrimitives, init)
}

ComGoogleGsonInternalPrimitives *create_ComGoogleGsonInternalPrimitives_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonInternalPrimitives, init)
}

void ComGoogleGsonInternalPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(id<JavaUtilMap> forward, id<JavaUtilMap> backward, IOSClass *key, IOSClass *value) {
  ComGoogleGsonInternalPrimitives_initialize();
  [((id<JavaUtilMap>) nil_chk(forward)) putWithId:key withId:value];
  [((id<JavaUtilMap>) nil_chk(backward)) putWithId:value withId:key];
}

jboolean ComGoogleGsonInternalPrimitives_isPrimitiveWithJavaLangReflectType_(id<JavaLangReflectType> type) {
  ComGoogleGsonInternalPrimitives_initialize();
  return [((id<JavaUtilMap>) nil_chk(ComGoogleGsonInternalPrimitives_PRIMITIVE_TO_WRAPPER_TYPE)) containsKeyWithId:type];
}

jboolean ComGoogleGsonInternalPrimitives_isWrapperTypeWithJavaLangReflectType_(id<JavaLangReflectType> type) {
  ComGoogleGsonInternalPrimitives_initialize();
  return [((id<JavaUtilMap>) nil_chk(ComGoogleGsonInternalPrimitives_WRAPPER_TO_PRIMITIVE_TYPE)) containsKeyWithId:ComGoogleGsonInternal_Gson_Preconditions_checkNotNullWithId_(type)];
}

IOSClass *ComGoogleGsonInternalPrimitives_wrapWithIOSClass_(IOSClass *type) {
  ComGoogleGsonInternalPrimitives_initialize();
  IOSClass *wrapped = [((id<JavaUtilMap>) nil_chk(ComGoogleGsonInternalPrimitives_PRIMITIVE_TO_WRAPPER_TYPE)) getWithId:ComGoogleGsonInternal_Gson_Preconditions_checkNotNullWithId_(type)];
  return (wrapped == nil) ? type : wrapped;
}

IOSClass *ComGoogleGsonInternalPrimitives_unwrapWithIOSClass_(IOSClass *type) {
  ComGoogleGsonInternalPrimitives_initialize();
  IOSClass *unwrapped = [((id<JavaUtilMap>) nil_chk(ComGoogleGsonInternalPrimitives_WRAPPER_TO_PRIMITIVE_TYPE)) getWithId:ComGoogleGsonInternal_Gson_Preconditions_checkNotNullWithId_(type)];
  return (unwrapped == nil) ? type : unwrapped;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalPrimitives)
