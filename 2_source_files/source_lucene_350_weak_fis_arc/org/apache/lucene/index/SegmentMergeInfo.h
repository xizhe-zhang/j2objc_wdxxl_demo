//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/SegmentMergeInfo.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexSegmentMergeInfo")
#ifdef RESTRICT_OrgApacheLuceneIndexSegmentMergeInfo
#define INCLUDE_ALL_OrgApacheLuceneIndexSegmentMergeInfo 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexSegmentMergeInfo 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexSegmentMergeInfo

#if !defined (OrgApacheLuceneIndexSegmentMergeInfo_) && (INCLUDE_ALL_OrgApacheLuceneIndexSegmentMergeInfo || defined(INCLUDE_OrgApacheLuceneIndexSegmentMergeInfo))
#define OrgApacheLuceneIndexSegmentMergeInfo_

@class IOSIntArray;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexPayloadProcessorProvider_DirPayloadProcessor;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneIndexTermEnum;
@protocol OrgApacheLuceneIndexTermPositions;

@interface OrgApacheLuceneIndexSegmentMergeInfo : NSObject {
 @public
  OrgApacheLuceneIndexTerm *term_;
  jint base_;
  jint ord_;
  OrgApacheLuceneIndexTermEnum *termEnum_;
  OrgApacheLuceneIndexIndexReader *reader_;
  jint delCount_;
  OrgApacheLuceneIndexPayloadProcessorProvider_DirPayloadProcessor *dirPayloadProcessor_;
}

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)b
withOrgApacheLuceneIndexTermEnum:(OrgApacheLuceneIndexTermEnum *)te
withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)r;

- (void)close;

- (IOSIntArray *)getDocMap;

- (id<OrgApacheLuceneIndexTermPositions>)getPositions;

- (jboolean)next;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSegmentMergeInfo)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentMergeInfo, term_, OrgApacheLuceneIndexTerm *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentMergeInfo, termEnum_, OrgApacheLuceneIndexTermEnum *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentMergeInfo, reader_, OrgApacheLuceneIndexIndexReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentMergeInfo, dirPayloadProcessor_, OrgApacheLuceneIndexPayloadProcessorProvider_DirPayloadProcessor *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSegmentMergeInfo_initWithInt_withOrgApacheLuceneIndexTermEnum_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneIndexSegmentMergeInfo *self, jint b, OrgApacheLuceneIndexTermEnum *te, OrgApacheLuceneIndexIndexReader *r);

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentMergeInfo *new_OrgApacheLuceneIndexSegmentMergeInfo_initWithInt_withOrgApacheLuceneIndexTermEnum_withOrgApacheLuceneIndexIndexReader_(jint b, OrgApacheLuceneIndexTermEnum *te, OrgApacheLuceneIndexIndexReader *r) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentMergeInfo *create_OrgApacheLuceneIndexSegmentMergeInfo_initWithInt_withOrgApacheLuceneIndexTermEnum_withOrgApacheLuceneIndexIndexReader_(jint b, OrgApacheLuceneIndexTermEnum *te, OrgApacheLuceneIndexIndexReader *r);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSegmentMergeInfo)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexSegmentMergeInfo")
