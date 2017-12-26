//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/concurrent/ConcurrentUtils.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Error.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Throwable.h"
#include "java/util/concurrent/ConcurrentMap.h"
#include "java/util/concurrent/ExecutionException.h"
#include "java/util/concurrent/Future.h"
#include "java/util/concurrent/TimeUnit.h"
#include "org/apache/commons/lang3/Validate.h"
#include "org/apache/commons/lang3/concurrent/ConcurrentException.h"
#include "org/apache/commons/lang3/concurrent/ConcurrentInitializer.h"
#include "org/apache/commons/lang3/concurrent/ConcurrentRuntimeException.h"
#include "org/apache/commons/lang3/concurrent/ConcurrentUtils.h"

@interface OrgApacheCommonsLang3ConcurrentConcurrentUtils ()

- (instancetype)init;

+ (void)throwCauseWithJavaUtilConcurrentExecutionException:(JavaUtilConcurrentExecutionException *)ex;

@end

__attribute__((unused)) static void OrgApacheCommonsLang3ConcurrentConcurrentUtils_init(OrgApacheCommonsLang3ConcurrentConcurrentUtils *self);

__attribute__((unused)) static OrgApacheCommonsLang3ConcurrentConcurrentUtils *new_OrgApacheCommonsLang3ConcurrentConcurrentUtils_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheCommonsLang3ConcurrentConcurrentUtils *create_OrgApacheCommonsLang3ConcurrentConcurrentUtils_init(void);

__attribute__((unused)) static void OrgApacheCommonsLang3ConcurrentConcurrentUtils_throwCauseWithJavaUtilConcurrentExecutionException_(JavaUtilConcurrentExecutionException *ex);

@interface OrgApacheCommonsLang3ConcurrentConcurrentUtils_ConstantFuture () {
 @public
  id value_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3ConcurrentConcurrentUtils_ConstantFuture, value_, id)

@implementation OrgApacheCommonsLang3ConcurrentConcurrentUtils

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgApacheCommonsLang3ConcurrentConcurrentException *)extractCauseWithJavaUtilConcurrentExecutionException:(JavaUtilConcurrentExecutionException *)ex {
  return OrgApacheCommonsLang3ConcurrentConcurrentUtils_extractCauseWithJavaUtilConcurrentExecutionException_(ex);
}

+ (OrgApacheCommonsLang3ConcurrentConcurrentRuntimeException *)extractCauseUncheckedWithJavaUtilConcurrentExecutionException:(JavaUtilConcurrentExecutionException *)ex {
  return OrgApacheCommonsLang3ConcurrentConcurrentUtils_extractCauseUncheckedWithJavaUtilConcurrentExecutionException_(ex);
}

+ (void)handleCauseWithJavaUtilConcurrentExecutionException:(JavaUtilConcurrentExecutionException *)ex {
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_handleCauseWithJavaUtilConcurrentExecutionException_(ex);
}

+ (void)handleCauseUncheckedWithJavaUtilConcurrentExecutionException:(JavaUtilConcurrentExecutionException *)ex {
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_handleCauseUncheckedWithJavaUtilConcurrentExecutionException_(ex);
}

+ (JavaLangThrowable *)checkedExceptionWithJavaLangThrowable:(JavaLangThrowable *)ex {
  return OrgApacheCommonsLang3ConcurrentConcurrentUtils_checkedExceptionWithJavaLangThrowable_(ex);
}

+ (void)throwCauseWithJavaUtilConcurrentExecutionException:(JavaUtilConcurrentExecutionException *)ex {
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_throwCauseWithJavaUtilConcurrentExecutionException_(ex);
}

+ (id)initialize__WithOrgApacheCommonsLang3ConcurrentConcurrentInitializer:(id<OrgApacheCommonsLang3ConcurrentConcurrentInitializer>)initializer {
  return OrgApacheCommonsLang3ConcurrentConcurrentUtils_initialize__WithOrgApacheCommonsLang3ConcurrentConcurrentInitializer_(initializer);
}

