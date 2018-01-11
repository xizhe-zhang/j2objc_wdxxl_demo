//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/NGramPhraseQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchNGramPhraseQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchNGramPhraseQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchNGramPhraseQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchNGramPhraseQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchNGramPhraseQuery

#if !defined (OrgApacheLuceneSearchNGramPhraseQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchNGramPhraseQuery || defined(INCLUDE_OrgApacheLuceneSearchNGramPhraseQuery))
#define OrgApacheLuceneSearchNGramPhraseQuery_

#define RESTRICT_OrgApacheLuceneSearchPhraseQuery 1
#define INCLUDE_OrgApacheLuceneSearchPhraseQuery 1
#include "org/apache/lucene/search/PhraseQuery.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchQuery;

@interface OrgApacheLuceneSearchNGramPhraseQuery : OrgApacheLuceneSearchPhraseQuery

#pragma mark Public

- (instancetype)initWithInt:(jint)n;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchNGramPhraseQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchNGramPhraseQuery_initWithInt_(OrgApacheLuceneSearchNGramPhraseQuery *self, jint n);

FOUNDATION_EXPORT OrgApacheLuceneSearchNGramPhraseQuery *new_OrgApacheLuceneSearchNGramPhraseQuery_initWithInt_(jint n) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchNGramPhraseQuery *create_OrgApacheLuceneSearchNGramPhraseQuery_initWithInt_(jint n);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchNGramPhraseQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchNGramPhraseQuery")
