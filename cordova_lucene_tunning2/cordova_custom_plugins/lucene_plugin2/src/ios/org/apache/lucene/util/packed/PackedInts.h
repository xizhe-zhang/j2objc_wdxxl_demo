//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/util/packed/PackedInts.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedInts")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedPackedInts
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedInts 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedInts 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedPackedInts
#ifdef INCLUDE_OrgApacheLuceneUtilPackedPackedInts_ReaderImpl
#define INCLUDE_OrgApacheLuceneUtilPackedPackedInts_Reader 1
#endif
#ifdef INCLUDE_OrgApacheLuceneUtilPackedPackedInts_Mutable
#define INCLUDE_OrgApacheLuceneUtilPackedPackedInts_Reader 1
#endif

#if !defined (OrgApacheLuceneUtilPackedPackedInts_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedInts || defined(INCLUDE_OrgApacheLuceneUtilPackedPackedInts))
#define OrgApacheLuceneUtilPackedPackedInts_

@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneStoreDataOutput;
@class OrgApacheLuceneUtilPackedPackedInts_Writer;
@protocol OrgApacheLuceneUtilPackedPackedInts_Mutable;
@protocol OrgApacheLuceneUtilPackedPackedInts_Reader;

@interface OrgApacheLuceneUtilPackedPackedInts : NSObject

#pragma mark Public

- (instancetype)init;

+ (jint)bitsRequiredWithLong:(jlong)maxValue;

+ (id<OrgApacheLuceneUtilPackedPackedInts_Mutable>)getMutableWithInt:(jint)valueCount
                                                             withInt:(jint)bitsPerValue;

+ (jint)getNextFixedSizeWithInt:(jint)bitsPerValue;

+ (id<OrgApacheLuceneUtilPackedPackedInts_Reader>)getReaderWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg;

+ (jint)getRoundedFixedSizeWithInt:(jint)bitsPerValue;

+ (OrgApacheLuceneUtilPackedPackedInts_Writer *)getWriterWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
                                                                                    withInt:(jint)valueCount
                                                                                    withInt:(jint)bitsPerValue;

+ (jlong)maxValueWithInt:(jint)bitsPerValue;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPackedInts)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPackedInts_init(OrgApacheLuceneUtilPackedPackedInts *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPackedInts *new_OrgApacheLuceneUtilPackedPackedInts_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPackedInts *create_OrgApacheLuceneUtilPackedPackedInts_init(void);

FOUNDATION_EXPORT id<OrgApacheLuceneUtilPackedPackedInts_Reader> OrgApacheLuceneUtilPackedPackedInts_getReaderWithOrgApacheLuceneStoreDataInput_(OrgApacheLuceneStoreDataInput *inArg);

FOUNDATION_EXPORT id<OrgApacheLuceneUtilPackedPackedInts_Mutable> OrgApacheLuceneUtilPackedPackedInts_getMutableWithInt_withInt_(jint valueCount, jint bitsPerValue);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPackedInts_Writer *OrgApacheLuceneUtilPackedPackedInts_getWriterWithOrgApacheLuceneStoreDataOutput_withInt_withInt_(OrgApacheLuceneStoreDataOutput *outArg, jint valueCount, jint bitsPerValue);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(jlong maxValue);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilPackedPackedInts_maxValueWithInt_(jint bitsPerValue);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilPackedPackedInts_getNextFixedSizeWithInt_(jint bitsPerValue);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilPackedPackedInts_getRoundedFixedSizeWithInt_(jint bitsPerValue);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPackedInts)

#endif

#if !defined (OrgApacheLuceneUtilPackedPackedInts_Reader_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedInts || defined(INCLUDE_OrgApacheLuceneUtilPackedPackedInts_Reader))
#define OrgApacheLuceneUtilPackedPackedInts_Reader_

@protocol OrgApacheLuceneUtilPackedPackedInts_Reader < JavaObject >

- (jlong)getWithInt:(jint)index;

- (jint)getBitsPerValue;

- (jint)size;

- (id)getArray;

- (jboolean)hasArray;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPackedInts_Reader)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPackedInts_Reader)

#endif

#if !defined (OrgApacheLuceneUtilPackedPackedInts_Mutable_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedInts || defined(INCLUDE_OrgApacheLuceneUtilPackedPackedInts_Mutable))
#define OrgApacheLuceneUtilPackedPackedInts_Mutable_

@protocol OrgApacheLuceneUtilPackedPackedInts_Mutable < OrgApacheLuceneUtilPackedPackedInts_Reader, JavaObject >

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

- (void)clear;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPackedInts_Mutable)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPackedInts_Mutable)

#endif

#if !defined (OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedInts || defined(INCLUDE_OrgApacheLuceneUtilPackedPackedInts_ReaderImpl))
#define OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_

@interface OrgApacheLuceneUtilPackedPackedInts_ReaderImpl : NSObject < OrgApacheLuceneUtilPackedPackedInts_Reader > {
 @public
  jint bitsPerValue_;
  jint valueCount_;
}

#pragma mark Public

- (id)getArray;

- (jint)getBitsPerValue;

- (jlong)getMaxValue;

- (jboolean)hasArray;

- (jint)size;

#pragma mark Protected

- (instancetype)initWithInt:(jint)valueCount
                    withInt:(jint)bitsPerValue;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPackedInts_ReaderImpl)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_initWithInt_withInt_(OrgApacheLuceneUtilPackedPackedInts_ReaderImpl *self, jint valueCount, jint bitsPerValue);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPackedInts_ReaderImpl)

#endif

#if !defined (OrgApacheLuceneUtilPackedPackedInts_Writer_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedInts || defined(INCLUDE_OrgApacheLuceneUtilPackedPackedInts_Writer))
#define OrgApacheLuceneUtilPackedPackedInts_Writer_

@class OrgApacheLuceneStoreDataOutput;

@interface OrgApacheLuceneUtilPackedPackedInts_Writer : NSObject {
 @public
  OrgApacheLuceneStoreDataOutput *out_;
  jint bitsPerValue_;
  jint valueCount_;
}

#pragma mark Public

- (void)addWithLong:(jlong)v;

- (void)finish;

#pragma mark Protected

- (instancetype)initWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
                                               withInt:(jint)valueCount
                                               withInt:(jint)bitsPerValue;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPackedInts_Writer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPackedInts_Writer, out_, OrgApacheLuceneStoreDataOutput *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPackedInts_Writer_initWithOrgApacheLuceneStoreDataOutput_withInt_withInt_(OrgApacheLuceneUtilPackedPackedInts_Writer *self, OrgApacheLuceneStoreDataOutput *outArg, jint valueCount, jint bitsPerValue);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPackedInts_Writer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedInts")