+ (id)initializeUncheckedWithOrgApacheCommonsLang3ConcurrentConcurrentInitializer:(id<OrgApacheCommonsLang3ConcurrentConcurrentInitializer>)initializer {
  return OrgApacheCommonsLang3ConcurrentConcurrentUtils_initializeUncheckedWithOrgApacheCommonsLang3ConcurrentConcurrentInitializer_(initializer);
}

+ (id)putIfAbsentWithJavaUtilConcurrentConcurrentMap:(id<JavaUtilConcurrentConcurrentMap>)map
                                              withId:(id)key
                                              withId:(id)value {
  return OrgApacheCommonsLang3ConcurrentConcurrentUtils_putIfAbsentWithJavaUtilConcurrentConcurrentMap_withId_withId_(map, key, value);
}

+ (id)createIfAbsentWithJavaUtilConcurrentConcurrentMap:(id<JavaUtilConcurrentConcurrentMap>)map
                                                 withId:(id)key
withOrgApacheCommonsLang3ConcurrentConcurrentInitializer:(id<OrgApacheCommonsLang3ConcurrentConcurrentInitializer>)init_ {
  return OrgApacheCommonsLang3ConcurrentConcurrentUtils_createIfAbsentWithJavaUtilConcurrentConcurrentMap_withId_withOrgApacheCommonsLang3ConcurrentConcurrentInitializer_(map, key, init_);
}

+ (id)createIfAbsentUncheckedWithJavaUtilConcurrentConcurrentMap:(id<JavaUtilConcurrentConcurrentMap>)map
                                                          withId:(id)key
        withOrgApacheCommonsLang3ConcurrentConcurrentInitializer:(id<OrgApacheCommonsLang3ConcurrentConcurrentInitializer>)init_ {
  return OrgApacheCommonsLang3ConcurrentConcurrentUtils_createIfAbsentUncheckedWithJavaUtilConcurrentConcurrentMap_withId_withOrgApacheCommonsLang3ConcurrentConcurrentInitializer_(map, key, init_);
}

