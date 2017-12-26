//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/time/FastDateFormat.java
//

#include "J2ObjC_source.h"
#include "java/lang/StringBuffer.h"
#include "java/text/FieldPosition.h"
#include "java/text/Format.h"
#include "java/text/ParsePosition.h"
#include "java/util/Calendar.h"
#include "java/util/Date.h"
#include "java/util/Locale.h"
#include "java/util/TimeZone.h"
#include "org/apache/commons/lang3/time/FastDateFormat.h"
#include "org/apache/commons/lang3/time/FastDateParser.h"
#include "org/apache/commons/lang3/time/FastDatePrinter.h"
#include "org/apache/commons/lang3/time/FormatCache.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgApacheCommonsLang3TimeFastDateFormat () {
 @public
  OrgApacheCommonsLang3TimeFastDatePrinter *printer_;
  OrgApacheCommonsLang3TimeFastDateParser *parser_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3TimeFastDateFormat, printer_, OrgApacheCommonsLang3TimeFastDatePrinter *)
J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3TimeFastDateFormat, parser_, OrgApacheCommonsLang3TimeFastDateParser *)

inline jlong OrgApacheCommonsLang3TimeFastDateFormat_get_serialVersionUID(void);
#define OrgApacheCommonsLang3TimeFastDateFormat_serialVersionUID 2LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3TimeFastDateFormat, serialVersionUID, jlong)

inline OrgApacheCommonsLang3TimeFormatCache *OrgApacheCommonsLang3TimeFastDateFormat_get_cache(void);
static OrgApacheCommonsLang3TimeFormatCache *OrgApacheCommonsLang3TimeFastDateFormat_cache;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsLang3TimeFastDateFormat, cache, OrgApacheCommonsLang3TimeFormatCache *)

@interface OrgApacheCommonsLang3TimeFastDateFormat_1 : OrgApacheCommonsLang3TimeFormatCache

- (instancetype)init;

- (OrgApacheCommonsLang3TimeFastDateFormat *)createInstanceWithNSString:(NSString *)pattern
                                                   withJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone
                                                     withJavaUtilLocale:(JavaUtilLocale *)locale;

- (OrgApacheCommonsLang3TimeFastDateFormat *)getDateInstanceWithInt:(jint)arg0
                                               withJavaUtilTimeZone:(JavaUtilTimeZone *)arg1
                                                 withJavaUtilLocale:(JavaUtilLocale *)arg2;

- (OrgApacheCommonsLang3TimeFastDateFormat *)getTimeInstanceWithInt:(jint)arg0
                                               withJavaUtilTimeZone:(JavaUtilTimeZone *)arg1
                                                 withJavaUtilLocale:(JavaUtilLocale *)arg2;

- (OrgApacheCommonsLang3TimeFastDateFormat *)getInstanceWithNSString:(NSString *)arg0
                                                withJavaUtilTimeZone:(JavaUtilTimeZone *)arg1
                                                  withJavaUtilLocale:(JavaUtilLocale *)arg2;

- (OrgApacheCommonsLang3TimeFastDateFormat *)getInstance;

- (OrgApacheCommonsLang3TimeFastDateFormat *)getDateTimeInstanceWithInt:(jint)arg0
                                                                withInt:(jint)arg1
                                                   withJavaUtilTimeZone:(JavaUtilTimeZone *)arg2
                                                     withJavaUtilLocale:(JavaUtilLocale *)arg3;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheCommonsLang3TimeFastDateFormat_1)

__attribute__((unused)) static void OrgApacheCommonsLang3TimeFastDateFormat_1_init(OrgApacheCommonsLang3TimeFastDateFormat_1 *self);

__attribute__((unused)) static OrgApacheCommonsLang3TimeFastDateFormat_1 *new_OrgApacheCommonsLang3TimeFastDateFormat_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheCommonsLang3TimeFastDateFormat_1 *create_OrgApacheCommonsLang3TimeFastDateFormat_1_init(void);

J2OBJC_INITIALIZED_DEFN(OrgApacheCommonsLang3TimeFastDateFormat)

@implementation OrgApacheCommonsLang3TimeFastDateFormat

+ (OrgApacheCommonsLang3TimeFastDateFormat *)getInstance {
  return OrgApacheCommonsLang3TimeFastDateFormat_getInstance();
}

+ (OrgApacheCommonsLang3TimeFastDateFormat *)getInstanceWithNSString:(NSString *)pattern {
  return OrgApacheCommonsLang3TimeFastDateFormat_getInstanceWithNSString_(pattern);
}

+ (OrgApacheCommonsLang3TimeFastDateFormat *)getInstanceWithNSString:(NSString *)pattern
                                                withJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone {
  return OrgApacheCommonsLang3TimeFastDateFormat_getInstanceWithNSString_withJavaUtilTimeZone_(pattern, timeZone);
}

