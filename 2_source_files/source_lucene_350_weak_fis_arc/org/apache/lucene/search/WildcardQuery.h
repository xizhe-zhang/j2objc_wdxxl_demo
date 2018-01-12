//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/WildcardQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchWildcardQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchWildcardQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchWildcardQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchWildcardQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchWildcardQuery

#if !defined (OrgApacheLuceneSearchWildcardQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchWildcardQuery || defined(INCLUDE_OrgApacheLuceneSearchWildcardQuery))
#define OrgApacheLuceneSearchWildcardQuery_

#define RESTRICT_OrgApacheLuceneSearchMultiTermQuery 1
#define INCLUDE_OrgApacheLuceneSearchMultiTermQuery 1
#include "org/apache/lucene/search/MultiTermQuery.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneSearchFilteredTermEnum;

@interface OrgApacheLuceneSearchWildcardQuery : OrgApacheLuceneSearchMultiTermQuery {
 @public
  OrgApacheLuceneIndexTerm *term_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (jboolean)isEqual:(id)obj;

- (OrgApacheLuceneIndexTerm *)getTerm;

- (NSUInteger)hash;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

- (OrgApacheLuceneSearchFilteredTermEnum *)getEnumWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchWildcardQuery)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchWildcardQuery, term_, OrgApacheLuceneIndexTerm *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchWildcardQuery *self, OrgApacheLuceneIndexTerm *term);

FOUNDATION_EXPORT OrgApacheLuceneSearchWildcardQuery *new_OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchWildcardQuery *create_OrgApacheLuceneSearchWildcardQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchWildcardQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchWildcardQuery")
