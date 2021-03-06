//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/spans/SpanQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchSpansSpanQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpansSpanQuery

#if !defined (OrgApacheLuceneSearchSpansSpanQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanQuery || defined(INCLUDE_OrgApacheLuceneSearchSpansSpanQuery))
#define OrgApacheLuceneSearchSpansSpanQuery_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchSearcher;
@class OrgApacheLuceneSearchSpansSpans;
@class OrgApacheLuceneSearchWeight;

@interface OrgApacheLuceneSearchSpansSpanQuery : OrgApacheLuceneSearchQuery

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher;

- (NSString *)getField;

- (OrgApacheLuceneSearchSpansSpans *)getSpansWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansSpanQuery_init(OrgApacheLuceneSearchSpansSpanQuery *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanQuery")
