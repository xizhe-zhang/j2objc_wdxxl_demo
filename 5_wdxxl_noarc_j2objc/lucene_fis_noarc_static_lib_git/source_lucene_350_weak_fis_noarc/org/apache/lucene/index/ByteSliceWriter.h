//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/ByteSliceWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexByteSliceWriter")
#ifdef RESTRICT_OrgApacheLuceneIndexByteSliceWriter
#define INCLUDE_ALL_OrgApacheLuceneIndexByteSliceWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexByteSliceWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexByteSliceWriter

#if !defined (OrgApacheLuceneIndexByteSliceWriter_) && (INCLUDE_ALL_OrgApacheLuceneIndexByteSliceWriter || defined(INCLUDE_OrgApacheLuceneIndexByteSliceWriter))
#define OrgApacheLuceneIndexByteSliceWriter_

@class IOSByteArray;
@class OrgApacheLuceneIndexByteBlockPool;

@interface OrgApacheLuceneIndexByteSliceWriter : NSObject {
 @public
  jint offset0_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexByteBlockPool:(OrgApacheLuceneIndexByteBlockPool *)pool;

- (jint)getAddress;

- (void)init__WithInt:(jint)address OBJC_METHOD_FAMILY_NONE;

- (void)writeByteWithByte:(jbyte)b;

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)len;

- (void)writeVIntWithInt:(jint)i;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexByteSliceWriter)

FOUNDATION_EXPORT void OrgApacheLuceneIndexByteSliceWriter_initWithOrgApacheLuceneIndexByteBlockPool_(OrgApacheLuceneIndexByteSliceWriter *self, OrgApacheLuceneIndexByteBlockPool *pool);

FOUNDATION_EXPORT OrgApacheLuceneIndexByteSliceWriter *new_OrgApacheLuceneIndexByteSliceWriter_initWithOrgApacheLuceneIndexByteBlockPool_(OrgApacheLuceneIndexByteBlockPool *pool) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexByteSliceWriter *create_OrgApacheLuceneIndexByteSliceWriter_initWithOrgApacheLuceneIndexByteBlockPool_(OrgApacheLuceneIndexByteBlockPool *pool);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexByteSliceWriter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexByteSliceWriter")
