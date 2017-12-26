//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/time/DurationFormatUtils.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Calendar.h"
#include "java/util/Date.h"
#include "java/util/GregorianCalendar.h"
#include "java/util/TimeZone.h"
#include "org/apache/commons/lang3/StringUtils.h"
#include "org/apache/commons/lang3/Validate.h"
#include "org/apache/commons/lang3/time/DateUtils.h"
#include "org/apache/commons/lang3/time/DurationFormatUtils.h"

@interface OrgApacheCommonsLang3TimeDurationFormatUtils ()

+ (NSString *)paddedValueWithLong:(jlong)value
                      withBoolean:(jboolean)padWithZeros
                          withInt:(jint)count;

@end

__attribute__((unused)) static NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_paddedValueWithLong_withBoolean_withInt_(jlong value, jboolean padWithZeros, jint count);

@interface OrgApacheCommonsLang3TimeDurationFormatUtils_Token () {
 @public
  id value_;
  jint count_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3TimeDurationFormatUtils_Token, value_, id)

NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_ISO_EXTENDED_FORMAT_PATTERN = @"'P'yyyy'Y'M'M'd'DT'H'H'm'M's.SSS'S'";
id OrgApacheCommonsLang3TimeDurationFormatUtils_y = @"y";
id OrgApacheCommonsLang3TimeDurationFormatUtils_M = @"M";
id OrgApacheCommonsLang3TimeDurationFormatUtils_d = @"d";
id OrgApacheCommonsLang3TimeDurationFormatUtils_H = @"H";
id OrgApacheCommonsLang3TimeDurationFormatUtils_m = @"m";
id OrgApacheCommonsLang3TimeDurationFormatUtils_s = @"s";
id OrgApacheCommonsLang3TimeDurationFormatUtils_S = @"S";

@implementation OrgApacheCommonsLang3TimeDurationFormatUtils

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsLang3TimeDurationFormatUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)formatDurationHMSWithLong:(jlong)durationMillis {
  return OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationHMSWithLong_(durationMillis);
}

+ (NSString *)formatDurationISOWithLong:(jlong)durationMillis {
  return OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationISOWithLong_(durationMillis);
}

+ (NSString *)formatDurationWithLong:(jlong)durationMillis
                        withNSString:(NSString *)format {
  return OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationWithLong_withNSString_(durationMillis, format);
}

+ (NSString *)formatDurationWithLong:(jlong)durationMillis
                        withNSString:(NSString *)format
                         withBoolean:(jboolean)padWithZeros {
  return OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationWithLong_withNSString_withBoolean_(durationMillis, format, padWithZeros);
}

+ (NSString *)formatDurationWordsWithLong:(jlong)durationMillis
                              withBoolean:(jboolean)suppressLeadingZeroElements
                              withBoolean:(jboolean)suppressTrailingZeroElements {
  return OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationWordsWithLong_withBoolean_withBoolean_(durationMillis, suppressLeadingZeroElements, suppressTrailingZeroElements);
}

+ (NSString *)formatPeriodISOWithLong:(jlong)startMillis
                             withLong:(jlong)endMillis {
  return OrgApacheCommonsLang3TimeDurationFormatUtils_formatPeriodISOWithLong_withLong_(startMillis, endMillis);
}

+ (NSString *)formatPeriodWithLong:(jlong)startMillis
                          withLong:(jlong)endMillis
                      withNSString:(NSString *)format {
  return OrgApacheCommonsLang3TimeDurationFormatUtils_formatPeriodWithLong_withLong_withNSString_(startMillis, endMillis, format);
}

+ (NSString *)formatPeriodWithLong:(jlong)startMillis
                          withLong:(jlong)endMillis
                      withNSString:(NSString *)format
                       withBoolean:(jboolean)padWithZeros
              withJavaUtilTimeZone:(JavaUtilTimeZone *)timezone {
  return OrgApacheCommonsLang3TimeDurationFormatUtils_formatPeriodWithLong_withLong_withNSString_withBoolean_withJavaUtilTimeZone_(startMillis, endMillis, format, padWithZeros, timezone);
}

+ (NSString *)formatWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray:(IOSObjectArray *)tokens
                                                                       withLong:(jlong)years
                                                                       withLong:(jlong)months
                                                                       withLong:(jlong)days
                                                                       withLong:(jlong)hours
                                                                       withLong:(jlong)minutes
                                                                       withLong:(jlong)seconds
                                                                       withLong:(jlong)milliseconds
                                                                    withBoolean:(jboolean)padWithZeros {
  return OrgApacheCommonsLang3TimeDurationFormatUtils_formatWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withLong_withLong_withLong_withLong_withLong_withLong_withLong_withBoolean_(tokens, years, months, days, hours, minutes, seconds, milliseconds, padWithZeros);
}

