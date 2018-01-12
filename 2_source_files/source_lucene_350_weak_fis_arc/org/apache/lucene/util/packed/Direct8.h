//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/util/packed/Direct8.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedDirect8")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedDirect8
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedDirect8 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedDirect8 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedDirect8

#if !defined (OrgApacheLuceneUtilPackedDirect8_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedDirect8 || defined(INCLUDE_OrgApacheLuceneUtilPackedDirect8))
#define OrgApacheLuceneUtilPackedDirect8_

#define RESTRICT_OrgApacheLuceneUtilPackedPackedInts 1
#define INCLUDE_OrgApacheLuceneUtilPackedPackedInts_ReaderImpl 1
#include "org/apache/lucene/util/packed/PackedInts.h"

#define RESTRICT_OrgApacheLuceneUtilPackedPackedInts 1
#define INCLUDE_OrgApacheLuceneUtilPackedPackedInts_Mutable 1
#include "org/apache/lucene/util/packed/PackedInts.h"

@class IOSByteArray;
@class OrgApacheLuceneStoreDataInput;

@interface OrgApacheLuceneUtilPackedDirect8 : OrgApacheLuceneUtilPackedPackedInts_ReaderImpl < OrgApacheLuceneUtilPackedPackedInts_Mutable >

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)values;

- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                              withInt:(jint)valueCount;

- (instancetype)initWithInt:(jint)valueCount;

- (void)clear;

- (jlong)getWithInt:(jint)index;

- (id)getArray;

- (jboolean)hasArray;

- (jlong)ramBytesUsed;

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithInt:(jint)arg0
                    withInt:(jint)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedDirect8)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirect8_initWithInt_(OrgApacheLuceneUtilPackedDirect8 *self, jint valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirect8 *new_OrgApacheLuceneUtilPackedDirect8_initWithInt_(jint valueCount) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirect8 *create_OrgApacheLuceneUtilPackedDirect8_initWithInt_(jint valueCount);

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirect8_initWithOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneUtilPackedDirect8 *self, OrgApacheLuceneStoreDataInput *inArg, jint valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirect8 *new_OrgApacheLuceneUtilPackedDirect8_initWithOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint valueCount) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirect8 *create_OrgApacheLuceneUtilPackedDirect8_initWithOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint valueCount);

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirect8_initWithByteArray_(OrgApacheLuceneUtilPackedDirect8 *self, IOSByteArray *values);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirect8 *new_OrgApacheLuceneUtilPackedDirect8_initWithByteArray_(IOSByteArray *values) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirect8 *create_OrgApacheLuceneUtilPackedDirect8_initWithByteArray_(IOSByteArray *values);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedDirect8)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedDirect8")
