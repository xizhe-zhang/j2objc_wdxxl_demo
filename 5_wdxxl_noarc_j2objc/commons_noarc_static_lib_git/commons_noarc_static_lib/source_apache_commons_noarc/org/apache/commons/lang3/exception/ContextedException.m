//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/exception/ContextedException.java
//

#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/Throwable.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "org/apache/commons/lang3/exception/ContextedException.h"
#include "org/apache/commons/lang3/exception/DefaultExceptionContext.h"
#include "org/apache/commons/lang3/exception/ExceptionContext.h"

@interface OrgApacheCommonsLang3ExceptionContextedException () {
 @public
  id<OrgApacheCommonsLang3ExceptionExceptionContext> exceptionContext_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3ExceptionContextedException, exceptionContext_, id<OrgApacheCommonsLang3ExceptionExceptionContext>)

inline jlong OrgApacheCommonsLang3ExceptionContextedException_get_serialVersionUID(void);
#define OrgApacheCommonsLang3ExceptionContextedException_serialVersionUID 20110706LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3ExceptionContextedException, serialVersionUID, jlong)

@implementation OrgApacheCommonsLang3ExceptionContextedException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsLang3ExceptionContextedException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)message {
  OrgApacheCommonsLang3ExceptionContextedException_initWithNSString_(self, message);
  return self;
}

- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)cause {
  OrgApacheCommonsLang3ExceptionContextedException_initWithJavaLangThrowable_(self, cause);
  return self;
}

- (instancetype)initWithNSString:(NSString *)message
           withJavaLangThrowable:(JavaLangThrowable *)cause {
  OrgApacheCommonsLang3ExceptionContextedException_initWithNSString_withJavaLangThrowable_(self, message, cause);
  return self;
}

- (instancetype)initWithNSString:(NSString *)message
           withJavaLangThrowable:(JavaLangThrowable *)cause
withOrgApacheCommonsLang3ExceptionExceptionContext:(id<OrgApacheCommonsLang3ExceptionExceptionContext>)context {
  OrgApacheCommonsLang3ExceptionContextedException_initWithNSString_withJavaLangThrowable_withOrgApacheCommonsLang3ExceptionExceptionContext_(self, message, cause, context);
  return self;
}

- (OrgApacheCommonsLang3ExceptionContextedException *)addContextValueWithNSString:(NSString *)label
                                                                           withId:(id)value {
  [((id<OrgApacheCommonsLang3ExceptionExceptionContext>) nil_chk(exceptionContext_)) addContextValueWithNSString:label withId:value];
  return self;
}

- (OrgApacheCommonsLang3ExceptionContextedException *)setContextValueWithNSString:(NSString *)label
                                                                           withId:(id)value {
  [((id<OrgApacheCommonsLang3ExceptionExceptionContext>) nil_chk(exceptionContext_)) setContextValueWithNSString:label withId:value];
  return self;
}

- (id<JavaUtilList>)getContextValuesWithNSString:(NSString *)label {
  return [((id<OrgApacheCommonsLang3ExceptionExceptionContext>) nil_chk(self->exceptionContext_)) getContextValuesWithNSString:label];
}

- (id)getFirstContextValueWithNSString:(NSString *)label {
  return [((id<OrgApacheCommonsLang3ExceptionExceptionContext>) nil_chk(self->exceptionContext_)) getFirstContextValueWithNSString:label];
}

- (id<JavaUtilList>)getContextEntries {
  return [((id<OrgApacheCommonsLang3ExceptionExceptionContext>) nil_chk(self->exceptionContext_)) getContextEntries];
}

- (id<JavaUtilSet>)getContextLabels {
  return [((id<OrgApacheCommonsLang3ExceptionExceptionContext>) nil_chk(exceptionContext_)) getContextLabels];
}

- (NSString *)getMessage {
  return [self getFormattedExceptionMessageWithNSString:[super getMessage]];
}

- (NSString *)getRawMessage {
  return [super getMessage];
}

- (NSString *)getFormattedExceptionMessageWithNSString:(NSString *)baseMessage {
  return [((id<OrgApacheCommonsLang3ExceptionExceptionContext>) nil_chk(exceptionContext_)) getFormattedExceptionMessageWithNSString:baseMessage];
}

- (void)dealloc {
  RELEASE_(exceptionContext_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3ExceptionContextedException;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3ExceptionContextedException;", 0x1, 6, 5, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, 7, 0, -1, 8, -1, -1 },
    { NULL, "LNSObject;", 0x1, 9, 0, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 10, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 11, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 12, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(initWithJavaLangThrowable:);
  methods[3].selector = @selector(initWithNSString:withJavaLangThrowable:);
  methods[4].selector = @selector(initWithNSString:withJavaLangThrowable:withOrgApacheCommonsLang3ExceptionExceptionContext:);
  methods[5].selector = @selector(addContextValueWithNSString:withId:);
  methods[6].selector = @selector(setContextValueWithNSString:withId:);
  methods[7].selector = @selector(getContextValuesWithNSString:);
  methods[8].selector = @selector(getFirstContextValueWithNSString:);
  methods[9].selector = @selector(getContextEntries);
  methods[10].selector = @selector(getContextLabels);
  methods[11].selector = @selector(getMessage);
  methods[12].selector = @selector(getRawMessage);
  methods[13].selector = @selector(getFormattedExceptionMessageWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgApacheCommonsLang3ExceptionContextedException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "exceptionContext_", "LOrgApacheCommonsLang3ExceptionExceptionContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LJavaLangThrowable;", "LNSString;LJavaLangThrowable;", "LNSString;LJavaLangThrowable;LOrgApacheCommonsLang3ExceptionExceptionContext;", "addContextValue", "LNSString;LNSObject;", "setContextValue", "getContextValues", "(Ljava/lang/String;)Ljava/util/List<Ljava/lang/Object;>;", "getFirstContextValue", "()Ljava/util/List<Lorg/apache/commons/lang3/tuple/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;", "()Ljava/util/Set<Ljava/lang/String;>;", "getFormattedExceptionMessage" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3ExceptionContextedException = { "ContextedException", "org.apache.commons.lang3.exception", ptrTable, methods, fields, 7, 0x1, 14, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsLang3ExceptionContextedException;
}

@end

void OrgApacheCommonsLang3ExceptionContextedException_init(OrgApacheCommonsLang3ExceptionContextedException *self) {
  JavaLangException_init(self);
  JreStrongAssignAndConsume(&self->exceptionContext_, new_OrgApacheCommonsLang3ExceptionDefaultExceptionContext_init());
}

OrgApacheCommonsLang3ExceptionContextedException *new_OrgApacheCommonsLang3ExceptionContextedException_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3ExceptionContextedException, init)
}

OrgApacheCommonsLang3ExceptionContextedException *create_OrgApacheCommonsLang3ExceptionContextedException_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3ExceptionContextedException, init)
}