+ (NSString *)paddedValueWithLong:(jlong)value
                      withBoolean:(jboolean)padWithZeros
                          withInt:(jint)count {
  return OrgApacheCommonsLang3TimeDurationFormatUtils_paddedValueWithLong_withBoolean_withInt_(value, padWithZeros, count);
}

+ (IOSObjectArray *)lexxWithNSString:(NSString *)format {
  return OrgApacheCommonsLang3TimeDurationFormatUtils_lexxWithNSString_(format);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 2, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 3, 5, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 6, 7, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 8, 9, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 10, 11, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 10, 12, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x8, 13, 14, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0xa, 15, 16, -1, -1, -1, -1 },
    { NULL, "[LOrgApacheCommonsLang3TimeDurationFormatUtils_Token;", 0x8, 17, 18, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(formatDurationHMSWithLong:);
  methods[2].selector = @selector(formatDurationISOWithLong:);
  methods[3].selector = @selector(formatDurationWithLong:withNSString:);
  methods[4].selector = @selector(formatDurationWithLong:withNSString:withBoolean:);
  methods[5].selector = @selector(formatDurationWordsWithLong:withBoolean:withBoolean:);
  methods[6].selector = @selector(formatPeriodISOWithLong:withLong:);
  methods[7].selector = @selector(formatPeriodWithLong:withLong:withNSString:);
  methods[8].selector = @selector(formatPeriodWithLong:withLong:withNSString:withBoolean:withJavaUtilTimeZone:);
  methods[9].selector = @selector(formatWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray:withLong:withLong:withLong:withLong:withLong:withLong:withLong:withBoolean:);
  methods[10].selector = @selector(paddedValueWithLong:withBoolean:withInt:);
  methods[11].selector = @selector(lexxWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ISO_EXTENDED_FORMAT_PATTERN", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 19, -1, -1 },
    { "y", "LNSObject;", .constantValue.asLong = 0, 0x18, -1, 20, -1, -1 },
    { "M", "LNSObject;", .constantValue.asLong = 0, 0x18, -1, 21, -1, -1 },
    { "d", "LNSObject;", .constantValue.asLong = 0, 0x18, -1, 22, -1, -1 },
    { "H", "LNSObject;", .constantValue.asLong = 0, 0x18, -1, 23, -1, -1 },
    { "m", "LNSObject;", .constantValue.asLong = 0, 0x18, -1, 24, -1, -1 },
    { "s", "LNSObject;", .constantValue.asLong = 0, 0x18, -1, 25, -1, -1 },
    { "S", "LNSObject;", .constantValue.asLong = 0, 0x18, -1, 26, -1, -1 },
  };
  static const void *ptrTable[] = { "formatDurationHMS", "J", "formatDurationISO", "formatDuration", "JLNSString;", "JLNSString;Z", "formatDurationWords", "JZZ", "formatPeriodISO", "JJ", "formatPeriod", "JJLNSString;", "JJLNSString;ZLJavaUtilTimeZone;", "format", "[LOrgApacheCommonsLang3TimeDurationFormatUtils_Token;JJJJJJJZ", "paddedValue", "JZI", "lexx", "LNSString;", &OrgApacheCommonsLang3TimeDurationFormatUtils_ISO_EXTENDED_FORMAT_PATTERN, &OrgApacheCommonsLang3TimeDurationFormatUtils_y, &OrgApacheCommonsLang3TimeDurationFormatUtils_M, &OrgApacheCommonsLang3TimeDurationFormatUtils_d, &OrgApacheCommonsLang3TimeDurationFormatUtils_H, &OrgApacheCommonsLang3TimeDurationFormatUtils_m, &OrgApacheCommonsLang3TimeDurationFormatUtils_s, &OrgApacheCommonsLang3TimeDurationFormatUtils_S, "LOrgApacheCommonsLang3TimeDurationFormatUtils_Token;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3TimeDurationFormatUtils = { "DurationFormatUtils", "org.apache.commons.lang3.time", ptrTable, methods, fields, 7, 0x1, 12, 8, -1, 27, -1, -1, -1 };
  return &_OrgApacheCommonsLang3TimeDurationFormatUtils;
}

@end

void OrgApacheCommonsLang3TimeDurationFormatUtils_init(OrgApacheCommonsLang3TimeDurationFormatUtils *self) {
  NSObject_init(self);
}

OrgApacheCommonsLang3TimeDurationFormatUtils *new_OrgApacheCommonsLang3TimeDurationFormatUtils_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3TimeDurationFormatUtils, init)
}

