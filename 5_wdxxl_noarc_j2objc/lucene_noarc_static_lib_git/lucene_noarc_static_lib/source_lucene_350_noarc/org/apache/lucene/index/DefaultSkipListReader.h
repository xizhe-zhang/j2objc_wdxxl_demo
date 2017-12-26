//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/DefaultSkipListReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexDefaultSkipListReader")
#ifdef RESTRICT_OrgApacheLuceneIndexDefaultSkipListReader
#define INCLUDE_ALL_OrgApacheLuceneIndexDefaultSkipListReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexDefaultSkipListReader 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexDefaultSkipListReader

#if !defined (OrgApacheLuceneIndexDefaultSkipListReader_) && (INCLUDE_ALL_OrgApacheLuceneIndexDefaultSkipListReader || defined(INCLUDE_OrgApacheLuceneIndexDefaultSkipListReader))
#define OrgApacheLuceneIndexDefaultSkipListReader_

#define RESTRICT_OrgApacheLuceneIndexMultiLevelSkipListReader 1
#define INCLUDE_OrgApacheLuceneIndexMultiLevelSkipListReader 1
#include "org/apache/lucene/index/MultiLevelSkipListReader.h"

@class OrgApacheLuceneStoreIndexInput;

@interface OrgApacheLuceneIndexDefaultSkipListReader : OrgApacheLuceneIndexMultiLevelSkipListReader

#pragma mark Protected

- (jint)readSkipDataWithInt:(jint)level
withOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)skipStream;

- (void)seekChildWithInt:(jint)level;

- (void)setLastSkipDataWithInt:(jint)level;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)skipStream
                                               withInt:(jint)maxSkipLevels
                                               withInt:(jint)skipInterval;

- (jlong)getFreqPointer;

- (jint)getPayloadLength;

- (jlong)getProxPointer;

- (void)init__WithLong:(jlong)skipPointer
              withLong:(jlong)freqBasePointer
              withLong:(jlong)proxBasePointer
               withInt:(jint)df
           withBoolean:(jboolean)storesPayloads OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDefaultSkipListReader)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDefaultSkipListReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_(OrgApacheLuceneIndexDefaultSkipListReader *self, OrgApacheLuceneStoreIndexInput *skipStream, jint maxSkipLevels, jint skipInterval);

FOUNDATION_EXPORT OrgApacheLuceneIndexDefaultSkipListReader *new_OrgApacheLuceneIndexDefaultSkipListReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_(OrgApacheLuceneStoreIndexInput *skipStream, jint maxSkipLevels, jint skipInterval) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexDefaultSkipListReader *create_OrgApacheLuceneIndexDefaultSkipListReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_(OrgApacheLuceneStoreIndexInput *skipStream, jint maxSkipLevels, jint skipInterval);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDefaultSkipListReader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexDefaultSkipListReader")