+ (OrgApacheCommonsLang3TimeFastDateFormat *)getInstanceWithNSString:(NSString *)pattern
                                                  withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheCommonsLang3TimeFastDateFormat_getInstanceWithNSString_withJavaUtilLocale_(pattern, locale);
}

+ (OrgApacheCommonsLang3TimeFastDateFormat *)getInstanceWithNSString:(NSString *)pattern
                                                withJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone
                                                  withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheCommonsLang3TimeFastDateFormat_getInstanceWithNSString_withJavaUtilTimeZone_withJavaUtilLocale_(pattern, timeZone, locale);
}

+ (OrgApacheCommonsLang3TimeFastDateFormat *)getDateInstanceWithInt:(jint)style {
  return OrgApacheCommonsLang3TimeFastDateFormat_getDateInstanceWithInt_(style);
}

+ (OrgApacheCommonsLang3TimeFastDateFormat *)getDateInstanceWithInt:(jint)style
                                                 withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheCommonsLang3TimeFastDateFormat_getDateInstanceWithInt_withJavaUtilLocale_(style, locale);
}

+ (OrgApacheCommonsLang3TimeFastDateFormat *)getDateInstanceWithInt:(jint)style
                                               withJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone {
  return OrgApacheCommonsLang3TimeFastDateFormat_getDateInstanceWithInt_withJavaUtilTimeZone_(style, timeZone);
}

+ (OrgApacheCommonsLang3TimeFastDateFormat *)getDateInstanceWithInt:(jint)style
                                               withJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone
                                                 withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheCommonsLang3TimeFastDateFormat_getDateInstanceWithInt_withJavaUtilTimeZone_withJavaUtilLocale_(style, timeZone, locale);
}

+ (OrgApacheCommonsLang3TimeFastDateFormat *)getTimeInstanceWithInt:(jint)style {
  return OrgApacheCommonsLang3TimeFastDateFormat_getTimeInstanceWithInt_(style);
}

+ (OrgApacheCommonsLang3TimeFastDateFormat *)getTimeInstanceWithInt:(jint)style
                                                 withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheCommonsLang3TimeFastDateFormat_getTimeInstanceWithInt_withJavaUtilLocale_(style, locale);
}

+ (OrgApacheCommonsLang3TimeFastDateFormat *)getTimeInstanceWithInt:(jint)style
                                               withJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone {
  return OrgApacheCommonsLang3TimeFastDateFormat_getTimeInstanceWithInt_withJavaUtilTimeZone_(style, timeZone);
}

+ (OrgApacheCommonsLang3TimeFastDateFormat *)getTimeInstanceWithInt:(jint)style
                                               withJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone
                                                 withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheCommonsLang3TimeFastDateFormat_getTimeInstanceWithInt_withJavaUtilTimeZone_withJavaUtilLocale_(style, timeZone, locale);
}

+ (OrgApacheCommonsLang3TimeFastDateFormat *)getDateTimeInstanceWithInt:(jint)dateStyle
                                                                withInt:(jint)timeStyle {
  return OrgApacheCommonsLang3TimeFastDateFormat_getDateTimeInstanceWithInt_withInt_(dateStyle, timeStyle);
}

+ (OrgApacheCommonsLang3TimeFastDateFormat *)getDateTimeInstanceWithInt:(jint)dateStyle
                                                                withInt:(jint)timeStyle
                                                     withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheCommonsLang3TimeFastDateFormat_getDateTimeInstanceWithInt_withInt_withJavaUtilLocale_(dateStyle, timeStyle, locale);
}

+ (OrgApacheCommonsLang3TimeFastDateFormat *)getDateTimeInstanceWithInt:(jint)dateStyle
                                                                withInt:(jint)timeStyle
                                                   withJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone {
  return OrgApacheCommonsLang3TimeFastDateFormat_getDateTimeInstanceWithInt_withInt_withJavaUtilTimeZone_(dateStyle, timeStyle, timeZone);
}

+ (OrgApacheCommonsLang3TimeFastDateFormat *)getDateTimeInstanceWithInt:(jint)dateStyle
                                                                withInt:(jint)timeStyle
                                                   withJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone
                                                     withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheCommonsLang3TimeFastDateFormat_getDateTimeInstanceWithInt_withInt_withJavaUtilTimeZone_withJavaUtilLocale_(dateStyle, timeStyle, timeZone, locale);
}

- (instancetype)initWithNSString:(NSString *)pattern
            withJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone
              withJavaUtilLocale:(JavaUtilLocale *)locale {
  OrgApacheCommonsLang3TimeFastDateFormat_initWithNSString_withJavaUtilTimeZone_withJavaUtilLocale_(self, pattern, timeZone, locale);
  return self;
}

- (instancetype)initWithNSString:(NSString *)pattern
            withJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone
              withJavaUtilLocale:(JavaUtilLocale *)locale
                withJavaUtilDate:(JavaUtilDate *)centuryStart {
  OrgApacheCommonsLang3TimeFastDateFormat_initWithNSString_withJavaUtilTimeZone_withJavaUtilLocale_withJavaUtilDate_(self, pattern, timeZone, locale, centuryStart);
  return self;
}

