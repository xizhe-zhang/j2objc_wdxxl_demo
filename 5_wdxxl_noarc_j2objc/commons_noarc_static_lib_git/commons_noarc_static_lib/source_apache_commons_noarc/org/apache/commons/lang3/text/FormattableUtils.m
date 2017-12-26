//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/text/FormattableUtils.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Formattable.h"
#include "java/util/FormattableFlags.h"
#include "java/util/Formatter.h"
#include "org/apache/commons/lang3/ObjectUtils.h"
#include "org/apache/commons/lang3/StringUtils.h"
#include "org/apache/commons/lang3/Validate.h"
#include "org/apache/commons/lang3/text/FormattableUtils.h"

inline NSString *OrgApacheCommonsLang3TextFormattableUtils_get_SIMPLEST_FORMAT(void);
static NSString *OrgApacheCommonsLang3TextFormattableUtils_SIMPLEST_FORMAT = @"%s";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsLang3TextFormattableUtils, SIMPLEST_FORMAT, NSString *)

@implementation OrgApacheCommonsLang3TextFormattableUtils

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsLang3TextFormattableUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)toStringWithJavaUtilFormattable:(id<JavaUtilFormattable>)formattable {
  return OrgApacheCommonsLang3TextFormattableUtils_toStringWithJavaUtilFormattable_(formattable);
}

+ (JavaUtilFormatter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)seq
                                withJavaUtilFormatter:(JavaUtilFormatter *)formatter
                                              withInt:(jint)flags
                                              withInt:(jint)width
                                              withInt:(jint)precision {
  return OrgApacheCommonsLang3TextFormattableUtils_appendWithJavaLangCharSequence_withJavaUtilFormatter_withInt_withInt_withInt_(seq, formatter, flags, width, precision);
}

+ (JavaUtilFormatter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)seq
                                withJavaUtilFormatter:(JavaUtilFormatter *)formatter
                                              withInt:(jint)flags
                                              withInt:(jint)width
                                              withInt:(jint)precision
                                             withChar:(jchar)padChar {
  return OrgApacheCommonsLang3TextFormattableUtils_appendWithJavaLangCharSequence_withJavaUtilFormatter_withInt_withInt_withInt_withChar_(seq, formatter, flags, width, precision, padChar);
}

+ (JavaUtilFormatter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)seq
                                withJavaUtilFormatter:(JavaUtilFormatter *)formatter
                                              withInt:(jint)flags
                                              withInt:(jint)width
                                              withInt:(jint)precision
                             withJavaLangCharSequence:(id<JavaLangCharSequence>)ellipsis {
  return OrgApacheCommonsLang3TextFormattableUtils_appendWithJavaLangCharSequence_withJavaUtilFormatter_withInt_withInt_withInt_withJavaLangCharSequence_(seq, formatter, flags, width, precision, ellipsis);
}

+ (JavaUtilFormatter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)seq
                                withJavaUtilFormatter:(JavaUtilFormatter *)formatter
                                              withInt:(jint)flags
                                              withInt:(jint)width
                                              withInt:(jint)precision
                                             withChar:(jchar)padChar
                             withJavaLangCharSequence:(id<JavaLangCharSequence>)ellipsis {
  return OrgApacheCommonsLang3TextFormattableUtils_appendWithJavaLangCharSequence_withJavaUtilFormatter_withInt_withInt_withInt_withChar_withJavaLangCharSequence_(seq, formatter, flags, width, precision, padChar, ellipsis);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilFormatter;", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "LJavaUtilFormatter;", 0x9, 2, 4, -1, -1, -1, -1 },
    { NULL, "LJavaUtilFormatter;", 0x9, 2, 5, -1, -1, -1, -1 },
    { NULL, "LJavaUtilFormatter;", 0x9, 2, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(toStringWithJavaUtilFormattable:);
  methods[2].selector = @selector(appendWithJavaLangCharSequence:withJavaUtilFormatter:withInt:withInt:withInt:);
  methods[3].selector = @selector(appendWithJavaLangCharSequence:withJavaUtilFormatter:withInt:withInt:withInt:withChar:);
  methods[4].selector = @selector(appendWithJavaLangCharSequence:withJavaUtilFormatter:withInt:withInt:withInt:withJavaLangCharSequence:);
  methods[5].selector = @selector(appendWithJavaLangCharSequence:withJavaUtilFormatter:withInt:withInt:withInt:withChar:withJavaLangCharSequence:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "SIMPLEST_FORMAT", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 7, -1, -1 },
  };
  static const void *ptrTable[] = { "toString", "LJavaUtilFormattable;", "append", "LJavaLangCharSequence;LJavaUtilFormatter;III", "LJavaLangCharSequence;LJavaUtilFormatter;IIIC", "LJavaLangCharSequence;LJavaUtilFormatter;IIILJavaLangCharSequence;", "LJavaLangCharSequence;LJavaUtilFormatter;IIICLJavaLangCharSequence;", &OrgApacheCommonsLang3TextFormattableUtils_SIMPLEST_FORMAT };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3TextFormattableUtils = { "FormattableUtils", "org.apache.commons.lang3.text", ptrTable, methods, fields, 7, 0x1, 6, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsLang3TextFormattableUtils;
}

@end

void OrgApacheCommonsLang3TextFormattableUtils_init(OrgApacheCommonsLang3TextFormattableUtils *self) {
  NSObject_init(self);
}

OrgApacheCommonsLang3TextFormattableUtils *new_OrgApacheCommonsLang3TextFormattableUtils_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3TextFormattableUtils, init)
}