OrgApacheCommonsLang3TimeDurationFormatUtils *create_OrgApacheCommonsLang3TimeDurationFormatUtils_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3TimeDurationFormatUtils, init)
}

NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationHMSWithLong_(jlong durationMillis) {
  OrgApacheCommonsLang3TimeDurationFormatUtils_initialize();
  return OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationWithLong_withNSString_(durationMillis, @"HH:mm:ss.SSS");
}

NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationISOWithLong_(jlong durationMillis) {
  OrgApacheCommonsLang3TimeDurationFormatUtils_initialize();
  return OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationWithLong_withNSString_withBoolean_(durationMillis, OrgApacheCommonsLang3TimeDurationFormatUtils_ISO_EXTENDED_FORMAT_PATTERN, false);
}

NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationWithLong_withNSString_(jlong durationMillis, NSString *format) {
  OrgApacheCommonsLang3TimeDurationFormatUtils_initialize();
  return OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationWithLong_withNSString_withBoolean_(durationMillis, format, true);
}

NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationWithLong_withNSString_withBoolean_(jlong durationMillis, NSString *format, jboolean padWithZeros) {
  OrgApacheCommonsLang3TimeDurationFormatUtils_initialize();
  OrgApacheCommonsLang3Validate_inclusiveBetweenWithLong_withLong_withLong_withNSString_(0, JavaLangLong_MAX_VALUE, durationMillis, @"durationMillis must not be negative");
  IOSObjectArray *tokens = OrgApacheCommonsLang3TimeDurationFormatUtils_lexxWithNSString_(format);
  jlong days = 0;
  jlong hours = 0;
  jlong minutes = 0;
  jlong seconds = 0;
  jlong milliseconds = durationMillis;
  if (OrgApacheCommonsLang3TimeDurationFormatUtils_Token_containsTokenWithValueWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withId_(tokens, OrgApacheCommonsLang3TimeDurationFormatUtils_d)) {
    days = milliseconds / OrgApacheCommonsLang3TimeDateUtils_MILLIS_PER_DAY;
    milliseconds = milliseconds - (days * OrgApacheCommonsLang3TimeDateUtils_MILLIS_PER_DAY);
  }
  if (OrgApacheCommonsLang3TimeDurationFormatUtils_Token_containsTokenWithValueWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withId_(tokens, OrgApacheCommonsLang3TimeDurationFormatUtils_H)) {
    hours = milliseconds / OrgApacheCommonsLang3TimeDateUtils_MILLIS_PER_HOUR;
    milliseconds = milliseconds - (hours * OrgApacheCommonsLang3TimeDateUtils_MILLIS_PER_HOUR);
  }
  if (OrgApacheCommonsLang3TimeDurationFormatUtils_Token_containsTokenWithValueWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withId_(tokens, OrgApacheCommonsLang3TimeDurationFormatUtils_m)) {
    minutes = milliseconds / OrgApacheCommonsLang3TimeDateUtils_MILLIS_PER_MINUTE;
    milliseconds = milliseconds - (minutes * OrgApacheCommonsLang3TimeDateUtils_MILLIS_PER_MINUTE);
  }
  if (OrgApacheCommonsLang3TimeDurationFormatUtils_Token_containsTokenWithValueWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withId_(tokens, OrgApacheCommonsLang3TimeDurationFormatUtils_s)) {
    seconds = milliseconds / OrgApacheCommonsLang3TimeDateUtils_MILLIS_PER_SECOND;
    milliseconds = milliseconds - (seconds * OrgApacheCommonsLang3TimeDateUtils_MILLIS_PER_SECOND);
  }
  return OrgApacheCommonsLang3TimeDurationFormatUtils_formatWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withLong_withLong_withLong_withLong_withLong_withLong_withLong_withBoolean_(tokens, 0, 0, days, hours, minutes, seconds, milliseconds, padWithZeros);
}

NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationWordsWithLong_withBoolean_withBoolean_(jlong durationMillis, jboolean suppressLeadingZeroElements, jboolean suppressTrailingZeroElements) {
  OrgApacheCommonsLang3TimeDurationFormatUtils_initialize();
  NSString *duration = OrgApacheCommonsLang3TimeDurationFormatUtils_formatDurationWithLong_withNSString_(durationMillis, @"d' days 'H' hours 'm' minutes 's' seconds'");
  if (suppressLeadingZeroElements) {
    duration = JreStrcat("C$", ' ', duration);
    NSString *tmp = OrgApacheCommonsLang3StringUtils_replaceOnceWithNSString_withNSString_withNSString_(duration, @" 0 days", @"");
    if ([((NSString *) nil_chk(tmp)) java_length] != [duration java_length]) {
      duration = tmp;
      tmp = OrgApacheCommonsLang3StringUtils_replaceOnceWithNSString_withNSString_withNSString_(duration, @" 0 hours", @"");
      if ([((NSString *) nil_chk(tmp)) java_length] != [duration java_length]) {
        duration = tmp;
        tmp = OrgApacheCommonsLang3StringUtils_replaceOnceWithNSString_withNSString_withNSString_(duration, @" 0 minutes", @"");
        duration = tmp;
        if ([((NSString *) nil_chk(tmp)) java_length] != [((NSString *) nil_chk(duration)) java_length]) {
          duration = OrgApacheCommonsLang3StringUtils_replaceOnceWithNSString_withNSString_withNSString_(tmp, @" 0 seconds", @"");
        }
      }
    }
    if ([((NSString *) nil_chk(duration)) java_length] != 0) {
      duration = [duration java_substring:1];
    }
  }
  if (suppressTrailingZeroElements) {
    NSString *tmp = OrgApacheCommonsLang3StringUtils_replaceOnceWithNSString_withNSString_withNSString_(duration, @" 0 seconds", @"");
    if ([((NSString *) nil_chk(tmp)) java_length] != [((NSString *) nil_chk(duration)) java_length]) {
      duration = tmp;
      tmp = OrgApacheCommonsLang3StringUtils_replaceOnceWithNSString_withNSString_withNSString_(duration, @" 0 minutes", @"");
      if ([((NSString *) nil_chk(tmp)) java_length] != [duration java_length]) {
        duration = tmp;
        tmp = OrgApacheCommonsLang3StringUtils_replaceOnceWithNSString_withNSString_withNSString_(duration, @" 0 hours", @"");
        if ([((NSString *) nil_chk(tmp)) java_length] != [duration java_length]) {
          duration = OrgApacheCommonsLang3StringUtils_replaceOnceWithNSString_withNSString_withNSString_(tmp, @" 0 days", @"");
        }
      }
    }
  }
  duration = JreStrcat("C$", ' ', duration);
  duration = OrgApacheCommonsLang3StringUtils_replaceOnceWithNSString_withNSString_withNSString_(duration, @" 1 seconds", @" 1 second");
  duration = OrgApacheCommonsLang3StringUtils_replaceOnceWithNSString_withNSString_withNSString_(duration, @" 1 minutes", @" 1 minute");
  duration = OrgApacheCommonsLang3StringUtils_replaceOnceWithNSString_withNSString_withNSString_(duration, @" 1 hours", @" 1 hour");
  duration = OrgApacheCommonsLang3StringUtils_replaceOnceWithNSString_withNSString_withNSString_(duration, @" 1 days", @" 1 day");
  return [((NSString *) nil_chk(duration)) java_trim];
}

NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_formatPeriodISOWithLong_withLong_(jlong startMillis, jlong endMillis) {
  OrgApacheCommonsLang3TimeDurationFormatUtils_initialize();
  return OrgApacheCommonsLang3TimeDurationFormatUtils_formatPeriodWithLong_withLong_withNSString_withBoolean_withJavaUtilTimeZone_(startMillis, endMillis, OrgApacheCommonsLang3TimeDurationFormatUtils_ISO_EXTENDED_FORMAT_PATTERN, false, JavaUtilTimeZone_getDefault());
}

NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_formatPeriodWithLong_withLong_withNSString_(jlong startMillis, jlong endMillis, NSString *format) {
  OrgApacheCommonsLang3TimeDurationFormatUtils_initialize();
  return OrgApacheCommonsLang3TimeDurationFormatUtils_formatPeriodWithLong_withLong_withNSString_withBoolean_withJavaUtilTimeZone_(startMillis, endMillis, format, true, JavaUtilTimeZone_getDefault());
}

NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_formatPeriodWithLong_withLong_withNSString_withBoolean_withJavaUtilTimeZone_(jlong startMillis, jlong endMillis, NSString *format, jboolean padWithZeros, JavaUtilTimeZone *timezone) {
  OrgApacheCommonsLang3TimeDurationFormatUtils_initialize();
  OrgApacheCommonsLang3Validate_isTrueWithBoolean_withNSString_withNSObjectArray_(startMillis <= endMillis, @"startMillis must not be greater than endMillis", [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  IOSObjectArray *tokens = OrgApacheCommonsLang3TimeDurationFormatUtils_lexxWithNSString_(format);
  JavaUtilCalendar *start = JavaUtilCalendar_getInstanceWithJavaUtilTimeZone_(timezone);
  [((JavaUtilCalendar *) nil_chk(start)) setTimeWithJavaUtilDate:new_JavaUtilDate_initWithLong_(startMillis)];
  JavaUtilCalendar *end = JavaUtilCalendar_getInstanceWithJavaUtilTimeZone_(timezone);
  [((JavaUtilCalendar *) nil_chk(end)) setTimeWithJavaUtilDate:new_JavaUtilDate_initWithLong_(endMillis)];
  jint milliseconds = [end getWithInt:JavaUtilCalendar_MILLISECOND] - [start getWithInt:JavaUtilCalendar_MILLISECOND];
  jint seconds = [end getWithInt:JavaUtilCalendar_SECOND] - [start getWithInt:JavaUtilCalendar_SECOND];
  jint minutes = [end getWithInt:JavaUtilCalendar_MINUTE] - [start getWithInt:JavaUtilCalendar_MINUTE];
  jint hours = [end getWithInt:JavaUtilCalendar_HOUR_OF_DAY] - [start getWithInt:JavaUtilCalendar_HOUR_OF_DAY];
  jint days = [end getWithInt:JavaUtilCalendar_DAY_OF_MONTH] - [start getWithInt:JavaUtilCalendar_DAY_OF_MONTH];
  jint months = [end getWithInt:JavaUtilCalendar_MONTH] - [start getWithInt:JavaUtilCalendar_MONTH];
  jint years = [end getWithInt:JavaUtilCalendar_YEAR] - [start getWithInt:JavaUtilCalendar_YEAR];
  while (milliseconds < 0) {
    milliseconds += 1000;
    seconds -= 1;
  }
  while (seconds < 0) {
    seconds += 60;
    minutes -= 1;
  }
  while (minutes < 0) {
    minutes += 60;
    hours -= 1;
  }
  while (hours < 0) {
    hours += 24;
    days -= 1;
  }
  if (OrgApacheCommonsLang3TimeDurationFormatUtils_Token_containsTokenWithValueWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withId_(tokens, OrgApacheCommonsLang3TimeDurationFormatUtils_M)) {
    while (days < 0) {
      days += [start getActualMaximumWithInt:JavaUtilCalendar_DAY_OF_MONTH];
      months -= 1;
      [start addWithInt:JavaUtilCalendar_MONTH withInt:1];
    }
    while (months < 0) {
      months += 12;
      years -= 1;
    }
    if (!OrgApacheCommonsLang3TimeDurationFormatUtils_Token_containsTokenWithValueWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withId_(tokens, OrgApacheCommonsLang3TimeDurationFormatUtils_y) && years != 0) {
      while (years != 0) {
        months += 12 * years;
        years = 0;
      }
    }
  }
  else {
    if (!OrgApacheCommonsLang3TimeDurationFormatUtils_Token_containsTokenWithValueWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withId_(tokens, OrgApacheCommonsLang3TimeDurationFormatUtils_y)) {
      jint target = [end getWithInt:JavaUtilCalendar_YEAR];
      if (months < 0) {
        target -= 1;
      }
      while ([start getWithInt:JavaUtilCalendar_YEAR] != target) {
        days += [start getActualMaximumWithInt:JavaUtilCalendar_DAY_OF_YEAR] - [start getWithInt:JavaUtilCalendar_DAY_OF_YEAR];
        if ([start isKindOfClass:[JavaUtilGregorianCalendar class]] && [start getWithInt:JavaUtilCalendar_MONTH] == JavaUtilCalendar_FEBRUARY && [start getWithInt:JavaUtilCalendar_DAY_OF_MONTH] == 29) {
          days += 1;
        }
        [start addWithInt:JavaUtilCalendar_YEAR withInt:1];
        days += [start getWithInt:JavaUtilCalendar_DAY_OF_YEAR];
      }
      years = 0;
    }
    while ([start getWithInt:JavaUtilCalendar_MONTH] != [end getWithInt:JavaUtilCalendar_MONTH]) {
      days += [start getActualMaximumWithInt:JavaUtilCalendar_DAY_OF_MONTH];
      [start addWithInt:JavaUtilCalendar_MONTH withInt:1];
    }
    months = 0;
    while (days < 0) {
      days += [start getActualMaximumWithInt:JavaUtilCalendar_DAY_OF_MONTH];
      months -= 1;
      [start addWithInt:JavaUtilCalendar_MONTH withInt:1];
    }
  }
  if (!OrgApacheCommonsLang3TimeDurationFormatUtils_Token_containsTokenWithValueWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withId_(tokens, OrgApacheCommonsLang3TimeDurationFormatUtils_d)) {
    hours += 24 * days;
    days = 0;
  }
  if (!OrgApacheCommonsLang3TimeDurationFormatUtils_Token_containsTokenWithValueWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withId_(tokens, OrgApacheCommonsLang3TimeDurationFormatUtils_H)) {
    minutes += 60 * hours;
    hours = 0;
  }
  if (!OrgApacheCommonsLang3TimeDurationFormatUtils_Token_containsTokenWithValueWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withId_(tokens, OrgApacheCommonsLang3TimeDurationFormatUtils_m)) {
    seconds += 60 * minutes;
    minutes = 0;
  }
  if (!OrgApacheCommonsLang3TimeDurationFormatUtils_Token_containsTokenWithValueWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withId_(tokens, OrgApacheCommonsLang3TimeDurationFormatUtils_s)) {
    milliseconds += 1000 * seconds;
    seconds = 0;
  }
  return OrgApacheCommonsLang3TimeDurationFormatUtils_formatWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withLong_withLong_withLong_withLong_withLong_withLong_withLong_withBoolean_(tokens, years, months, days, hours, minutes, seconds, milliseconds, padWithZeros);
}

NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_formatWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withLong_withLong_withLong_withLong_withLong_withLong_withLong_withBoolean_(IOSObjectArray *tokens, jlong years, jlong months, jlong days, jlong hours, jlong minutes, jlong seconds, jlong milliseconds, jboolean padWithZeros) {
  OrgApacheCommonsLang3TimeDurationFormatUtils_initialize();
  JavaLangStringBuilder *buffer = new_JavaLangStringBuilder_init();
  jboolean lastOutputSeconds = false;
  {
    IOSObjectArray *a__ = tokens;
    OrgApacheCommonsLang3TimeDurationFormatUtils_Token * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheCommonsLang3TimeDurationFormatUtils_Token * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheCommonsLang3TimeDurationFormatUtils_Token *token = *b__++;
      id value = [((OrgApacheCommonsLang3TimeDurationFormatUtils_Token *) nil_chk(token)) getValue];
      jint count = [token getCount];
      if ([value isKindOfClass:[JavaLangStringBuilder class]]) {
        (void) [buffer appendWithNSString:[nil_chk(value) description]];
      }
      else {
        if (value == OrgApacheCommonsLang3TimeDurationFormatUtils_y) {
          (void) [buffer appendWithNSString:OrgApacheCommonsLang3TimeDurationFormatUtils_paddedValueWithLong_withBoolean_withInt_(years, padWithZeros, count)];
          lastOutputSeconds = false;
        }
        else if (value == OrgApacheCommonsLang3TimeDurationFormatUtils_M) {
          (void) [buffer appendWithNSString:OrgApacheCommonsLang3TimeDurationFormatUtils_paddedValueWithLong_withBoolean_withInt_(months, padWithZeros, count)];
          lastOutputSeconds = false;
        }
        else if (value == OrgApacheCommonsLang3TimeDurationFormatUtils_d) {
          (void) [buffer appendWithNSString:OrgApacheCommonsLang3TimeDurationFormatUtils_paddedValueWithLong_withBoolean_withInt_(days, padWithZeros, count)];
          lastOutputSeconds = false;
        }
        else if (value == OrgApacheCommonsLang3TimeDurationFormatUtils_H) {
          (void) [buffer appendWithNSString:OrgApacheCommonsLang3TimeDurationFormatUtils_paddedValueWithLong_withBoolean_withInt_(hours, padWithZeros, count)];
          lastOutputSeconds = false;
        }
        else if (value == OrgApacheCommonsLang3TimeDurationFormatUtils_m) {
          (void) [buffer appendWithNSString:OrgApacheCommonsLang3TimeDurationFormatUtils_paddedValueWithLong_withBoolean_withInt_(minutes, padWithZeros, count)];
          lastOutputSeconds = false;
        }
        else if (value == OrgApacheCommonsLang3TimeDurationFormatUtils_s) {
          (void) [buffer appendWithNSString:OrgApacheCommonsLang3TimeDurationFormatUtils_paddedValueWithLong_withBoolean_withInt_(seconds, padWithZeros, count)];
          lastOutputSeconds = true;
        }
        else if (value == OrgApacheCommonsLang3TimeDurationFormatUtils_S) {
          if (lastOutputSeconds) {
            jint width = padWithZeros ? JavaLangMath_maxWithInt_withInt_(3, count) : 3;
            (void) [buffer appendWithNSString:OrgApacheCommonsLang3TimeDurationFormatUtils_paddedValueWithLong_withBoolean_withInt_(milliseconds, true, width)];
          }
          else {
            (void) [buffer appendWithNSString:OrgApacheCommonsLang3TimeDurationFormatUtils_paddedValueWithLong_withBoolean_withInt_(milliseconds, padWithZeros, count)];
          }
          lastOutputSeconds = false;
        }
      }
    }
  }
  return [buffer description];
}

NSString *OrgApacheCommonsLang3TimeDurationFormatUtils_paddedValueWithLong_withBoolean_withInt_(jlong value, jboolean padWithZeros, jint count) {
  OrgApacheCommonsLang3TimeDurationFormatUtils_initialize();
  NSString *longString = JavaLangLong_toStringWithLong_(value);
  return padWithZeros ? OrgApacheCommonsLang3StringUtils_leftPadWithNSString_withInt_withChar_(longString, count, '0') : longString;
}

IOSObjectArray *OrgApacheCommonsLang3TimeDurationFormatUtils_lexxWithNSString_(NSString *format) {
  OrgApacheCommonsLang3TimeDurationFormatUtils_initialize();
  JavaUtilArrayList *list = new_JavaUtilArrayList_initWithInt_([((NSString *) nil_chk(format)) java_length]);
  jboolean inLiteral = false;
  JavaLangStringBuilder *buffer = nil;
  OrgApacheCommonsLang3TimeDurationFormatUtils_Token *previous = nil;
  for (jint i = 0; i < [format java_length]; i++) {
    jchar ch = [format charAtWithInt:i];
    if (inLiteral && ch != '\'') {
      (void) [((JavaLangStringBuilder *) nil_chk(buffer)) appendWithChar:ch];
      continue;
    }
    id value = nil;
    switch (ch) {
      case '\'':
      if (inLiteral) {
        buffer = nil;
        inLiteral = false;
      }
      else {
        buffer = new_JavaLangStringBuilder_init();
        [list addWithId:new_OrgApacheCommonsLang3TimeDurationFormatUtils_Token_initWithId_(buffer)];
        inLiteral = true;
      }
      break;
      case 'y':
      value = OrgApacheCommonsLang3TimeDurationFormatUtils_y;
      break;
      case 'M':
      value = OrgApacheCommonsLang3TimeDurationFormatUtils_M;
      break;
      case 'd':
      value = OrgApacheCommonsLang3TimeDurationFormatUtils_d;
      break;
      case 'H':
      value = OrgApacheCommonsLang3TimeDurationFormatUtils_H;
      break;
      case 'm':
      value = OrgApacheCommonsLang3TimeDurationFormatUtils_m;
      break;
      case 's':
      value = OrgApacheCommonsLang3TimeDurationFormatUtils_s;
      break;
      case 'S':
      value = OrgApacheCommonsLang3TimeDurationFormatUtils_S;
      break;
      default:
      if (buffer == nil) {
        buffer = new_JavaLangStringBuilder_init();
        [list addWithId:new_OrgApacheCommonsLang3TimeDurationFormatUtils_Token_initWithId_(buffer)];
      }
      (void) [buffer appendWithChar:ch];
    }
    if (value != nil) {
      if (previous != nil && [previous getValue] == value) {
        [previous increment];
      }
      else {
        OrgApacheCommonsLang3TimeDurationFormatUtils_Token *token = new_OrgApacheCommonsLang3TimeDurationFormatUtils_Token_initWithId_(value);
        [list addWithId:token];
        previous = token;
      }
      buffer = nil;
    }
  }
  if (inLiteral) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"Unmatched quote in format: ", format));
  }
  return [list toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[list size] type:OrgApacheCommonsLang3TimeDurationFormatUtils_Token_class_()]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3TimeDurationFormatUtils)

