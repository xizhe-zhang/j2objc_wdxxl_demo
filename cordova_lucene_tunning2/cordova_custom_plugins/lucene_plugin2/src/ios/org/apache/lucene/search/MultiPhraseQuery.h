//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/MultiPhraseQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchMultiPhraseQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchMultiPhraseQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchMultiPhraseQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchMultiPhraseQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchMultiPhraseQuery

#if !defined (OrgApacheLuceneSearchMultiPhraseQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchMultiPhraseQuery || defined(INCLUDE_OrgApacheLuceneSearchMultiPhraseQuery))
#define OrgApacheLuceneSearchMultiPhraseQuery_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneSearchSearcher;
@class OrgApacheLuceneSearchWeight;
@protocol JavaUtilList;
@protocol JavaUtilSet;

@interface OrgApacheLuceneSearchMultiPhraseQuery : OrgApacheLuceneSearchQuery

#pragma mark Public

- (instancetype)init;

- (void)addWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (void)addWithOrgApacheLuceneIndexTermArray:(IOSObjectArray *)terms;

- (void)addWithOrgApacheLuceneIndexTermArray:(IOSObjectArray *)terms
                                     withInt:(jint)position;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher;

- (jboolean)isEqual:(id)o;

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms;

- (IOSIntArray *)getPositions;

- (jint)getSlop;

- (id<JavaUtilList>)getTermArrays;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (void)setSlopWithInt:(jint)s;

- (NSString *)toStringWithNSString:(NSString *)f;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchMultiPhraseQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchMultiPhraseQuery_init(OrgApacheLuceneSearchMultiPhraseQuery *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchMultiPhraseQuery *new_OrgApacheLuceneSearchMultiPhraseQuery_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchMultiPhraseQuery *create_OrgApacheLuceneSearchMultiPhraseQuery_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchMultiPhraseQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchMultiPhraseQuery")
