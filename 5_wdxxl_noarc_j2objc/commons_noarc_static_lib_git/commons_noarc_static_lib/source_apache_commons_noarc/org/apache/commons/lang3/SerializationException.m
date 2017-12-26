//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/SerializationException.java
//

#include "J2ObjC_source.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Throwable.h"
#include "org/apache/commons/lang3/SerializationException.h"

inline jlong OrgApacheCommonsLang3SerializationException_get_serialVersionUID(void);
#define OrgApacheCommonsLang3SerializationException_serialVersionUID 4029025366392702726LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3SerializationException, serialVersionUID, jlong)

@implementation OrgApacheCommonsLang3SerializationException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsLang3SerializationException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)msg {
  OrgApacheCommonsLang3SerializationException_initWithNSString_(self, msg);
  return self;
}

- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)cause {
  OrgApacheCommonsLang3SerializationException_initWithJavaLangThrowable_(self, cause);
  return self;
}

- (instancetype)initWithNSString:(NSString *)msg
           withJavaLangThrowable:(JavaLangThrowable *)cause {
  OrgApacheCommonsLang3SerializationException_initWithNSString_withJavaLangThrowable_(self, msg, cause);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(initWithJavaLangThrowable:);
  methods[3].selector = @selector(initWithNSString:withJavaLangThrowable:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgApacheCommonsLang3SerializationException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LJavaLangThrowable;", "LNSString;LJavaLangThrowable;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3SerializationException = { "SerializationException", "org.apache.commons.lang3", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsLang3SerializationException;
}

@end

void OrgApacheCommonsLang3SerializationException_init(OrgApacheCommonsLang3SerializationException *self) {
  JavaLangRuntimeException_init(self);
}

OrgApacheCommonsLang3SerializationException *new_OrgApacheCommonsLang3SerializationException_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3SerializationException, init)
}

OrgApacheCommonsLang3SerializationException *create_OrgApacheCommonsLang3SerializationException_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3SerializationException, init)
}

void OrgApacheCommonsLang3SerializationException_initWithNSString_(OrgApacheCommonsLang3SerializationException *self, NSString *msg) {
  JavaLangRuntimeException_initWithNSString_(self, msg);
}

OrgApacheCommonsLang3SerializationException *new_OrgApacheCommonsLang3SerializationException_initWithNSString_(NSString *msg) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3SerializationException, initWithNSString_, msg)
}

OrgApacheCommonsLang3SerializationException *create_OrgApacheCommonsLang3SerializationException_initWithNSString_(NSString *msg) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3SerializationException, initWithNSString_, msg)
}

void OrgApacheCommonsLang3SerializationException_initWithJavaLangThrowable_(OrgApacheCommonsLang3SerializationException *self, JavaLangThrowable *cause) {
  JavaLangRuntimeException_initWithJavaLangThrowable_(self, cause);
}

OrgApacheCommonsLang3SerializationException *new_OrgApacheCommonsLang3SerializationException_initWithJavaLangThrowable_(JavaLangThrowable *cause) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3SerializationException, initWithJavaLangThrowable_, cause)
}

OrgApacheCommonsLang3SerializationException *create_OrgApacheCommonsLang3SerializationException_initWithJavaLangThrowable_(JavaLangThrowable *cause) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3SerializationException, initWithJavaLangThrowable_, cause)
}

void OrgApacheCommonsLang3SerializationException_initWithNSString_withJavaLangThrowable_(OrgApacheCommonsLang3SerializationException *self, NSString *msg, JavaLangThrowable *cause) {
  JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(self, msg, cause);
}

OrgApacheCommonsLang3SerializationException *new_OrgApacheCommonsLang3SerializationException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *cause) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3SerializationException, initWithNSString_withJavaLangThrowable_, msg, cause)
}

OrgApacheCommonsLang3SerializationException *create_OrgApacheCommonsLang3SerializationException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *cause) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3SerializationException, initWithNSString_withJavaLangThrowable_, msg, cause)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3SerializationException)
