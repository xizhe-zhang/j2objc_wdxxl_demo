//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/StringHelper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilStringHelper")
#ifdef RESTRICT_OrgApacheLuceneUtilStringHelper
#define INCLUDE_ALL_OrgApacheLuceneUtilStringHelper 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilStringHelper 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilStringHelper

#if !defined (OrgApacheLuceneUtilStringHelper_) && (INCLUDE_ALL_OrgApacheLuceneUtilStringHelper || defined(INCLUDE_OrgApacheLuceneUtilStringHelper))
#define OrgApacheLuceneUtilStringHelper_

@class IOSByteArray;
@class OrgApacheLuceneUtilStringInterner;
@protocol JavaUtilComparator;

@interface OrgApacheLuceneUtilStringHelper : NSObject

#pragma mark Public

+ (jint)bytesDifferenceWithByteArray:(IOSByteArray *)bytes1
                             withInt:(jint)len1
                       withByteArray:(IOSByteArray *)bytes2
                             withInt:(jint)len2;

+ (id<JavaUtilComparator>)getVersionComparator;

+ (NSString *)internWithNSString:(NSString *)s;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilStringHelper)

inline OrgApacheLuceneUtilStringInterner *OrgApacheLuceneUtilStringHelper_get_interner(void);
inline OrgApacheLuceneUtilStringInterner *OrgApacheLuceneUtilStringHelper_set_interner(OrgApacheLuceneUtilStringInterner *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilStringInterner *OrgApacheLuceneUtilStringHelper_interner;
J2OBJC_STATIC_FIELD_OBJ(OrgApacheLuceneUtilStringHelper, interner, OrgApacheLuceneUtilStringInterner *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilStringHelper_internWithNSString_(NSString *s);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilStringHelper_bytesDifferenceWithByteArray_withInt_withByteArray_withInt_(IOSByteArray *bytes1, jint len1, IOSByteArray *bytes2, jint len2);

FOUNDATION_EXPORT id<JavaUtilComparator> OrgApacheLuceneUtilStringHelper_getVersionComparator(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilStringHelper)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilStringHelper")