- (JavaLangStringBuffer *)formatWithId:(id)obj
              withJavaLangStringBuffer:(JavaLangStringBuffer *)toAppendTo
             withJavaTextFieldPosition:(JavaTextFieldPosition *)pos {
  return [((OrgApacheCommonsLang3TimeFastDatePrinter *) nil_chk(printer_)) formatWithId:obj withJavaLangStringBuffer:toAppendTo withJavaTextFieldPosition:pos];
}

- (NSString *)formatWithLong:(jlong)millis {
  return [((OrgApacheCommonsLang3TimeFastDatePrinter *) nil_chk(printer_)) formatWithLong:millis];
}

- (NSString *)formatWithJavaUtilDate:(JavaUtilDate *)date {
  return [((OrgApacheCommonsLang3TimeFastDatePrinter *) nil_chk(printer_)) formatWithJavaUtilDate:date];
}

- (NSString *)formatWithJavaUtilCalendar:(JavaUtilCalendar *)calendar {
  return [((OrgApacheCommonsLang3TimeFastDatePrinter *) nil_chk(printer_)) formatWithJavaUtilCalendar:calendar];
}

- (JavaLangStringBuffer *)formatWithLong:(jlong)millis
                withJavaLangStringBuffer:(JavaLangStringBuffer *)buf {
  return [((OrgApacheCommonsLang3TimeFastDatePrinter *) nil_chk(printer_)) formatWithLong:millis withJavaLangStringBuffer:buf];
}

- (JavaLangStringBuffer *)formatWithJavaUtilDate:(JavaUtilDate *)date
                        withJavaLangStringBuffer:(JavaLangStringBuffer *)buf {
  return [((OrgApacheCommonsLang3TimeFastDatePrinter *) nil_chk(printer_)) formatWithJavaUtilDate:date withJavaLangStringBuffer:buf];
}

- (JavaLangStringBuffer *)formatWithJavaUtilCalendar:(JavaUtilCalendar *)calendar
                            withJavaLangStringBuffer:(JavaLangStringBuffer *)buf {
  return [((OrgApacheCommonsLang3TimeFastDatePrinter *) nil_chk(printer_)) formatWithJavaUtilCalendar:calendar withJavaLangStringBuffer:buf];
}

- (JavaUtilDate *)parseWithNSString:(NSString *)source {
  return [((OrgApacheCommonsLang3TimeFastDateParser *) nil_chk(parser_)) parseWithNSString:source];
}

- (JavaUtilDate *)parseWithNSString:(NSString *)source
          withJavaTextParsePosition:(JavaTextParsePosition *)pos {
  return [((OrgApacheCommonsLang3TimeFastDateParser *) nil_chk(parser_)) parseWithNSString:source withJavaTextParsePosition:pos];
}

- (id)parseObjectWithNSString:(NSString *)source
    withJavaTextParsePosition:(JavaTextParsePosition *)pos {
  return [((OrgApacheCommonsLang3TimeFastDateParser *) nil_chk(parser_)) parseObjectWithNSString:source withJavaTextParsePosition:pos];
}

- (NSString *)getPattern {
  return [((OrgApacheCommonsLang3TimeFastDatePrinter *) nil_chk(printer_)) getPattern];
}

- (JavaUtilTimeZone *)getTimeZone {
  return [((OrgApacheCommonsLang3TimeFastDatePrinter *) nil_chk(printer_)) getTimeZone];
}

- (JavaUtilLocale *)getLocale {
  return [((OrgApacheCommonsLang3TimeFastDatePrinter *) nil_chk(printer_)) getLocale];
}

- (jint)getMaxLengthEstimate {
  return [((OrgApacheCommonsLang3TimeFastDatePrinter *) nil_chk(printer_)) getMaxLengthEstimate];
}

- (jboolean)isEqual:(id)obj {
  if ([obj isKindOfClass:[OrgApacheCommonsLang3TimeFastDateFormat class]] == false) {
    return false;
  }
  OrgApacheCommonsLang3TimeFastDateFormat *other = (OrgApacheCommonsLang3TimeFastDateFormat *) cast_chk(obj, [OrgApacheCommonsLang3TimeFastDateFormat class]);
  return [((OrgApacheCommonsLang3TimeFastDatePrinter *) nil_chk(printer_)) isEqual:((OrgApacheCommonsLang3TimeFastDateFormat *) nil_chk(other))->printer_];
}

- (NSUInteger)hash {
  return ((jint) [((OrgApacheCommonsLang3TimeFastDatePrinter *) nil_chk(printer_)) hash]);
}

- (NSString *)description {
  return JreStrcat("$$C@C$C", @"FastDateFormat[", [((OrgApacheCommonsLang3TimeFastDatePrinter *) nil_chk(printer_)) getPattern], ',', [printer_ getLocale], ',', [((JavaUtilTimeZone *) nil_chk([printer_ getTimeZone])) getID], ']');
}