+ (id<JavaUtilConcurrentFuture>)constantFutureWithId:(id)value {
  return OrgApacheCommonsLang3ConcurrentConcurrentUtils_constantFutureWithId_(value);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3ConcurrentConcurrentException;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3ConcurrentConcurrentRuntimeException;", 0x9, 2, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 3, 1, 4, -1, -1, -1 },
    { NULL, "V", 0x9, 5, 1, -1, -1, -1, -1 },
    { NULL, "LJavaLangThrowable;", 0x8, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 8, 1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x9, 9, 10, 4, 11, -1, -1 },
    { NULL, "LNSObject;", 0x9, 12, 10, -1, 11, -1, -1 },
    { NULL, "LNSObject;", 0x9, 13, 14, -1, 15, -1, -1 },
    { NULL, "LNSObject;", 0x9, 16, 17, 4, 18, -1, -1 },
    { NULL, "LNSObject;", 0x9, 19, 17, -1, 18, -1, -1 },
    { NULL, "LJavaUtilConcurrentFuture;", 0x9, 20, 21, -1, 22, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(extractCauseWithJavaUtilConcurrentExecutionException:);
  methods[2].selector = @selector(extractCauseUncheckedWithJavaUtilConcurrentExecutionException:);
  methods[3].selector = @selector(handleCauseWithJavaUtilConcurrentExecutionException:);
  methods[4].selector = @selector(handleCauseUncheckedWithJavaUtilConcurrentExecutionException:);
  methods[5].selector = @selector(checkedExceptionWithJavaLangThrowable:);
  methods[6].selector = @selector(throwCauseWithJavaUtilConcurrentExecutionException:);
  methods[7].selector = @selector(initialize__WithOrgApacheCommonsLang3ConcurrentConcurrentInitializer:);
  methods[8].selector = @selector(initializeUncheckedWithOrgApacheCommonsLang3ConcurrentConcurrentInitializer:);
  methods[9].selector = @selector(putIfAbsentWithJavaUtilConcurrentConcurrentMap:withId:withId:);
  methods[10].selector = @selector(createIfAbsentWithJavaUtilConcurrentConcurrentMap:withId:withOrgApacheCommonsLang3ConcurrentConcurrentInitializer:);
  methods[11].selector = @selector(createIfAbsentUncheckedWithJavaUtilConcurrentConcurrentMap:withId:withOrgApacheCommonsLang3ConcurrentConcurrentInitializer:);
  methods[12].selector = @selector(constantFutureWithId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "extractCause", "LJavaUtilConcurrentExecutionException;", "extractCauseUnchecked", "handleCause", "LOrgApacheCommonsLang3ConcurrentConcurrentException;", "handleCauseUnchecked", "checkedException", "LJavaLangThrowable;", "throwCause", "initialize", "LOrgApacheCommonsLang3ConcurrentConcurrentInitializer;", "<T:Ljava/lang/Object;>(Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer<TT;>;)TT;", "initializeUnchecked", "putIfAbsent", "LJavaUtilConcurrentConcurrentMap;LNSObject;LNSObject;", "<K:Ljava/lang/Object;V:Ljava/lang/Object;>(Ljava/util/concurrent/ConcurrentMap<TK;TV;>;TK;TV;)TV;", "createIfAbsent", "LJavaUtilConcurrentConcurrentMap;LNSObject;LOrgApacheCommonsLang3ConcurrentConcurrentInitializer;", "<K:Ljava/lang/Object;V:Ljava/lang/Object;>(Ljava/util/concurrent/ConcurrentMap<TK;TV;>;TK;Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer<TV;>;)TV;", "createIfAbsentUnchecked", "constantFuture", "LNSObject;", "<T:Ljava/lang/Object;>(TT;)Ljava/util/concurrent/Future<TT;>;", "LOrgApacheCommonsLang3ConcurrentConcurrentUtils_ConstantFuture;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3ConcurrentConcurrentUtils = { "ConcurrentUtils", "org.apache.commons.lang3.concurrent", ptrTable, methods, NULL, 7, 0x1, 13, 0, -1, 23, -1, -1, -1 };
  return &_OrgApacheCommonsLang3ConcurrentConcurrentUtils;
}

@end

void OrgApacheCommonsLang3ConcurrentConcurrentUtils_init(OrgApacheCommonsLang3ConcurrentConcurrentUtils *self) {
  NSObject_init(self);
}

OrgApacheCommonsLang3ConcurrentConcurrentUtils *new_OrgApacheCommonsLang3ConcurrentConcurrentUtils_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3ConcurrentConcurrentUtils, init)
}

OrgApacheCommonsLang3ConcurrentConcurrentUtils *create_OrgApacheCommonsLang3ConcurrentConcurrentUtils_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3ConcurrentConcurrentUtils, init)
}

OrgApacheCommonsLang3ConcurrentConcurrentException *OrgApacheCommonsLang3ConcurrentConcurrentUtils_extractCauseWithJavaUtilConcurrentExecutionException_(JavaUtilConcurrentExecutionException *ex) {
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_initialize();
  if (ex == nil || [ex getCause] == nil) {
    return nil;
  }
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_throwCauseWithJavaUtilConcurrentExecutionException_(ex);
  return create_OrgApacheCommonsLang3ConcurrentConcurrentException_initWithNSString_withJavaLangThrowable_([ex getMessage], [ex getCause]);
}

OrgApacheCommonsLang3ConcurrentConcurrentRuntimeException *OrgApacheCommonsLang3ConcurrentConcurrentUtils_extractCauseUncheckedWithJavaUtilConcurrentExecutionException_(JavaUtilConcurrentExecutionException *ex) {
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_initialize();
  if (ex == nil || [ex getCause] == nil) {
    return nil;
  }
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_throwCauseWithJavaUtilConcurrentExecutionException_(ex);
  return create_OrgApacheCommonsLang3ConcurrentConcurrentRuntimeException_initWithNSString_withJavaLangThrowable_([ex getMessage], [ex getCause]);
}

void OrgApacheCommonsLang3ConcurrentConcurrentUtils_handleCauseWithJavaUtilConcurrentExecutionException_(JavaUtilConcurrentExecutionException *ex) {
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_initialize();
  OrgApacheCommonsLang3ConcurrentConcurrentException *cex = OrgApacheCommonsLang3ConcurrentConcurrentUtils_extractCauseWithJavaUtilConcurrentExecutionException_(ex);
  if (cex != nil) {
    @throw cex;
  }
}

