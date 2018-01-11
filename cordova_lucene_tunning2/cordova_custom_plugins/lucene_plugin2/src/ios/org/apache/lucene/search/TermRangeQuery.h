//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/TermRangeQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchTermRangeQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchTermRangeQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchTermRangeQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchTermRangeQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchTermRangeQuery

#if !defined (OrgApacheLuceneSearchTermRangeQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchTermRangeQuery || defined(INCLUDE_OrgApacheLuceneSearchTermRangeQuery))
#define OrgApacheLuceneSearchTermRangeQuery_

#define RESTRICT_OrgApacheLuceneSearchMultiTermQuery 1
#define INCLUDE_OrgApacheLuceneSearchMultiTermQuery 1
#include "org/apache/lucene/search/MultiTermQuery.h"

@class JavaTextCollator;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchFilteredTermEnum;

@interface OrgApacheLuceneSearchTermRangeQuery : OrgApacheLuceneSearchMultiTermQuery

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
                    withNSString:(NSString *)lowerTerm
                    withNSString:(NSString *)upperTerm
                     withBoolean:(jboolean)includeLower
                     withBoolean:(jboolean)includeUpper;

- (instancetype)initWithNSString:(NSString *)field
                    withNSString:(NSString *)lowerTerm
                    withNSString:(NSString *)upperTerm
                     withBoolean:(jboolean)includeLower
                     withBoolean:(jboolean)includeUpper
            withJavaTextCollator:(JavaTextCollator *)collator;

- (jboolean)isEqual:(id)obj;

- (JavaTextCollator *)getCollator;

- (NSString *)getField;

- (NSString *)getLowerTerm;

- (NSString *)getUpperTerm;

- (NSUInteger)hash;

- (jboolean)includesLower;

- (jboolean)includesUpper;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

- (OrgApacheLuceneSearchFilteredTermEnum *)getEnumWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTermRangeQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_(OrgApacheLuceneSearchTermRangeQuery *self, NSString *field, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper);

FOUNDATION_EXPORT OrgApacheLuceneSearchTermRangeQuery *new_OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_(NSString *field, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchTermRangeQuery *create_OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_(NSString *field, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper);

FOUNDATION_EXPORT void OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_(OrgApacheLuceneSearchTermRangeQuery *self, NSString *field, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper, JavaTextCollator *collator);

FOUNDATION_EXPORT OrgApacheLuceneSearchTermRangeQuery *new_OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_(NSString *field, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper, JavaTextCollator *collator) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchTermRangeQuery *create_OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_(NSString *field, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper, JavaTextCollator *collator);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTermRangeQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchTermRangeQuery")
