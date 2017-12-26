//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/document/DateField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneDocumentDateField")
#ifdef RESTRICT_OrgApacheLuceneDocumentDateField
#define INCLUDE_ALL_OrgApacheLuceneDocumentDateField 0
#else
#define INCLUDE_ALL_OrgApacheLuceneDocumentDateField 1
#endif
#undef RESTRICT_OrgApacheLuceneDocumentDateField

#if !defined (OrgApacheLuceneDocumentDateField_) && (INCLUDE_ALL_OrgApacheLuceneDocumentDateField || defined(INCLUDE_OrgApacheLuceneDocumentDateField))
#define OrgApacheLuceneDocumentDateField_

@class JavaUtilDate;

@interface OrgApacheLuceneDocumentDateField : NSObject

#pragma mark Public

+ (NSString *)dateToStringWithJavaUtilDate:(JavaUtilDate *)date;

+ (NSString *)MAX_DATE_STRING;

+ (NSString *)MIN_DATE_STRING;

+ (JavaUtilDate *)stringToDateWithNSString:(NSString *)s;

+ (jlong)stringToTimeWithNSString:(NSString *)s;

+ (NSString *)timeToStringWithLong:(jlong)time;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneDocumentDateField)

FOUNDATION_EXPORT NSString *OrgApacheLuceneDocumentDateField_MIN_DATE_STRING(void);

FOUNDATION_EXPORT NSString *OrgApacheLuceneDocumentDateField_MAX_DATE_STRING(void);

FOUNDATION_EXPORT NSString *OrgApacheLuceneDocumentDateField_dateToStringWithJavaUtilDate_(JavaUtilDate *date);

FOUNDATION_EXPORT NSString *OrgApacheLuceneDocumentDateField_timeToStringWithLong_(jlong time);

FOUNDATION_EXPORT jlong OrgApacheLuceneDocumentDateField_stringToTimeWithNSString_(NSString *s);

FOUNDATION_EXPORT JavaUtilDate *OrgApacheLuceneDocumentDateField_stringToDateWithNSString_(NSString *s);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentDateField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneDocumentDateField")