OrgApacheCommonsLang3TextFormattableUtils *create_OrgApacheCommonsLang3TextFormattableUtils_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3TextFormattableUtils, init)
}

NSString *OrgApacheCommonsLang3TextFormattableUtils_toStringWithJavaUtilFormattable_(id<JavaUtilFormattable> formattable) {
  OrgApacheCommonsLang3TextFormattableUtils_initialize();
  return NSString_java_formatWithNSString_withNSObjectArray_(OrgApacheCommonsLang3TextFormattableUtils_SIMPLEST_FORMAT, [IOSObjectArray arrayWithObjects:(id[]){ formattable } count:1 type:NSObject_class_()]);
}

JavaUtilFormatter *OrgApacheCommonsLang3TextFormattableUtils_appendWithJavaLangCharSequence_withJavaUtilFormatter_withInt_withInt_withInt_(id<JavaLangCharSequence> seq, JavaUtilFormatter *formatter, jint flags, jint width, jint precision) {
  OrgApacheCommonsLang3TextFormattableUtils_initialize();
  return OrgApacheCommonsLang3TextFormattableUtils_appendWithJavaLangCharSequence_withJavaUtilFormatter_withInt_withInt_withInt_withChar_withJavaLangCharSequence_(seq, formatter, flags, width, precision, ' ', nil);
}

JavaUtilFormatter *OrgApacheCommonsLang3TextFormattableUtils_appendWithJavaLangCharSequence_withJavaUtilFormatter_withInt_withInt_withInt_withChar_(id<JavaLangCharSequence> seq, JavaUtilFormatter *formatter, jint flags, jint width, jint precision, jchar padChar) {
  OrgApacheCommonsLang3TextFormattableUtils_initialize();
  return OrgApacheCommonsLang3TextFormattableUtils_appendWithJavaLangCharSequence_withJavaUtilFormatter_withInt_withInt_withInt_withChar_withJavaLangCharSequence_(seq, formatter, flags, width, precision, padChar, nil);
}

JavaUtilFormatter *OrgApacheCommonsLang3TextFormattableUtils_appendWithJavaLangCharSequence_withJavaUtilFormatter_withInt_withInt_withInt_withJavaLangCharSequence_(id<JavaLangCharSequence> seq, JavaUtilFormatter *formatter, jint flags, jint width, jint precision, id<JavaLangCharSequence> ellipsis) {
  OrgApacheCommonsLang3TextFormattableUtils_initialize();
  return OrgApacheCommonsLang3TextFormattableUtils_appendWithJavaLangCharSequence_withJavaUtilFormatter_withInt_withInt_withInt_withChar_withJavaLangCharSequence_(seq, formatter, flags, width, precision, ' ', ellipsis);
}

JavaUtilFormatter *OrgApacheCommonsLang3TextFormattableUtils_appendWithJavaLangCharSequence_withJavaUtilFormatter_withInt_withInt_withInt_withChar_withJavaLangCharSequence_(id<JavaLangCharSequence> seq, JavaUtilFormatter *formatter, jint flags, jint width, jint precision, jchar padChar, id<JavaLangCharSequence> ellipsis) {
  OrgApacheCommonsLang3TextFormattableUtils_initialize();
  OrgApacheCommonsLang3Validate_isTrueWithBoolean_withNSString_withNSObjectArray_(ellipsis == nil || precision < 0 || [ellipsis java_length] <= precision, @"Specified ellipsis '%1$s' exceeds precision of %2$s", [IOSObjectArray arrayWithObjects:(id[]){ ellipsis, JavaLangInteger_valueOfWithInt_(precision) } count:2 type:NSObject_class_()]);
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_initWithJavaLangCharSequence_(seq);
  if (precision >= 0 && precision < [((id<JavaLangCharSequence>) nil_chk(seq)) java_length]) {
    id<JavaLangCharSequence> _ellipsis = OrgApacheCommonsLang3ObjectUtils_defaultIfNullWithId_withId_(ellipsis, OrgApacheCommonsLang3StringUtils_EMPTY);
    [buf replaceWithInt:precision - [((id<JavaLangCharSequence>) nil_chk(_ellipsis)) java_length] withInt:[((id<JavaLangCharSequence>) nil_chk(seq)) java_length] withNSString:[_ellipsis description]];
  }
  jboolean leftJustify = (flags & JavaUtilFormattableFlags_LEFT_JUSTIFY) == JavaUtilFormattableFlags_LEFT_JUSTIFY;
  for (jint i = [buf java_length]; i < width; i++) {
    [buf insertWithInt:leftJustify ? i : 0 withChar:padChar];
  }
  [((JavaUtilFormatter *) nil_chk(formatter)) formatWithNSString:[buf description] withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:NSObject_class_()]];
  return formatter;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3TextFormattableUtils)