- (JavaLangStringBuffer *)applyRulesWithJavaUtilCalendar:(JavaUtilCalendar *)calendar
                                withJavaLangStringBuffer:(JavaLangStringBuffer *)buf {
  return [((OrgApacheCommonsLang3TimeFastDatePrinter *) nil_chk(printer_)) applyRulesWithJavaUtilCalendar:calendar withJavaLangStringBuffer:buf];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgApacheCommonsLang3TimeFastDateFormat;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TimeFastDateFormat;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TimeFastDateFormat;", 0x9, 0, 2, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TimeFastDateFormat;", 0x9, 0, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TimeFastDateFormat;", 0x9, 0, 4, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TimeFastDateFormat;", 0x9, 5, 6, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TimeFastDateFormat;", 0x9, 5, 7, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TimeFastDateFormat;", 0x9, 5, 8, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TimeFastDateFormat;", 0x9, 5, 9, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TimeFastDateFormat;", 0x9, 10, 6, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TimeFastDateFormat;", 0x9, 10, 7, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TimeFastDateFormat;", 0x9, 10, 8, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TimeFastDateFormat;", 0x9, 10, 9, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TimeFastDateFormat;", 0x9, 11, 12, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TimeFastDateFormat;", 0x9, 11, 13, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TimeFastDateFormat;", 0x9, 11, 14, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TimeFastDateFormat;", 0x9, 11, 15, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 16, -1, -1, -1, -1 },
    { NULL, "LJavaLangStringBuffer;", 0x1, 17, 18, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 17, 19, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 17, 20, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 17, 21, -1, -1, -1, -1 },
    { NULL, "LJavaLangStringBuffer;", 0x1, 17, 22, -1, -1, -1, -1 },
    { NULL, "LJavaLangStringBuffer;", 0x1, 17, 23, -1, -1, -1, -1 },
    { NULL, "LJavaLangStringBuffer;", 0x1, 17, 24, -1, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x1, 25, 1, 26, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x1, 25, 27, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 28, 27, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilTimeZone;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilLocale;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 29, 30, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 31, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 32, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangStringBuffer;", 0x4, 33, 24, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getInstance);
  methods[1].selector = @selector(getInstanceWithNSString:);
  methods[2].selector = @selector(getInstanceWithNSString:withJavaUtilTimeZone:);
  methods[3].selector = @selector(getInstanceWithNSString:withJavaUtilLocale:);
  methods[4].selector = @selector(getInstanceWithNSString:withJavaUtilTimeZone:withJavaUtilLocale:);
  methods[5].selector = @selector(getDateInstanceWithInt:);
  methods[6].selector = @selector(getDateInstanceWithInt:withJavaUtilLocale:);
  methods[7].selector = @selector(getDateInstanceWithInt:withJavaUtilTimeZone:);
  methods[8].selector = @selector(getDateInstanceWithInt:withJavaUtilTimeZone:withJavaUtilLocale:);
  methods[9].selector = @selector(getTimeInstanceWithInt:);
  methods[10].selector = @selector(getTimeInstanceWithInt:withJavaUtilLocale:);
  methods[11].selector = @selector(getTimeInstanceWithInt:withJavaUtilTimeZone:);
  methods[12].selector = @selector(getTimeInstanceWithInt:withJavaUtilTimeZone:withJavaUtilLocale:);
  methods[13].selector = @selector(getDateTimeInstanceWithInt:withInt:);
  methods[14].selector = @selector(getDateTimeInstanceWithInt:withInt:withJavaUtilLocale:);
  methods[15].selector = @selector(getDateTimeInstanceWithInt:withInt:withJavaUtilTimeZone:);
  methods[16].selector = @selector(getDateTimeInstanceWithInt:withInt:withJavaUtilTimeZone:withJavaUtilLocale:);
  methods[17].selector = @selector(initWithNSString:withJavaUtilTimeZone:withJavaUtilLocale:);
  methods[18].selector = @selector(initWithNSString:withJavaUtilTimeZone:withJavaUtilLocale:withJavaUtilDate:);
  methods[19].selector = @selector(formatWithId:withJavaLangStringBuffer:withJavaTextFieldPosition:);
  methods[20].selector = @selector(formatWithLong:);
  methods[21].selector = @selector(formatWithJavaUtilDate:);
  methods[22].selector = @selector(formatWithJavaUtilCalendar:);
  methods[23].selector = @selector(formatWithLong:withJavaLangStringBuffer:);
  methods[24].selector = @selector(formatWithJavaUtilDate:withJavaLangStringBuffer:);
  methods[25].selector = @selector(formatWithJavaUtilCalendar:withJavaLangStringBuffer:);
  methods[26].selector = @selector(parseWithNSString:);
  methods[27].selector = @selector(parseWithNSString:withJavaTextParsePosition:);
  methods[28].selector = @selector(parseObjectWithNSString:withJavaTextParsePosition:);
  methods[29].selector = @selector(getPattern);
  methods[30].selector = @selector(getTimeZone);
  methods[31].selector = @selector(getLocale);
  methods[32].selector = @selector(getMaxLengthEstimate);
  methods[33].selector = @selector(isEqual:);
  methods[34].selector = @selector(hash);
  methods[35].selector = @selector(description);
  methods[36].selector = @selector(applyRulesWithJavaUtilCalendar:withJavaLangStringBuffer:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgApacheCommonsLang3TimeFastDateFormat_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "FULL", "I", .constantValue.asInt = OrgApacheCommonsLang3TimeFastDateFormat_FULL, 0x19, -1, -1, -1, -1 },
    { "LONG", "I", .constantValue.asInt = OrgApacheCommonsLang3TimeFastDateFormat_LONG, 0x19, -1, -1, -1, -1 },
    { "MEDIUM", "I", .constantValue.asInt = OrgApacheCommonsLang3TimeFastDateFormat_MEDIUM, 0x19, -1, -1, -1, -1 },
    { "SHORT", "I", .constantValue.asInt = OrgApacheCommonsLang3TimeFastDateFormat_SHORT, 0x19, -1, -1, -1, -1 },
    { "cache", "LOrgApacheCommonsLang3TimeFormatCache;", .constantValue.asLong = 0, 0x1a, -1, 34, 35, -1 },
    { "printer_", "LOrgApacheCommonsLang3TimeFastDatePrinter;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "parser_", "LOrgApacheCommonsLang3TimeFastDateParser;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "getInstance", "LNSString;", "LNSString;LJavaUtilTimeZone;", "LNSString;LJavaUtilLocale;", "LNSString;LJavaUtilTimeZone;LJavaUtilLocale;", "getDateInstance", "I", "ILJavaUtilLocale;", "ILJavaUtilTimeZone;", "ILJavaUtilTimeZone;LJavaUtilLocale;", "getTimeInstance", "getDateTimeInstance", "II", "IILJavaUtilLocale;", "IILJavaUtilTimeZone;", "IILJavaUtilTimeZone;LJavaUtilLocale;", "LNSString;LJavaUtilTimeZone;LJavaUtilLocale;LJavaUtilDate;", "format", "LNSObject;LJavaLangStringBuffer;LJavaTextFieldPosition;", "J", "LJavaUtilDate;", "LJavaUtilCalendar;", "JLJavaLangStringBuffer;", "LJavaUtilDate;LJavaLangStringBuffer;", "LJavaUtilCalendar;LJavaLangStringBuffer;", "parse", "LJavaTextParseException;", "LNSString;LJavaTextParsePosition;", "parseObject", "equals", "LNSObject;", "hashCode", "toString", "applyRules", &OrgApacheCommonsLang3TimeFastDateFormat_cache, "Lorg/apache/commons/lang3/time/FormatCache<Lorg/apache/commons/lang3/time/FastDateFormat;>;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3TimeFastDateFormat = { "FastDateFormat", "org.apache.commons.lang3.time", ptrTable, methods, fields, 7, 0x1, 37, 8, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsLang3TimeFastDateFormat;
}

+ (void)initialize {
  if (self == [OrgApacheCommonsLang3TimeFastDateFormat class]) {
    OrgApacheCommonsLang3TimeFastDateFormat_cache = new_OrgApacheCommonsLang3TimeFastDateFormat_1_init();
    J2OBJC_SET_INITIALIZED(OrgApacheCommonsLang3TimeFastDateFormat)
  }
}

@end

OrgApacheCommonsLang3TimeFastDateFormat *OrgApacheCommonsLang3TimeFastDateFormat_getInstance() {
  OrgApacheCommonsLang3TimeFastDateFormat_initialize();
  return ((OrgApacheCommonsLang3TimeFastDateFormat *) [((OrgApacheCommonsLang3TimeFormatCache *) nil_chk(OrgApacheCommonsLang3TimeFastDateFormat_cache)) getInstance]);
}

OrgApacheCommonsLang3TimeFastDateFormat *OrgApacheCommonsLang3TimeFastDateFormat_getInstanceWithNSString_(NSString *pattern) {
  OrgApacheCommonsLang3TimeFastDateFormat_initialize();
  return ((OrgApacheCommonsLang3TimeFastDateFormat *) [((OrgApacheCommonsLang3TimeFormatCache *) nil_chk(OrgApacheCommonsLang3TimeFastDateFormat_cache)) getInstanceWithNSString:pattern withJavaUtilTimeZone:nil withJavaUtilLocale:nil]);
}

OrgApacheCommonsLang3TimeFastDateFormat *OrgApacheCommonsLang3TimeFastDateFormat_getInstanceWithNSString_withJavaUtilTimeZone_(NSString *pattern, JavaUtilTimeZone *timeZone) {
  OrgApacheCommonsLang3TimeFastDateFormat_initialize();
  return ((OrgApacheCommonsLang3TimeFastDateFormat *) [((OrgApacheCommonsLang3TimeFormatCache *) nil_chk(OrgApacheCommonsLang3TimeFastDateFormat_cache)) getInstanceWithNSString:pattern withJavaUtilTimeZone:timeZone withJavaUtilLocale:nil]);
}

OrgApacheCommonsLang3TimeFastDateFormat *OrgApacheCommonsLang3TimeFastDateFormat_getInstanceWithNSString_withJavaUtilLocale_(NSString *pattern, JavaUtilLocale *locale) {
  OrgApacheCommonsLang3TimeFastDateFormat_initialize();
  return ((OrgApacheCommonsLang3TimeFastDateFormat *) [((OrgApacheCommonsLang3TimeFormatCache *) nil_chk(OrgApacheCommonsLang3TimeFastDateFormat_cache)) getInstanceWithNSString:pattern withJavaUtilTimeZone:nil withJavaUtilLocale:locale]);
}

OrgApacheCommonsLang3TimeFastDateFormat *OrgApacheCommonsLang3TimeFastDateFormat_getInstanceWithNSString_withJavaUtilTimeZone_withJavaUtilLocale_(NSString *pattern, JavaUtilTimeZone *timeZone, JavaUtilLocale *locale) {
  OrgApacheCommonsLang3TimeFastDateFormat_initialize();
  return ((OrgApacheCommonsLang3TimeFastDateFormat *) [((OrgApacheCommonsLang3TimeFormatCache *) nil_chk(OrgApacheCommonsLang3TimeFastDateFormat_cache)) getInstanceWithNSString:pattern withJavaUtilTimeZone:timeZone withJavaUtilLocale:locale]);
}

OrgApacheCommonsLang3TimeFastDateFormat *OrgApacheCommonsLang3TimeFastDateFormat_getDateInstanceWithInt_(jint style) {
  OrgApacheCommonsLang3TimeFastDateFormat_initialize();
  return ((OrgApacheCommonsLang3TimeFastDateFormat *) [((OrgApacheCommonsLang3TimeFormatCache *) nil_chk(OrgApacheCommonsLang3TimeFastDateFormat_cache)) getDateInstanceWithInt:style withJavaUtilTimeZone:nil withJavaUtilLocale:nil]);
}

OrgApacheCommonsLang3TimeFastDateFormat *OrgApacheCommonsLang3TimeFastDateFormat_getDateInstanceWithInt_withJavaUtilLocale_(jint style, JavaUtilLocale *locale) {
  OrgApacheCommonsLang3TimeFastDateFormat_initialize();
  return ((OrgApacheCommonsLang3TimeFastDateFormat *) [((OrgApacheCommonsLang3TimeFormatCache *) nil_chk(OrgApacheCommonsLang3TimeFastDateFormat_cache)) getDateInstanceWithInt:style withJavaUtilTimeZone:nil withJavaUtilLocale:locale]);
}

OrgApacheCommonsLang3TimeFastDateFormat *OrgApacheCommonsLang3TimeFastDateFormat_getDateInstanceWithInt_withJavaUtilTimeZone_(jint style, JavaUtilTimeZone *timeZone) {
  OrgApacheCommonsLang3TimeFastDateFormat_initialize();
  return ((OrgApacheCommonsLang3TimeFastDateFormat *) [((OrgApacheCommonsLang3TimeFormatCache *) nil_chk(OrgApacheCommonsLang3TimeFastDateFormat_cache)) getDateInstanceWithInt:style withJavaUtilTimeZone:timeZone withJavaUtilLocale:nil]);
}

OrgApacheCommonsLang3TimeFastDateFormat *OrgApacheCommonsLang3TimeFastDateFormat_getDateInstanceWithInt_withJavaUtilTimeZone_withJavaUtilLocale_(jint style, JavaUtilTimeZone *timeZone, JavaUtilLocale *locale) {
  OrgApacheCommonsLang3TimeFastDateFormat_initialize();
  return ((OrgApacheCommonsLang3TimeFastDateFormat *) [((OrgApacheCommonsLang3TimeFormatCache *) nil_chk(OrgApacheCommonsLang3TimeFastDateFormat_cache)) getDateInstanceWithInt:style withJavaUtilTimeZone:timeZone withJavaUtilLocale:locale]);
}

OrgApacheCommonsLang3TimeFastDateFormat *OrgApacheCommonsLang3TimeFastDateFormat_getTimeInstanceWithInt_(jint style) {
  OrgApacheCommonsLang3TimeFastDateFormat_initialize();
  return ((OrgApacheCommonsLang3TimeFastDateFormat *) [((OrgApacheCommonsLang3TimeFormatCache *) nil_chk(OrgApacheCommonsLang3TimeFastDateFormat_cache)) getTimeInstanceWithInt:style withJavaUtilTimeZone:nil withJavaUtilLocale:nil]);
}

OrgApacheCommonsLang3TimeFastDateFormat *OrgApacheCommonsLang3TimeFastDateFormat_getTimeInstanceWithInt_withJavaUtilLocale_(jint style, JavaUtilLocale *locale) {
  OrgApacheCommonsLang3TimeFastDateFormat_initialize();
  return ((OrgApacheCommonsLang3TimeFastDateFormat *) [((OrgApacheCommonsLang3TimeFormatCache *) nil_chk(OrgApacheCommonsLang3TimeFastDateFormat_cache)) getTimeInstanceWithInt:style withJavaUtilTimeZone:nil withJavaUtilLocale:locale]);
}

OrgApacheCommonsLang3TimeFastDateFormat *OrgApacheCommonsLang3TimeFastDateFormat_getTimeInstanceWithInt_withJavaUtilTimeZone_(jint style, JavaUtilTimeZone *timeZone) {
  OrgApacheCommonsLang3TimeFastDateFormat_initialize();
  return ((OrgApacheCommonsLang3TimeFastDateFormat *) [((OrgApacheCommonsLang3TimeFormatCache *) nil_chk(OrgApacheCommonsLang3TimeFastDateFormat_cache)) getTimeInstanceWithInt:style withJavaUtilTimeZone:timeZone withJavaUtilLocale:nil]);
}

OrgApacheCommonsLang3TimeFastDateFormat *OrgApacheCommonsLang3TimeFastDateFormat_getTimeInstanceWithInt_withJavaUtilTimeZone_withJavaUtilLocale_(jint style, JavaUtilTimeZone *timeZone, JavaUtilLocale *locale) {
  OrgApacheCommonsLang3TimeFastDateFormat_initialize();
  return ((OrgApacheCommonsLang3TimeFastDateFormat *) [((OrgApacheCommonsLang3TimeFormatCache *) nil_chk(OrgApacheCommonsLang3TimeFastDateFormat_cache)) getTimeInstanceWithInt:style withJavaUtilTimeZone:timeZone withJavaUtilLocale:locale]);
}

OrgApacheCommonsLang3TimeFastDateFormat *OrgApacheCommonsLang3TimeFastDateFormat_getDateTimeInstanceWithInt_withInt_(jint dateStyle, jint timeStyle) {
  OrgApacheCommonsLang3TimeFastDateFormat_initialize();
  return ((OrgApacheCommonsLang3TimeFastDateFormat *) [((OrgApacheCommonsLang3TimeFormatCache *) nil_chk(OrgApacheCommonsLang3TimeFastDateFormat_cache)) getDateTimeInstanceWithInt:dateStyle withInt:timeStyle withJavaUtilTimeZone:nil withJavaUtilLocale:nil]);
}

OrgApacheCommonsLang3TimeFastDateFormat *OrgApacheCommonsLang3TimeFastDateFormat_getDateTimeInstanceWithInt_withInt_withJavaUtilLocale_(jint dateStyle, jint timeStyle, JavaUtilLocale *locale) {
  OrgApacheCommonsLang3TimeFastDateFormat_initialize();
  return ((OrgApacheCommonsLang3TimeFastDateFormat *) [((OrgApacheCommonsLang3TimeFormatCache *) nil_chk(OrgApacheCommonsLang3TimeFastDateFormat_cache)) getDateTimeInstanceWithInt:dateStyle withInt:timeStyle withJavaUtilTimeZone:nil withJavaUtilLocale:locale]);
}

OrgApacheCommonsLang3TimeFastDateFormat *OrgApacheCommonsLang3TimeFastDateFormat_getDateTimeInstanceWithInt_withInt_withJavaUtilTimeZone_(jint dateStyle, jint timeStyle, JavaUtilTimeZone *timeZone) {
  OrgApacheCommonsLang3TimeFastDateFormat_initialize();
  return OrgApacheCommonsLang3TimeFastDateFormat_getDateTimeInstanceWithInt_withInt_withJavaUtilTimeZone_withJavaUtilLocale_(dateStyle, timeStyle, timeZone, nil);
}

OrgApacheCommonsLang3TimeFastDateFormat *OrgApacheCommonsLang3TimeFastDateFormat_getDateTimeInstanceWithInt_withInt_withJavaUtilTimeZone_withJavaUtilLocale_(jint dateStyle, jint timeStyle, JavaUtilTimeZone *timeZone, JavaUtilLocale *locale) {
  OrgApacheCommonsLang3TimeFastDateFormat_initialize();
  return ((OrgApacheCommonsLang3TimeFastDateFormat *) [((OrgApacheCommonsLang3TimeFormatCache *) nil_chk(OrgApacheCommonsLang3TimeFastDateFormat_cache)) getDateTimeInstanceWithInt:dateStyle withInt:timeStyle withJavaUtilTimeZone:timeZone withJavaUtilLocale:locale]);
}

void OrgApacheCommonsLang3TimeFastDateFormat_initWithNSString_withJavaUtilTimeZone_withJavaUtilLocale_(OrgApacheCommonsLang3TimeFastDateFormat *self, NSString *pattern, JavaUtilTimeZone *timeZone, JavaUtilLocale *locale) {
  OrgApacheCommonsLang3TimeFastDateFormat_initWithNSString_withJavaUtilTimeZone_withJavaUtilLocale_withJavaUtilDate_(self, pattern, timeZone, locale, nil);
}

OrgApacheCommonsLang3TimeFastDateFormat *new_OrgApacheCommonsLang3TimeFastDateFormat_initWithNSString_withJavaUtilTimeZone_withJavaUtilLocale_(NSString *pattern, JavaUtilTimeZone *timeZone, JavaUtilLocale *locale) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3TimeFastDateFormat, initWithNSString_withJavaUtilTimeZone_withJavaUtilLocale_, pattern, timeZone, locale)
}