@implementation OrgApacheCommonsLang3TimeDurationFormatUtils_Token

+ (jboolean)containsTokenWithValueWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray:(IOSObjectArray *)tokens
                                                                                       withId:(id)value {
  return OrgApacheCommonsLang3TimeDurationFormatUtils_Token_containsTokenWithValueWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withId_(tokens, value);
}

- (instancetype)initWithId:(id)value {
  OrgApacheCommonsLang3TimeDurationFormatUtils_Token_initWithId_(self, value);
  return self;
}

- (instancetype)initWithId:(id)value
                   withInt:(jint)count {
  OrgApacheCommonsLang3TimeDurationFormatUtils_Token_initWithId_withInt_(self, value, count);
  return self;
}

- (void)increment {
  count_++;
}

- (jint)getCount {
  return count_;
}

- (id)getValue {
  return value_;
}

- (jboolean)isEqual:(id)obj2 {
  if ([obj2 isKindOfClass:[OrgApacheCommonsLang3TimeDurationFormatUtils_Token class]]) {
    OrgApacheCommonsLang3TimeDurationFormatUtils_Token *tok2 = (OrgApacheCommonsLang3TimeDurationFormatUtils_Token *) cast_chk(obj2, [OrgApacheCommonsLang3TimeDurationFormatUtils_Token class]);
    if ([nil_chk(self->value_) java_getClass] != [((OrgApacheCommonsLang3TimeDurationFormatUtils_Token *) nil_chk(tok2))->value_ java_getClass]) {
      return false;
    }
    if (self->count_ != tok2->count_) {
      return false;
    }
    if ([self->value_ isKindOfClass:[JavaLangStringBuilder class]]) {
      return [((NSString *) nil_chk([self->value_ description])) isEqual:[tok2->value_ description]];
    }
    else if ([self->value_ isKindOfClass:[NSNumber class]]) {
      return [self->value_ isEqual:tok2->value_];
    }
    else {
      return self->value_ == tok2->value_;
    }
  }
  return false;
}

