//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/util/Version.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/util/Version.h"

__attribute__((unused)) static void OrgApacheLuceneUtilVersion_initWithNSString_withInt_(OrgApacheLuceneUtilVersion *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static OrgApacheLuceneUtilVersion *new_OrgApacheLuceneUtilVersion_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilVersion__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilVersion__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilVersion__Annotations$2(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilVersion__Annotations$3(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilVersion__Annotations$4(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilVersion__Annotations$5(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilVersion__Annotations$6(void);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilVersion)

OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_values_[13];

@implementation OrgApacheLuceneUtilVersion

- (jboolean)onOrAfterWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)other {
  return [self compareToWithId:other] >= 0;
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneUtilVersion_values();
}

+ (OrgApacheLuceneUtilVersion *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneUtilVersion_valueOfWithNSString_(name);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "[LOrgApacheLuceneUtilVersion;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilVersion;", 0x9, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(onOrAfterWithOrgApacheLuceneUtilVersion:);
  methods[1].selector = @selector(values);
  methods[2].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "LUCENE_20", "LOrgApacheLuceneUtilVersion;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, 5 },
    { "LUCENE_21", "LOrgApacheLuceneUtilVersion;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, 7 },
    { "LUCENE_22", "LOrgApacheLuceneUtilVersion;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, 9 },
    { "LUCENE_23", "LOrgApacheLuceneUtilVersion;", .constantValue.asLong = 0, 0x4019, -1, 10, -1, 11 },
    { "LUCENE_24", "LOrgApacheLuceneUtilVersion;", .constantValue.asLong = 0, 0x4019, -1, 12, -1, 13 },
    { "LUCENE_29", "LOrgApacheLuceneUtilVersion;", .constantValue.asLong = 0, 0x4019, -1, 14, -1, 15 },
    { "LUCENE_30", "LOrgApacheLuceneUtilVersion;", .constantValue.asLong = 0, 0x4019, -1, 16, -1, -1 },
    { "LUCENE_31", "LOrgApacheLuceneUtilVersion;", .constantValue.asLong = 0, 0x4019, -1, 17, -1, -1 },
    { "LUCENE_32", "LOrgApacheLuceneUtilVersion;", .constantValue.asLong = 0, 0x4019, -1, 18, -1, -1 },
    { "LUCENE_33", "LOrgApacheLuceneUtilVersion;", .constantValue.asLong = 0, 0x4019, -1, 19, -1, -1 },
    { "LUCENE_34", "LOrgApacheLuceneUtilVersion;", .constantValue.asLong = 0, 0x4019, -1, 20, -1, -1 },
    { "LUCENE_35", "LOrgApacheLuceneUtilVersion;", .constantValue.asLong = 0, 0x4019, -1, 21, -1, -1 },
    { "LUCENE_CURRENT", "LOrgApacheLuceneUtilVersion;", .constantValue.asLong = 0, 0x4019, -1, 22, -1, 23 },
  };
  static const void *ptrTable[] = { "onOrAfter", "LOrgApacheLuceneUtilVersion;", "valueOf", "LNSString;", &JreEnum(OrgApacheLuceneUtilVersion, LUCENE_20), (void *)&OrgApacheLuceneUtilVersion__Annotations$0, &JreEnum(OrgApacheLuceneUtilVersion, LUCENE_21), (void *)&OrgApacheLuceneUtilVersion__Annotations$1, &JreEnum(OrgApacheLuceneUtilVersion, LUCENE_22), (void *)&OrgApacheLuceneUtilVersion__Annotations$2, &JreEnum(OrgApacheLuceneUtilVersion, LUCENE_23), (void *)&OrgApacheLuceneUtilVersion__Annotations$3, &JreEnum(OrgApacheLuceneUtilVersion, LUCENE_24), (void *)&OrgApacheLuceneUtilVersion__Annotations$4, &JreEnum(OrgApacheLuceneUtilVersion, LUCENE_29), (void *)&OrgApacheLuceneUtilVersion__Annotations$5, &JreEnum(OrgApacheLuceneUtilVersion, LUCENE_30), &JreEnum(OrgApacheLuceneUtilVersion, LUCENE_31), &JreEnum(OrgApacheLuceneUtilVersion, LUCENE_32), &JreEnum(OrgApacheLuceneUtilVersion, LUCENE_33), &JreEnum(OrgApacheLuceneUtilVersion, LUCENE_34), &JreEnum(OrgApacheLuceneUtilVersion, LUCENE_35), &JreEnum(OrgApacheLuceneUtilVersion, LUCENE_CURRENT), (void *)&OrgApacheLuceneUtilVersion__Annotations$6, "Ljava/lang/Enum<Lorg/apache/lucene/util/Version;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilVersion = { "Version", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x4011, 3, 13, -1, -1, -1, 24, -1 };
  return &_OrgApacheLuceneUtilVersion;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilVersion class]) {
    JreEnum(OrgApacheLuceneUtilVersion, LUCENE_20) = new_OrgApacheLuceneUtilVersion_initWithNSString_withInt_(@"", 0);
    JreEnum(OrgApacheLuceneUtilVersion, LUCENE_21) = new_OrgApacheLuceneUtilVersion_initWithNSString_withInt_(@"", 1);
    JreEnum(OrgApacheLuceneUtilVersion, LUCENE_22) = new_OrgApacheLuceneUtilVersion_initWithNSString_withInt_(@"", 2);
    JreEnum(OrgApacheLuceneUtilVersion, LUCENE_23) = new_OrgApacheLuceneUtilVersion_initWithNSString_withInt_(@"", 3);
    JreEnum(OrgApacheLuceneUtilVersion, LUCENE_24) = new_OrgApacheLuceneUtilVersion_initWithNSString_withInt_(@"", 4);
    JreEnum(OrgApacheLuceneUtilVersion, LUCENE_29) = new_OrgApacheLuceneUtilVersion_initWithNSString_withInt_(@"", 5);
    JreEnum(OrgApacheLuceneUtilVersion, LUCENE_30) = new_OrgApacheLuceneUtilVersion_initWithNSString_withInt_(@"", 6);
    JreEnum(OrgApacheLuceneUtilVersion, LUCENE_31) = new_OrgApacheLuceneUtilVersion_initWithNSString_withInt_(@"", 7);
    JreEnum(OrgApacheLuceneUtilVersion, LUCENE_32) = new_OrgApacheLuceneUtilVersion_initWithNSString_withInt_(@"", 8);
    JreEnum(OrgApacheLuceneUtilVersion, LUCENE_33) = new_OrgApacheLuceneUtilVersion_initWithNSString_withInt_(@"", 9);
    JreEnum(OrgApacheLuceneUtilVersion, LUCENE_34) = new_OrgApacheLuceneUtilVersion_initWithNSString_withInt_(@"", 10);
    JreEnum(OrgApacheLuceneUtilVersion, LUCENE_35) = new_OrgApacheLuceneUtilVersion_initWithNSString_withInt_(@"", 11);
    JreEnum(OrgApacheLuceneUtilVersion, LUCENE_CURRENT) = new_OrgApacheLuceneUtilVersion_initWithNSString_withInt_(@"", 12);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilVersion)
  }
}

@end

void OrgApacheLuceneUtilVersion_initWithNSString_withInt_(OrgApacheLuceneUtilVersion *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

OrgApacheLuceneUtilVersion *new_OrgApacheLuceneUtilVersion_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilVersion, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *OrgApacheLuceneUtilVersion_values() {
  OrgApacheLuceneUtilVersion_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneUtilVersion_values_ count:13 type:OrgApacheLuceneUtilVersion_class_()];
}

OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneUtilVersion_initialize();
  for (int i = 0; i < 13; i++) {
    OrgApacheLuceneUtilVersion *e = OrgApacheLuceneUtilVersion_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_fromOrdinal(NSUInteger ordinal) {
  OrgApacheLuceneUtilVersion_initialize();
  if (ordinal >= 13) {
    return nil;
  }
  return OrgApacheLuceneUtilVersion_values_[ordinal];
}

IOSObjectArray *OrgApacheLuceneUtilVersion__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneUtilVersion__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneUtilVersion__Annotations$2() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneUtilVersion__Annotations$3() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneUtilVersion__Annotations$4() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneUtilVersion__Annotations$5() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneUtilVersion__Annotations$6() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilVersion)
