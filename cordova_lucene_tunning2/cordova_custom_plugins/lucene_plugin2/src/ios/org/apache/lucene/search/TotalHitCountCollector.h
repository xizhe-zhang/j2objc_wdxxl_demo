//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/TotalHitCountCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchTotalHitCountCollector")
#ifdef RESTRICT_OrgApacheLuceneSearchTotalHitCountCollector
#define INCLUDE_ALL_OrgApacheLuceneSearchTotalHitCountCollector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchTotalHitCountCollector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchTotalHitCountCollector

#if !defined (OrgApacheLuceneSearchTotalHitCountCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchTotalHitCountCollector || defined(INCLUDE_OrgApacheLuceneSearchTotalHitCountCollector))
#define OrgApacheLuceneSearchTotalHitCountCollector_

#define RESTRICT_OrgApacheLuceneSearchCollector 1
#define INCLUDE_OrgApacheLuceneSearchCollector 1
#include "org/apache/lucene/search/Collector.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchScorer;

@interface OrgApacheLuceneSearchTotalHitCountCollector : OrgApacheLuceneSearchCollector

#pragma mark Public

- (instancetype)init;

- (jboolean)acceptsDocsOutOfOrder;

- (void)collectWithInt:(jint)doc;

- (jint)getTotalHits;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTotalHitCountCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchTotalHitCountCollector_init(OrgApacheLuceneSearchTotalHitCountCollector *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchTotalHitCountCollector *new_OrgApacheLuceneSearchTotalHitCountCollector_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchTotalHitCountCollector *create_OrgApacheLuceneSearchTotalHitCountCollector_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTotalHitCountCollector)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchTotalHitCountCollector")