- (NSUInteger)hash {
  return ((jint) [nil_chk(self->value_) hash]);
}

- (NSString *)description {
  return OrgApacheCommonsLang3StringUtils_repeatWithNSString_withInt_([nil_chk(self->value_) description], self->count_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x8, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(containsTokenWithValueWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray:withId:);
  methods[1].selector = @selector(initWithId:);
  methods[2].selector = @selector(initWithId:withInt:);
  methods[3].selector = @selector(increment);
  methods[4].selector = @selector(getCount);
  methods[5].selector = @selector(getValue);
  methods[6].selector = @selector(isEqual:);
  methods[7].selector = @selector(hash);
  methods[8].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "value_", "LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "count_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "containsTokenWithValue", "[LOrgApacheCommonsLang3TimeDurationFormatUtils_Token;LNSObject;", "LNSObject;", "LNSObject;I", "equals", "hashCode", "toString", "LOrgApacheCommonsLang3TimeDurationFormatUtils;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3TimeDurationFormatUtils_Token = { "Token", "org.apache.commons.lang3.time", ptrTable, methods, fields, 7, 0x8, 9, 2, 7, -1, -1, -1, -1 };
  return &_OrgApacheCommonsLang3TimeDurationFormatUtils_Token;
}

@end

jboolean OrgApacheCommonsLang3TimeDurationFormatUtils_Token_containsTokenWithValueWithOrgApacheCommonsLang3TimeDurationFormatUtils_TokenArray_withId_(IOSObjectArray *tokens, id value) {
  OrgApacheCommonsLang3TimeDurationFormatUtils_Token_initialize();
  {
    IOSObjectArray *a__ = tokens;
    OrgApacheCommonsLang3TimeDurationFormatUtils_Token * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheCommonsLang3TimeDurationFormatUtils_Token * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheCommonsLang3TimeDurationFormatUtils_Token *token = *b__++;
      if ([((OrgApacheCommonsLang3TimeDurationFormatUtils_Token *) nil_chk(token)) getValue] == value) {
        return true;
      }
    }
  }
  return false;
}

