//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/TermVectorMapper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermVectorMapper")
#ifdef RESTRICT_OrgApacheLuceneIndexTermVectorMapper
#define INCLUDE_ALL_OrgApacheLuceneIndexTermVectorMapper 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexTermVectorMapper 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexTermVectorMapper

#if !defined (OrgApacheLuceneIndexTermVectorMapper_) && (INCLUDE_ALL_OrgApacheLuceneIndexTermVectorMapper || defined(INCLUDE_OrgApacheLuceneIndexTermVectorMapper))
#define OrgApacheLuceneIndexTermVectorMapper_

@class IOSIntArray;
@class IOSObjectArray;

@interface OrgApacheLuceneIndexTermVectorMapper : NSObject

#pragma mark Public

- (jboolean)isIgnoringOffsets;

- (jboolean)isIgnoringPositions;

- (void)mapWithNSString:(NSString *)term
                withInt:(jint)frequency
withOrgApacheLuceneIndexTermVectorOffsetInfoArray:(IOSObjectArray *)offsets
           withIntArray:(IOSIntArray *)positions;

- (void)setDocumentNumberWithInt:(jint)documentNumber;

- (void)setExpectationsWithNSString:(NSString *)field
                            withInt:(jint)numTerms
                        withBoolean:(jboolean)storeOffsets
                        withBoolean:(jboolean)storePositions;

#pragma mark Protected

- (instancetype)init;

- (instancetype)initWithBoolean:(jboolean)ignoringPositions
                    withBoolean:(jboolean)ignoringOffsets;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTermVectorMapper)

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermVectorMapper_init(OrgApacheLuceneIndexTermVectorMapper *self);

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermVectorMapper_initWithBoolean_withBoolean_(OrgApacheLuceneIndexTermVectorMapper *self, jboolean ignoringPositions, jboolean ignoringOffsets);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermVectorMapper)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermVectorMapper")
