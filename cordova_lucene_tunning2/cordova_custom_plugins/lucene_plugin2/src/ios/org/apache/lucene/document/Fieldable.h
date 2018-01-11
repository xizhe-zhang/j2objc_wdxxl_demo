//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/document/Fieldable.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneDocumentFieldable")
#ifdef RESTRICT_OrgApacheLuceneDocumentFieldable
#define INCLUDE_ALL_OrgApacheLuceneDocumentFieldable 0
#else
#define INCLUDE_ALL_OrgApacheLuceneDocumentFieldable 1
#endif
#undef RESTRICT_OrgApacheLuceneDocumentFieldable

#if !defined (OrgApacheLuceneDocumentFieldable_) && (INCLUDE_ALL_OrgApacheLuceneDocumentFieldable || defined(INCLUDE_OrgApacheLuceneDocumentFieldable))
#define OrgApacheLuceneDocumentFieldable_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class IOSByteArray;
@class JavaIoReader;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneIndexFieldInfo_IndexOptions;

@protocol OrgApacheLuceneDocumentFieldable < JavaIoSerializable, JavaObject >

- (void)setBoostWithFloat:(jfloat)boost;

- (jfloat)getBoost;

- (NSString *)name;

- (NSString *)stringValue;

- (JavaIoReader *)readerValue;

- (OrgApacheLuceneAnalysisTokenStream *)tokenStreamValue;

- (jboolean)isStored;

- (jboolean)isIndexed;

- (jboolean)isTokenized;

- (jboolean)isTermVectorStored;

- (jboolean)isStoreOffsetWithTermVector;

- (jboolean)isStorePositionWithTermVector;

- (jboolean)isBinary;

- (jboolean)getOmitNorms;

- (void)setOmitNormsWithBoolean:(jboolean)omitNorms;

- (jboolean)isLazy;

- (jint)getBinaryOffset;

- (jint)getBinaryLength;

- (IOSByteArray *)getBinaryValue;

- (IOSByteArray *)getBinaryValueWithByteArray:(IOSByteArray *)result;

- (OrgApacheLuceneIndexFieldInfo_IndexOptions *)getIndexOptions;

- (void)setIndexOptionsWithOrgApacheLuceneIndexFieldInfo_IndexOptions:(OrgApacheLuceneIndexFieldInfo_IndexOptions *)indexOptions;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneDocumentFieldable)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentFieldable)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneDocumentFieldable")
