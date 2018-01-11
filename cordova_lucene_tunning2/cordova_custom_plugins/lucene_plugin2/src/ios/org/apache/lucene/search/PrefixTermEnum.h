//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/PrefixTermEnum.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchPrefixTermEnum")
#ifdef RESTRICT_OrgApacheLuceneSearchPrefixTermEnum
#define INCLUDE_ALL_OrgApacheLuceneSearchPrefixTermEnum 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchPrefixTermEnum 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchPrefixTermEnum

#if !defined (OrgApacheLuceneSearchPrefixTermEnum_) && (INCLUDE_ALL_OrgApacheLuceneSearchPrefixTermEnum || defined(INCLUDE_OrgApacheLuceneSearchPrefixTermEnum))
#define OrgApacheLuceneSearchPrefixTermEnum_

#define RESTRICT_OrgApacheLuceneSearchFilteredTermEnum 1
#define INCLUDE_OrgApacheLuceneSearchFilteredTermEnum 1
#include "org/apache/lucene/search/FilteredTermEnum.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexTerm;

@interface OrgApacheLuceneSearchPrefixTermEnum : OrgApacheLuceneSearchFilteredTermEnum

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)prefix;

- (jfloat)difference;

#pragma mark Protected

- (jboolean)endEnum;

- (OrgApacheLuceneIndexTerm *)getPrefixTerm;

- (jboolean)termCompareWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPrefixTermEnum)

FOUNDATION_EXPORT void OrgApacheLuceneSearchPrefixTermEnum_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchPrefixTermEnum *self, OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneIndexTerm *prefix);

FOUNDATION_EXPORT OrgApacheLuceneSearchPrefixTermEnum *new_OrgApacheLuceneSearchPrefixTermEnum_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneIndexTerm *prefix) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchPrefixTermEnum *create_OrgApacheLuceneSearchPrefixTermEnum_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneIndexTerm *prefix);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPrefixTermEnum)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchPrefixTermEnum")