void OrgApacheCommonsLang3ConcurrentConcurrentUtils_handleCauseUncheckedWithJavaUtilConcurrentExecutionException_(JavaUtilConcurrentExecutionException *ex) {
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_initialize();
  OrgApacheCommonsLang3ConcurrentConcurrentRuntimeException *crex = OrgApacheCommonsLang3ConcurrentConcurrentUtils_extractCauseUncheckedWithJavaUtilConcurrentExecutionException_(ex);
  if (crex != nil) {
    @throw crex;
  }
}

JavaLangThrowable *OrgApacheCommonsLang3ConcurrentConcurrentUtils_checkedExceptionWithJavaLangThrowable_(JavaLangThrowable *ex) {
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_initialize();
  OrgApacheCommonsLang3Validate_isTrueWithBoolean_withNSString_withNSObjectArray_(ex != nil && !([ex isKindOfClass:[JavaLangRuntimeException class]]) && !([ex isKindOfClass:[JavaLangError class]]), JreStrcat("$@", @"Not a checked exception: ", ex), [IOSObjectArray arrayWithLength:0 type:NSObject_class_()]);
  return ex;
}

void OrgApacheCommonsLang3ConcurrentConcurrentUtils_throwCauseWithJavaUtilConcurrentExecutionException_(JavaUtilConcurrentExecutionException *ex) {
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_initialize();
  if ([[((JavaUtilConcurrentExecutionException *) nil_chk(ex)) getCause] isKindOfClass:[JavaLangRuntimeException class]]) {
    @throw nil_chk((JavaLangRuntimeException *) cast_chk([ex getCause], [JavaLangRuntimeException class]));
  }
  if ([[ex getCause] isKindOfClass:[JavaLangError class]]) {
    @throw nil_chk((JavaLangError *) cast_chk([ex getCause], [JavaLangError class]));
  }
}

id OrgApacheCommonsLang3ConcurrentConcurrentUtils_initialize__WithOrgApacheCommonsLang3ConcurrentConcurrentInitializer_(id<OrgApacheCommonsLang3ConcurrentConcurrentInitializer> initializer) {
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_initialize();
  return initializer != nil ? [initializer get] : nil;
}

id OrgApacheCommonsLang3ConcurrentConcurrentUtils_initializeUncheckedWithOrgApacheCommonsLang3ConcurrentConcurrentInitializer_(id<OrgApacheCommonsLang3ConcurrentConcurrentInitializer> initializer) {
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_initialize();
  @try {
    return OrgApacheCommonsLang3ConcurrentConcurrentUtils_initialize__WithOrgApacheCommonsLang3ConcurrentConcurrentInitializer_(initializer);
  }
  @catch (OrgApacheCommonsLang3ConcurrentConcurrentException *cex) {
    @throw create_OrgApacheCommonsLang3ConcurrentConcurrentRuntimeException_initWithJavaLangThrowable_([cex getCause]);
  }
}

id OrgApacheCommonsLang3ConcurrentConcurrentUtils_putIfAbsentWithJavaUtilConcurrentConcurrentMap_withId_withId_(id<JavaUtilConcurrentConcurrentMap> map, id key, id value) {
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_initialize();
  if (map == nil) {
    return nil;
  }
  id result = [map putIfAbsentWithId:key withId:value];
  return result != nil ? result : value;
}

id OrgApacheCommonsLang3ConcurrentConcurrentUtils_createIfAbsentWithJavaUtilConcurrentConcurrentMap_withId_withOrgApacheCommonsLang3ConcurrentConcurrentInitializer_(id<JavaUtilConcurrentConcurrentMap> map, id key, id<OrgApacheCommonsLang3ConcurrentConcurrentInitializer> init_) {
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_initialize();
  if (map == nil || init_ == nil) {
    return nil;
  }
  id value = [map getWithId:key];
  if (value == nil) {
    return OrgApacheCommonsLang3ConcurrentConcurrentUtils_putIfAbsentWithJavaUtilConcurrentConcurrentMap_withId_withId_(map, key, [init_ get]);
  }
  return value;
}

