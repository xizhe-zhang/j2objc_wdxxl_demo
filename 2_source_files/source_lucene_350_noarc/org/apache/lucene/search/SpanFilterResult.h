//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/SpanFilterResult.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpanFilterResult")
#ifdef RESTRICT_OrgApacheLuceneSearchSpanFilterResult
#define INCLUDE_ALL_OrgApacheLuceneSearchSpanFilterResult 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpanFilterResult 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpanFilterResult

#if !defined (OrgApacheLuceneSearchSpanFilterResult_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpanFilterResult || defined(INCLUDE_OrgApacheLuceneSearchSpanFilterResult))
#define OrgApacheLuceneSearchSpanFilterResult_

@class OrgApacheLuceneSearchDocIdSet;
@protocol JavaUtilList;

@interface OrgApacheLuceneSearchSpanFilterResult : NSObject

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)docIdSet
                                     withJavaUtilList:(id<JavaUtilList>)positions;

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSet;

- (id<JavaUtilList>)getPositions;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpanFilterResult)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpanFilterResult_initWithOrgApacheLuceneSearchDocIdSet_withJavaUtilList_(OrgApacheLuceneSearchSpanFilterResult *self, OrgApacheLuceneSearchDocIdSet *docIdSet, id<JavaUtilList> positions);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpanFilterResult *new_OrgApacheLuceneSearchSpanFilterResult_initWithOrgApacheLuceneSearchDocIdSet_withJavaUtilList_(OrgApacheLuceneSearchDocIdSet *docIdSet, id<JavaUtilList> positions) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpanFilterResult *create_OrgApacheLuceneSearchSpanFilterResult_initWithOrgApacheLuceneSearchDocIdSet_withJavaUtilList_(OrgApacheLuceneSearchDocIdSet *docIdSet, id<JavaUtilList> positions);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpanFilterResult)

#endif

#if !defined (OrgApacheLuceneSearchSpanFilterResult_PositionInfo_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpanFilterResult || defined(INCLUDE_OrgApacheLuceneSearchSpanFilterResult_PositionInfo))
#define OrgApacheLuceneSearchSpanFilterResult_PositionInfo_

@protocol JavaUtilList;

@interface OrgApacheLuceneSearchSpanFilterResult_PositionInfo : NSObject

#pragma mark Public

- (instancetype)initWithInt:(jint)doc;

- (void)addPositionWithInt:(jint)start
                   withInt:(jint)end;

- (jint)getDoc;

- (id<JavaUtilList>)getPositions;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpanFilterResult_PositionInfo)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpanFilterResult_PositionInfo_initWithInt_(OrgApacheLuceneSearchSpanFilterResult_PositionInfo *self, jint doc);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpanFilterResult_PositionInfo *new_OrgApacheLuceneSearchSpanFilterResult_PositionInfo_initWithInt_(jint doc) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpanFilterResult_PositionInfo *create_OrgApacheLuceneSearchSpanFilterResult_PositionInfo_initWithInt_(jint doc);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpanFilterResult_PositionInfo)

#endif

#if !defined (OrgApacheLuceneSearchSpanFilterResult_StartEnd_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpanFilterResult || defined(INCLUDE_OrgApacheLuceneSearchSpanFilterResult_StartEnd))
#define OrgApacheLuceneSearchSpanFilterResult_StartEnd_

@interface OrgApacheLuceneSearchSpanFilterResult_StartEnd : NSObject

#pragma mark Public

- (instancetype)initWithInt:(jint)start
                    withInt:(jint)end;

- (jint)getEnd;

- (jint)getStart;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpanFilterResult_StartEnd)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpanFilterResult_StartEnd_initWithInt_withInt_(OrgApacheLuceneSearchSpanFilterResult_StartEnd *self, jint start, jint end);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpanFilterResult_StartEnd *new_OrgApacheLuceneSearchSpanFilterResult_StartEnd_initWithInt_withInt_(jint start, jint end) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpanFilterResult_StartEnd *create_OrgApacheLuceneSearchSpanFilterResult_StartEnd_initWithInt_withInt_(jint start, jint end);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpanFilterResult_StartEnd)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpanFilterResult")
