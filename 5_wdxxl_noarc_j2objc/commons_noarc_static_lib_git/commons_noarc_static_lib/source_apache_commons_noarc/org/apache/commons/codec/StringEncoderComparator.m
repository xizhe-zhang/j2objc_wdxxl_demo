//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-codec-1.10-sources.jar!org/apache/commons/codec/StringEncoderComparator.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Comparable.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Comparator.h"
#include "java/util/function/Function.h"
#include "java/util/function/ToDoubleFunction.h"
#include "java/util/function/ToIntFunction.h"
#include "java/util/function/ToLongFunction.h"
#include "org/apache/commons/codec/EncoderException.h"
#include "org/apache/commons/codec/StringEncoder.h"
#include "org/apache/commons/codec/StringEncoderComparator.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheCommonsCodecStringEncoderComparator () {
 @public
  id<OrgApacheCommonsCodecStringEncoder> stringEncoder_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheCommonsCodecStringEncoderComparator, stringEncoder_, id<OrgApacheCommonsCodecStringEncoder>)

__attribute__((unused)) static IOSObjectArray *OrgApacheCommonsCodecStringEncoderComparator__Annotations$0(void);

@implementation OrgApacheCommonsCodecStringEncoderComparator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsCodecStringEncoderComparator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheCommonsCodecStringEncoder:(id<OrgApacheCommonsCodecStringEncoder>)stringEncoder {
  OrgApacheCommonsCodecStringEncoderComparator_initWithOrgApacheCommonsCodecStringEncoder_(self, stringEncoder);
  return self;
}

- (jint)compareWithId:(id)o1
               withId:(id)o2 {
  jint compareCode = 0;
  @try {
    id<JavaLangComparable> s1 = (id<JavaLangComparable>) cast_check([((id<OrgApacheCommonsCodecStringEncoder>) nil_chk(self->stringEncoder_)) encodeWithId:o1], JavaLangComparable_class_());
    id<JavaLangComparable> s2 = (id<JavaLangComparable>) cast_check([self->stringEncoder_ encodeWithId:o2], JavaLangComparable_class_());
    compareCode = [((id<JavaLangComparable>) nil_chk(s1)) compareToWithId:s2];
  }
  @catch (OrgApacheCommonsCodecEncoderException *ee) {
    compareCode = 0;
  }
  return compareCode;
}

- (id<JavaUtilComparator>)reversed {
  return JavaUtilComparator_reversed(self);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilComparator:(id<JavaUtilComparator>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilComparator_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0
                                             withJavaUtilComparator:(id<JavaUtilComparator>)arg1 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_withJavaUtilComparator_(self, arg0, arg1);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingIntWithJavaUtilFunctionToIntFunction:(id<JavaUtilFunctionToIntFunction>)arg0 {
  return JavaUtilComparator_thenComparingIntWithJavaUtilFunctionToIntFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingLongWithJavaUtilFunctionToLongFunction:(id<JavaUtilFunctionToLongFunction>)arg0 {
  return JavaUtilComparator_thenComparingLongWithJavaUtilFunctionToLongFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingDoubleWithJavaUtilFunctionToDoubleFunction:(id<JavaUtilFunctionToDoubleFunction>)arg0 {
  return JavaUtilComparator_thenComparingDoubleWithJavaUtilFunctionToDoubleFunction_(self, arg0);
}

- (void)dealloc {
  RELEASE_(stringEncoder_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, 0, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithOrgApacheCommonsCodecStringEncoder:);
  methods[2].selector = @selector(compareWithId:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "stringEncoder_", "LOrgApacheCommonsCodecStringEncoder;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { (void *)&OrgApacheCommonsCodecStringEncoderComparator__Annotations$0, "LOrgApacheCommonsCodecStringEncoder;", "compare", "LNSObject;LNSObject;" };
  static const J2ObjcClassInfo _OrgApacheCommonsCodecStringEncoderComparator = { "StringEncoderComparator", "org.apache.commons.codec", ptrTable, methods, fields, 7, 0x1, 3, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsCodecStringEncoderComparator;
}

@end

void OrgApacheCommonsCodecStringEncoderComparator_init(OrgApacheCommonsCodecStringEncoderComparator *self) {
  NSObject_init(self);
  JreStrongAssign(&self->stringEncoder_, nil);
}

OrgApacheCommonsCodecStringEncoderComparator *new_OrgApacheCommonsCodecStringEncoderComparator_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecStringEncoderComparator, init)
}

OrgApacheCommonsCodecStringEncoderComparator *create_OrgApacheCommonsCodecStringEncoderComparator_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecStringEncoderComparator, init)
}

void OrgApacheCommonsCodecStringEncoderComparator_initWithOrgApacheCommonsCodecStringEncoder_(OrgApacheCommonsCodecStringEncoderComparator *self, id<OrgApacheCommonsCodecStringEncoder> stringEncoder) {
  NSObject_init(self);
  JreStrongAssign(&self->stringEncoder_, stringEncoder);
}

OrgApacheCommonsCodecStringEncoderComparator *new_OrgApacheCommonsCodecStringEncoderComparator_initWithOrgApacheCommonsCodecStringEncoder_(id<OrgApacheCommonsCodecStringEncoder> stringEncoder) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecStringEncoderComparator, initWithOrgApacheCommonsCodecStringEncoder_, stringEncoder)
}

OrgApacheCommonsCodecStringEncoderComparator *create_OrgApacheCommonsCodecStringEncoderComparator_initWithOrgApacheCommonsCodecStringEncoder_(id<OrgApacheCommonsCodecStringEncoder> stringEncoder) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecStringEncoderComparator, initWithOrgApacheCommonsCodecStringEncoder_, stringEncoder)
}

IOSObjectArray *OrgApacheCommonsCodecStringEncoderComparator__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsCodecStringEncoderComparator)
