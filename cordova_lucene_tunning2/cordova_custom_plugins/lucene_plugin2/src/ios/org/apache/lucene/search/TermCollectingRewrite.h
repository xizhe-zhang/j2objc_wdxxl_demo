//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/TermCollectingRewrite.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchTermCollectingRewrite")
#ifdef RESTRICT_OrgApacheLuceneSearchTermCollectingRewrite
#define INCLUDE_ALL_OrgApacheLuceneSearchTermCollectingRewrite 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchTermCollectingRewrite 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchTermCollectingRewrite

#if !defined (OrgApacheLuceneSearchTermCollectingRewrite_) && (INCLUDE_ALL_OrgApacheLuceneSearchTermCollectingRewrite || defined(INCLUDE_OrgApacheLuceneSearchTermCollectingRewrite))
#define OrgApacheLuceneSearchTermCollectingRewrite_

#define RESTRICT_OrgApacheLuceneSearchMultiTermQuery 1
#define INCLUDE_OrgApacheLuceneSearchMultiTermQuery_RewriteMethod 1
#include "org/apache/lucene/search/MultiTermQuery.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneSearchMultiTermQuery;
@class OrgApacheLuceneSearchQuery;
@protocol OrgApacheLuceneSearchTermCollectingRewrite_TermCollector;

@interface OrgApacheLuceneSearchTermCollectingRewrite : OrgApacheLuceneSearchMultiTermQuery_RewriteMethod

#pragma mark Protected

- (void)addClauseWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)topLevel
                   withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                      withFloat:(jfloat)boost;

- (void)collectTermsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query
withOrgApacheLuceneSearchTermCollectingRewrite_TermCollector:(id<OrgApacheLuceneSearchTermCollectingRewrite_TermCollector>)collector;

- (OrgApacheLuceneSearchQuery *)getTopLevelQuery;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTermCollectingRewrite)

FOUNDATION_EXPORT void OrgApacheLuceneSearchTermCollectingRewrite_init(OrgApacheLuceneSearchTermCollectingRewrite *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTermCollectingRewrite)

#endif

#if !defined (OrgApacheLuceneSearchTermCollectingRewrite_TermCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchTermCollectingRewrite || defined(INCLUDE_OrgApacheLuceneSearchTermCollectingRewrite_TermCollector))
#define OrgApacheLuceneSearchTermCollectingRewrite_TermCollector_

@class OrgApacheLuceneIndexTerm;

@protocol OrgApacheLuceneSearchTermCollectingRewrite_TermCollector < JavaObject >

- (jboolean)collectWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)t
                                      withFloat:(jfloat)boost;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchTermCollectingRewrite")
