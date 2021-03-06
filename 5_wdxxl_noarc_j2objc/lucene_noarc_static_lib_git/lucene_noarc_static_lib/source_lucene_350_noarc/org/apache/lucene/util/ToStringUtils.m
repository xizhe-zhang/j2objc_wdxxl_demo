//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/ToStringUtils.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/util/ToStringUtils.h"

@interface OrgApacheLuceneUtilToStringUtils ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneUtilToStringUtils_init(OrgApacheLuceneUtilToStringUtils *self);

__attribute__((unused)) static OrgApacheLuceneUtilToStringUtils *new_OrgApacheLuceneUtilToStringUtils_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilToStringUtils *create_OrgApacheLuceneUtilToStringUtils_init(void);

@implementation OrgApacheLuceneUtilToStringUtils

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilToStringUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)boostWithFloat:(jfloat)boost {
  return OrgApacheLuceneUtilToStringUtils_boostWithFloat_(boost);
}

+ (void)byteArrayWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer
                             withByteArray:(IOSByteArray *)bytes {
  OrgApacheLuceneUtilToStringUtils_byteArrayWithJavaLangStringBuilder_withByteArray_(buffer, bytes);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(boostWithFloat:);
  methods[2].selector = @selector(byteArrayWithJavaLangStringBuilder:withByteArray:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "boost", "F", "byteArray", "LJavaLangStringBuilder;[B" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilToStringUtils = { "ToStringUtils", "org.apache.lucene.util", ptrTable, methods, NULL, 7, 0x11, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilToStringUtils;
}

@end

void OrgApacheLuceneUtilToStringUtils_init(OrgApacheLuceneUtilToStringUtils *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilToStringUtils *new_OrgApacheLuceneUtilToStringUtils_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilToStringUtils, init)
}

OrgApacheLuceneUtilToStringUtils *create_OrgApacheLuceneUtilToStringUtils_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilToStringUtils, init)
}

NSString *OrgApacheLuceneUtilToStringUtils_boostWithFloat_(jfloat boost) {
  OrgApacheLuceneUtilToStringUtils_initialize();
  if (boost != 1.0f) {
    return JreStrcat("C$", '^', JavaLangFloat_toStringWithFloat_(boost));
  }
  else return @"";
}

void OrgApacheLuceneUtilToStringUtils_byteArrayWithJavaLangStringBuilder_withByteArray_(JavaLangStringBuilder *buffer, IOSByteArray *bytes) {
  OrgApacheLuceneUtilToStringUtils_initialize();
  for (jint i = 0; i < ((IOSByteArray *) nil_chk(bytes))->size_; i++) {
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(buffer)) appendWithNSString:@"b["])) appendWithInt:i])) appendWithNSString:@"]="])) appendWithInt:IOSByteArray_Get(bytes, i)];
    if (i < bytes->size_ - 1) {
      [buffer appendWithChar:','];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilToStringUtils)