void OrgApacheCommonsLang3ExceptionContextedException_initWithNSString_(OrgApacheCommonsLang3ExceptionContextedException *self, NSString *message) {
  JavaLangException_initWithNSString_(self, message);
  JreStrongAssignAndConsume(&self->exceptionContext_, new_OrgApacheCommonsLang3ExceptionDefaultExceptionContext_init());
}

OrgApacheCommonsLang3ExceptionContextedException *new_OrgApacheCommonsLang3ExceptionContextedException_initWithNSString_(NSString *message) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3ExceptionContextedException, initWithNSString_, message)
}

OrgApacheCommonsLang3ExceptionContextedException *create_OrgApacheCommonsLang3ExceptionContextedException_initWithNSString_(NSString *message) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3ExceptionContextedException, initWithNSString_, message)
}

void OrgApacheCommonsLang3ExceptionContextedException_initWithJavaLangThrowable_(OrgApacheCommonsLang3ExceptionContextedException *self, JavaLangThrowable *cause) {
  JavaLangException_initWithJavaLangThrowable_(self, cause);
  JreStrongAssignAndConsume(&self->exceptionContext_, new_OrgApacheCommonsLang3ExceptionDefaultExceptionContext_init());
}

OrgApacheCommonsLang3ExceptionContextedException *new_OrgApacheCommonsLang3ExceptionContextedException_initWithJavaLangThrowable_(JavaLangThrowable *cause) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3ExceptionContextedException, initWithJavaLangThrowable_, cause)
}

OrgApacheCommonsLang3ExceptionContextedException *create_OrgApacheCommonsLang3ExceptionContextedException_initWithJavaLangThrowable_(JavaLangThrowable *cause) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3ExceptionContextedException, initWithJavaLangThrowable_, cause)
}

void OrgApacheCommonsLang3ExceptionContextedException_initWithNSString_withJavaLangThrowable_(OrgApacheCommonsLang3ExceptionContextedException *self, NSString *message, JavaLangThrowable *cause) {
  JavaLangException_initWithNSString_withJavaLangThrowable_(self, message, cause);
  JreStrongAssignAndConsume(&self->exceptionContext_, new_OrgApacheCommonsLang3ExceptionDefaultExceptionContext_init());
}

OrgApacheCommonsLang3ExceptionContextedException *new_OrgApacheCommonsLang3ExceptionContextedException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3ExceptionContextedException, initWithNSString_withJavaLangThrowable_, message, cause)
}

OrgApacheCommonsLang3ExceptionContextedException *create_OrgApacheCommonsLang3ExceptionContextedException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3ExceptionContextedException, initWithNSString_withJavaLangThrowable_, message, cause)
}

void OrgApacheCommonsLang3ExceptionContextedException_initWithNSString_withJavaLangThrowable_withOrgApacheCommonsLang3ExceptionExceptionContext_(OrgApacheCommonsLang3ExceptionContextedException *self, NSString *message, JavaLangThrowable *cause, id<OrgApacheCommonsLang3ExceptionExceptionContext> context) {
  JavaLangException_initWithNSString_withJavaLangThrowable_(self, message, cause);
  if (context == nil) {
    context = create_OrgApacheCommonsLang3ExceptionDefaultExceptionContext_init();
  }
  JreStrongAssign(&self->exceptionContext_, context);
}

OrgApacheCommonsLang3ExceptionContextedException *new_OrgApacheCommonsLang3ExceptionContextedException_initWithNSString_withJavaLangThrowable_withOrgApacheCommonsLang3ExceptionExceptionContext_(NSString *message, JavaLangThrowable *cause, id<OrgApacheCommonsLang3ExceptionExceptionContext> context) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3ExceptionContextedException, initWithNSString_withJavaLangThrowable_withOrgApacheCommonsLang3ExceptionExceptionContext_, message, cause, context)
}

OrgApacheCommonsLang3ExceptionContextedException *create_OrgApacheCommonsLang3ExceptionContextedException_initWithNSString_withJavaLangThrowable_withOrgApacheCommonsLang3ExceptionExceptionContext_(NSString *message, JavaLangThrowable *cause, id<OrgApacheCommonsLang3ExceptionExceptionContext> context) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3ExceptionContextedException, initWithNSString_withJavaLangThrowable_withOrgApacheCommonsLang3ExceptionExceptionContext_, message, cause, context)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3ExceptionContextedException)