void OrgApacheCommonsLang3TimeDurationFormatUtils_Token_initWithId_(OrgApacheCommonsLang3TimeDurationFormatUtils_Token *self, id value) {
  NSObject_init(self);
  self->value_ = value;
  self->count_ = 1;
}

OrgApacheCommonsLang3TimeDurationFormatUtils_Token *new_OrgApacheCommonsLang3TimeDurationFormatUtils_Token_initWithId_(id value) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3TimeDurationFormatUtils_Token, initWithId_, value)
}

OrgApacheCommonsLang3TimeDurationFormatUtils_Token *create_OrgApacheCommonsLang3TimeDurationFormatUtils_Token_initWithId_(id value) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3TimeDurationFormatUtils_Token, initWithId_, value)
}

void OrgApacheCommonsLang3TimeDurationFormatUtils_Token_initWithId_withInt_(OrgApacheCommonsLang3TimeDurationFormatUtils_Token *self, id value, jint count) {
  NSObject_init(self);
  self->value_ = value;
  self->count_ = count;
}

OrgApacheCommonsLang3TimeDurationFormatUtils_Token *new_OrgApacheCommonsLang3TimeDurationFormatUtils_Token_initWithId_withInt_(id value, jint count) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3TimeDurationFormatUtils_Token, initWithId_withInt_, value, count)
}

OrgApacheCommonsLang3TimeDurationFormatUtils_Token *create_OrgApacheCommonsLang3TimeDurationFormatUtils_Token_initWithId_withInt_(id value, jint count) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3TimeDurationFormatUtils_Token, initWithId_withInt_, value, count)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3TimeDurationFormatUtils_Token)