id OrgApacheCommonsLang3ConcurrentConcurrentUtils_createIfAbsentUncheckedWithJavaUtilConcurrentConcurrentMap_withId_withOrgApacheCommonsLang3ConcurrentConcurrentInitializer_(id<JavaUtilConcurrentConcurrentMap> map, id key, id<OrgApacheCommonsLang3ConcurrentConcurrentInitializer> init_) {
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_initialize();
  @try {
    return OrgApacheCommonsLang3ConcurrentConcurrentUtils_createIfAbsentWithJavaUtilConcurrentConcurrentMap_withId_withOrgApacheCommonsLang3ConcurrentConcurrentInitializer_(map, key, init_);
  }
  @catch (OrgApacheCommonsLang3ConcurrentConcurrentException *cex) {
    @throw create_OrgApacheCommonsLang3ConcurrentConcurrentRuntimeException_initWithJavaLangThrowable_([cex getCause]);
  }
}

id<JavaUtilConcurrentFuture> OrgApacheCommonsLang3ConcurrentConcurrentUtils_constantFutureWithId_(id value) {
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_initialize();
  return create_OrgApacheCommonsLang3ConcurrentConcurrentUtils_ConstantFuture_initWithId_(value);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3ConcurrentConcurrentUtils)

@implementation OrgApacheCommonsLang3ConcurrentConcurrentUtils_ConstantFuture

- (instancetype)initWithId:(id)value {
  OrgApacheCommonsLang3ConcurrentConcurrentUtils_ConstantFuture_initWithId_(self, value);
  return self;
}

- (jboolean)isDone {
  return true;
}

- (id)get {
  return value_;
}

- (id)getWithLong:(jlong)timeout
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit {
  return value_;
}

- (jboolean)isCancelled {
  return false;
}

- (jboolean)cancelWithBoolean:(jboolean)mayInterruptIfRunning {
  return false;
}

- (void)dealloc {
  RELEASE_(value_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "LNSObject;", 0x1, 3, 4, -1, 5, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithId:);
  methods[1].selector = @selector(isDone);
  methods[2].selector = @selector(get);
  methods[3].selector = @selector(getWithLong:withJavaUtilConcurrentTimeUnit:);
  methods[4].selector = @selector(isCancelled);
  methods[5].selector = @selector(cancelWithBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "value_", "LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "LNSObject;", "(TT;)V", "()TT;", "get", "JLJavaUtilConcurrentTimeUnit;", "(JLjava/util/concurrent/TimeUnit;)TT;", "cancel", "Z", "TT;", "LOrgApacheCommonsLang3ConcurrentConcurrentUtils;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/concurrent/Future<TT;>;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3ConcurrentConcurrentUtils_ConstantFuture = { "ConstantFuture", "org.apache.commons.lang3.concurrent", ptrTable, methods, fields, 7, 0x18, 6, 1, 9, -1, -1, 10, -1 };
  return &_OrgApacheCommonsLang3ConcurrentConcurrentUtils_ConstantFuture;
}

@end

void OrgApacheCommonsLang3ConcurrentConcurrentUtils_ConstantFuture_initWithId_(OrgApacheCommonsLang3ConcurrentConcurrentUtils_ConstantFuture *self, id value) {
  NSObject_init(self);
  JreStrongAssign(&self->value_, value);
}

OrgApacheCommonsLang3ConcurrentConcurrentUtils_ConstantFuture *new_OrgApacheCommonsLang3ConcurrentConcurrentUtils_ConstantFuture_initWithId_(id value) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3ConcurrentConcurrentUtils_ConstantFuture, initWithId_, value)
}

OrgApacheCommonsLang3ConcurrentConcurrentUtils_ConstantFuture *create_OrgApacheCommonsLang3ConcurrentConcurrentUtils_ConstantFuture_initWithId_(id value) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3ConcurrentConcurrentUtils_ConstantFuture, initWithId_, value)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3ConcurrentConcurrentUtils_ConstantFuture)
