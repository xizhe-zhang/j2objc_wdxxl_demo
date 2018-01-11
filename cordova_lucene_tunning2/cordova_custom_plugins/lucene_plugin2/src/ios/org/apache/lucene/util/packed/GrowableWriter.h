//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/util/packed/GrowableWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedGrowableWriter")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedGrowableWriter
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedGrowableWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedGrowableWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedGrowableWriter

#if !defined (OrgApacheLuceneUtilPackedGrowableWriter_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedGrowableWriter || defined(INCLUDE_OrgApacheLuceneUtilPackedGrowableWriter))
#define OrgApacheLuceneUtilPackedGrowableWriter_

#define RESTRICT_OrgApacheLuceneUtilPackedPackedInts 1
#define INCLUDE_OrgApacheLuceneUtilPackedPackedInts_Mutable 1
#include "org/apache/lucene/util/packed/PackedInts.h"

@interface OrgApacheLuceneUtilPackedGrowableWriter : NSObject < OrgApacheLuceneUtilPackedPackedInts_Mutable >

#pragma mark Public

- (instancetype)initWithInt:(jint)startBitsPerValue
                    withInt:(jint)valueCount
                withBoolean:(jboolean)roundFixedSize;

- (void)clear;

- (jlong)getWithInt:(jint)index;

- (id)getArray;

- (jint)getBitsPerValue;

- (id<OrgApacheLuceneUtilPackedPackedInts_Mutable>)getMutable;

- (jboolean)hasArray;

- (OrgApacheLuceneUtilPackedGrowableWriter *)resizeWithInt:(jint)newSize;

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

- (jint)size;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedGrowableWriter)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withBoolean_(OrgApacheLuceneUtilPackedGrowableWriter *self, jint startBitsPerValue, jint valueCount, jboolean roundFixedSize);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedGrowableWriter *new_OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withBoolean_(jint startBitsPerValue, jint valueCount, jboolean roundFixedSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedGrowableWriter *create_OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withBoolean_(jint startBitsPerValue, jint valueCount, jboolean roundFixedSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedGrowableWriter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedGrowableWriter")