OrgApacheCommonsLang3TimeFastDateFormat *create_OrgApacheCommonsLang3TimeFastDateFormat_initWithNSString_withJavaUtilTimeZone_withJavaUtilLocale_(NSString *pattern, JavaUtilTimeZone *timeZone, JavaUtilLocale *locale) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3TimeFastDateFormat, initWithNSString_withJavaUtilTimeZone_withJavaUtilLocale_, pattern, timeZone, locale)
}

void OrgApacheCommonsLang3TimeFastDateFormat_initWithNSString_withJavaUtilTimeZone_withJavaUtilLocale_withJavaUtilDate_(OrgApacheCommonsLang3TimeFastDateFormat *self, NSString *pattern, JavaUtilTimeZone *timeZone, JavaUtilLocale *locale, JavaUtilDate *centuryStart) {
  JavaTextFormat_init(self);
  self->printer_ = new_OrgApacheCommonsLang3TimeFastDatePrinter_initWithNSString_withJavaUtilTimeZone_withJavaUtilLocale_(pattern, timeZone, locale);
  self->parser_ = new_OrgApacheCommonsLang3TimeFastDateParser_initWithNSString_withJavaUtilTimeZone_withJavaUtilLocale_withJavaUtilDate_(pattern, timeZone, locale, centuryStart);
}

