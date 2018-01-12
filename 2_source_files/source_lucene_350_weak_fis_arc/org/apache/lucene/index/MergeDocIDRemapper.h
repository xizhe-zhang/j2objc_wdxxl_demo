//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/MergeDocIDRemapper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexMergeDocIDRemapper")
#ifdef RESTRICT_OrgApacheLuceneIndexMergeDocIDRemapper
#define INCLUDE_ALL_OrgApacheLuceneIndexMergeDocIDRemapper 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexMergeDocIDRemapper 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexMergeDocIDRemapper

#if !defined (OrgApacheLuceneIndexMergeDocIDRemapper_) && (INCLUDE_ALL_OrgApacheLuceneIndexMergeDocIDRemapper || defined(INCLUDE_OrgApacheLuceneIndexMergeDocIDRemapper))
#define OrgApacheLuceneIndexMergeDocIDRemapper_

@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneIndexMergePolicy_OneMerge;
@class OrgApacheLuceneIndexSegmentInfos;

@interface OrgApacheLuceneIndexMergeDocIDRemapper : NSObject {
 @public
  IOSIntArray *starts_;
  IOSIntArray *newStarts_;
  IOSObjectArray *docMaps_;
  jint minDocID_;
  jint maxDocID_;
  jint docShift_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos
                                           withIntArray2:(IOSObjectArray *)docMaps
                                            withIntArray:(IOSIntArray *)delCounts
            withOrgApacheLuceneIndexMergePolicy_OneMerge:(OrgApacheLuceneIndexMergePolicy_OneMerge *)merge
                                                 withInt:(jint)mergedDocCount;

- (jint)remapWithInt:(jint)oldDocID;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMergeDocIDRemapper)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeDocIDRemapper, starts_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeDocIDRemapper, newStarts_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeDocIDRemapper, docMaps_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMergeDocIDRemapper_initWithOrgApacheLuceneIndexSegmentInfos_withIntArray2_withIntArray_withOrgApacheLuceneIndexMergePolicy_OneMerge_withInt_(OrgApacheLuceneIndexMergeDocIDRemapper *self, OrgApacheLuceneIndexSegmentInfos *infos, IOSObjectArray *docMaps, IOSIntArray *delCounts, OrgApacheLuceneIndexMergePolicy_OneMerge *merge, jint mergedDocCount);

FOUNDATION_EXPORT OrgApacheLuceneIndexMergeDocIDRemapper *new_OrgApacheLuceneIndexMergeDocIDRemapper_initWithOrgApacheLuceneIndexSegmentInfos_withIntArray2_withIntArray_withOrgApacheLuceneIndexMergePolicy_OneMerge_withInt_(OrgApacheLuceneIndexSegmentInfos *infos, IOSObjectArray *docMaps, IOSIntArray *delCounts, OrgApacheLuceneIndexMergePolicy_OneMerge *merge, jint mergedDocCount) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexMergeDocIDRemapper *create_OrgApacheLuceneIndexMergeDocIDRemapper_initWithOrgApacheLuceneIndexSegmentInfos_withIntArray2_withIntArray_withOrgApacheLuceneIndexMergePolicy_OneMerge_withInt_(OrgApacheLuceneIndexSegmentInfos *infos, IOSObjectArray *docMaps, IOSIntArray *delCounts, OrgApacheLuceneIndexMergePolicy_OneMerge *merge, jint mergedDocCount);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMergeDocIDRemapper)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexMergeDocIDRemapper")
