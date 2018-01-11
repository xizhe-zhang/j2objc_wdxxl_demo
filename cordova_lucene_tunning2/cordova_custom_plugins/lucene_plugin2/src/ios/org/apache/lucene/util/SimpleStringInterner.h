//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/util/SimpleStringInterner.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilSimpleStringInterner")
#ifdef RESTRICT_OrgApacheLuceneUtilSimpleStringInterner
#define INCLUDE_ALL_OrgApacheLuceneUtilSimpleStringInterner 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilSimpleStringInterner 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilSimpleStringInterner

#if !defined (OrgApacheLuceneUtilSimpleStringInterner_) && (INCLUDE_ALL_OrgApacheLuceneUtilSimpleStringInterner || defined(INCLUDE_OrgApacheLuceneUtilSimpleStringInterner))
#define OrgApacheLuceneUtilSimpleStringInterner_

#define RESTRICT_OrgApacheLuceneUtilStringInterner 1
#define INCLUDE_OrgApacheLuceneUtilStringInterner 1
#include "org/apache/lucene/util/StringInterner.h"

@interface OrgApacheLuceneUtilSimpleStringInterner : OrgApacheLuceneUtilStringInterner

#pragma mark Public

- (instancetype)initWithInt:(jint)tableSize
                    withInt:(jint)maxChainLength;

- (NSString *)internWithNSString:(NSString *)s;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilSimpleStringInterner)

FOUNDATION_EXPORT void OrgApacheLuceneUtilSimpleStringInterner_initWithInt_withInt_(OrgApacheLuceneUtilSimpleStringInterner *self, jint tableSize, jint maxChainLength);

FOUNDATION_EXPORT OrgApacheLuceneUtilSimpleStringInterner *new_OrgApacheLuceneUtilSimpleStringInterner_initWithInt_withInt_(jint tableSize, jint maxChainLength) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilSimpleStringInterner *create_OrgApacheLuceneUtilSimpleStringInterner_initWithInt_withInt_(jint tableSize, jint maxChainLength);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilSimpleStringInterner)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilSimpleStringInterner")