OrgApacheCommonsLang3TimeFastDateFormat *new_OrgApacheCommonsLang3TimeFastDateFormat_initWithNSString_withJavaUtilTimeZone_withJavaUtilLocale_withJavaUtilDate_(NSString *pattern, JavaUtilTimeZone *timeZone, JavaUtilLocale *locale, JavaUtilDate *centuryStart) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3TimeFastDateFormat, initWithNSString_withJavaUtilTimeZone_withJavaUtilLocale_withJavaUtilDate_, pattern, timeZone, locale, centuryStart)
}

OrgApacheCommonsLang3TimeFastDateFormat *create_OrgApacheCommonsLang3TimeFastDateFormat_initWithNSString_withJavaUtilTimeZone_withJavaUtilLocale_withJavaUtilDate_(NSString *pattern, JavaUtilTimeZone *timeZone, JavaUtilLocale *locale, JavaUtilDate *centuryStart) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3TimeFastDateFormat, initWithNSString_withJavaUtilTimeZone_withJavaUtilLocale_withJavaUtilDate_, pattern, timeZone, locale, centuryStart)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3TimeFastDateFormat)

@implementation OrgApacheCommonsLang3TimeFastDateFormat_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsLang3TimeFastDateFormat_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheCommonsLang3TimeFastDateFormat *)createInstanceWithNSString:(NSString *)pattern
                                                   withJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone
                                                     withJavaUtilLocale:(JavaUtilLocale *)locale {
  return new_OrgApacheCommonsLang3TimeFastDateFormat_initWithNSString_withJavaUtilTimeZone_withJavaUtilLocale_(pattern, timeZone, locale);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3TimeFastDateFormat;", 0x4, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(createInstanceWithNSString:withJavaUtilTimeZone:withJavaUtilLocale:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "createInstance", "LNSString;LJavaUtilTimeZone;LJavaUtilLocale;", "LOrgApacheCommonsLang3TimeFastDateFormat;", "Lorg/apache/commons/lang3/time/FormatCache<Lorg/apache/commons/lang3/time/FastDateFormat;>;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3TimeFastDateFormat_1 = { "", "org.apache.commons.lang3.time", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 2, -1, -1, 3, -1 };
  return &_OrgApacheCommonsLang3TimeFastDateFormat_1;
}

@end

void OrgApacheCommonsLang3TimeFastDateFormat_1_init(OrgApacheCommonsLang3TimeFastDateFormat_1 *self) {
  OrgApacheCommonsLang3TimeFormatCache_init(self);
}

OrgApacheCommonsLang3TimeFastDateFormat_1 *new_OrgApacheCommonsLang3TimeFastDateFormat_1_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3TimeFastDateFormat_1, init)
}

OrgApacheCommonsLang3TimeFastDateFormat_1 *create_OrgApacheCommonsLang3TimeFastDateFormat_1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3TimeFastDateFormat_1, init)
}
