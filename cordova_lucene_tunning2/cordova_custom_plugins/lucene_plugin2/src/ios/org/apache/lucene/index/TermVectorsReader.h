//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/TermVectorsReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsReader")
#ifdef RESTRICT_OrgApacheLuceneIndexTermVectorsReader
#define INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsReader 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexTermVectorsReader

#if !defined (OrgApacheLuceneIndexTermVectorsReader_) && (INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsReader || defined(INCLUDE_OrgApacheLuceneIndexTermVectorsReader))
#define OrgApacheLuceneIndexTermVectorsReader_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexTermVectorMapper;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIndexInput;
@protocol OrgApacheLuceneIndexTermFreqVector;

@interface OrgApacheLuceneIndexTermVectorsReader : NSObject < NSCopying, JavaIoCloseable >

#pragma mark Public

- (void)close;

- (void)getWithInt:(jint)docNum
      withNSString:(NSString *)field
withOrgApacheLuceneIndexTermVectorMapper:(OrgApacheLuceneIndexTermVectorMapper *)mapper;

- (void)getWithInt:(jint)docNumber
withOrgApacheLuceneIndexTermVectorMapper:(OrgApacheLuceneIndexTermVectorMapper *)mapper;

#pragma mark Protected

- (id)java_clone;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)d
                                         withNSString:(NSString *)segment
                   withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fieldInfos;

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)d
                                         withNSString:(NSString *)segment
                   withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fieldInfos
                                              withInt:(jint)readBufferSize;

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)d
                                         withNSString:(NSString *)segment
                   withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fieldInfos
                                              withInt:(jint)readBufferSize
                                              withInt:(jint)docStoreOffset
                                              withInt:(jint)size;

- (jboolean)canReadRawDocs;

- (IOSObjectArray *)getWithInt:(jint)docNum;

- (id<OrgApacheLuceneIndexTermFreqVector>)getWithInt:(jint)docNum
                                        withNSString:(NSString *)field;

- (OrgApacheLuceneStoreIndexInput *)getTvdStream;

- (OrgApacheLuceneStoreIndexInput *)getTvfStream;

- (void)rawDocsWithIntArray:(IOSIntArray *)tvdLengths
               withIntArray:(IOSIntArray *)tvfLengths
                    withInt:(jint)startDocID
                    withInt:(jint)numDocs;

- (jint)size;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTermVectorsReader)

inline jint OrgApacheLuceneIndexTermVectorsReader_get_FORMAT_VERSION(void);
#define OrgApacheLuceneIndexTermVectorsReader_FORMAT_VERSION 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexTermVectorsReader, FORMAT_VERSION, jint)

inline jint OrgApacheLuceneIndexTermVectorsReader_get_FORMAT_VERSION2(void);
#define OrgApacheLuceneIndexTermVectorsReader_FORMAT_VERSION2 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexTermVectorsReader, FORMAT_VERSION2, jint)

inline jint OrgApacheLuceneIndexTermVectorsReader_get_FORMAT_UTF8_LENGTH_IN_BYTES(void);
#define OrgApacheLuceneIndexTermVectorsReader_FORMAT_UTF8_LENGTH_IN_BYTES 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexTermVectorsReader, FORMAT_UTF8_LENGTH_IN_BYTES, jint)

inline jint OrgApacheLuceneIndexTermVectorsReader_get_FORMAT_CURRENT(void);
#define OrgApacheLuceneIndexTermVectorsReader_FORMAT_CURRENT 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexTermVectorsReader, FORMAT_CURRENT, jint)

inline jint OrgApacheLuceneIndexTermVectorsReader_get_FORMAT_SIZE(void);
#define OrgApacheLuceneIndexTermVectorsReader_FORMAT_SIZE 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexTermVectorsReader, FORMAT_SIZE, jint)

inline jbyte OrgApacheLuceneIndexTermVectorsReader_get_STORE_POSITIONS_WITH_TERMVECTOR(void);
#define OrgApacheLuceneIndexTermVectorsReader_STORE_POSITIONS_WITH_TERMVECTOR 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexTermVectorsReader, STORE_POSITIONS_WITH_TERMVECTOR, jbyte)

inline jbyte OrgApacheLuceneIndexTermVectorsReader_get_STORE_OFFSET_WITH_TERMVECTOR(void);
#define OrgApacheLuceneIndexTermVectorsReader_STORE_OFFSET_WITH_TERMVECTOR 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexTermVectorsReader, STORE_OFFSET_WITH_TERMVECTOR, jbyte)

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermVectorsReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneIndexTermVectorsReader *self, OrgApacheLuceneStoreDirectory *d, NSString *segment, OrgApacheLuceneIndexFieldInfos *fieldInfos);

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorsReader *new_OrgApacheLuceneIndexTermVectorsReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneStoreDirectory *d, NSString *segment, OrgApacheLuceneIndexFieldInfos *fieldInfos) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorsReader *create_OrgApacheLuceneIndexTermVectorsReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneStoreDirectory *d, NSString *segment, OrgApacheLuceneIndexFieldInfos *fieldInfos);

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermVectorsReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_(OrgApacheLuceneIndexTermVectorsReader *self, OrgApacheLuceneStoreDirectory *d, NSString *segment, OrgApacheLuceneIndexFieldInfos *fieldInfos, jint readBufferSize);

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorsReader *new_OrgApacheLuceneIndexTermVectorsReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_(OrgApacheLuceneStoreDirectory *d, NSString *segment, OrgApacheLuceneIndexFieldInfos *fieldInfos, jint readBufferSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorsReader *create_OrgApacheLuceneIndexTermVectorsReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_(OrgApacheLuceneStoreDirectory *d, NSString *segment, OrgApacheLuceneIndexFieldInfos *fieldInfos, jint readBufferSize);

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermVectorsReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_withInt_withInt_(OrgApacheLuceneIndexTermVectorsReader *self, OrgApacheLuceneStoreDirectory *d, NSString *segment, OrgApacheLuceneIndexFieldInfos *fieldInfos, jint readBufferSize, jint docStoreOffset, jint size);

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorsReader *new_OrgApacheLuceneIndexTermVectorsReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_withInt_withInt_(OrgApacheLuceneStoreDirectory *d, NSString *segment, OrgApacheLuceneIndexFieldInfos *fieldInfos, jint readBufferSize, jint docStoreOffset, jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorsReader *create_OrgApacheLuceneIndexTermVectorsReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_withInt_withInt_(OrgApacheLuceneStoreDirectory *d, NSString *segment, OrgApacheLuceneIndexFieldInfos *fieldInfos, jint readBufferSize, jint docStoreOffset, jint size);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermVectorsReader)

#endif

#if !defined (OrgApacheLuceneIndexParallelArrayTermVectorMapper_) && (INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsReader || defined(INCLUDE_OrgApacheLuceneIndexParallelArrayTermVectorMapper))
#define OrgApacheLuceneIndexParallelArrayTermVectorMapper_

#define RESTRICT_OrgApacheLuceneIndexTermVectorMapper 1
#define INCLUDE_OrgApacheLuceneIndexTermVectorMapper 1
#include "org/apache/lucene/index/TermVectorMapper.h"

@class IOSIntArray;
@class IOSObjectArray;
@protocol OrgApacheLuceneIndexTermFreqVector;

@interface OrgApacheLuceneIndexParallelArrayTermVectorMapper : OrgApacheLuceneIndexTermVectorMapper

#pragma mark Public

- (void)mapWithNSString:(NSString *)term
                withInt:(jint)frequency
withOrgApacheLuceneIndexTermVectorOffsetInfoArray:(IOSObjectArray *)offsets
           withIntArray:(IOSIntArray *)positions;

- (id<OrgApacheLuceneIndexTermFreqVector>)materializeVector;

- (void)setExpectationsWithNSString:(NSString *)field
                            withInt:(jint)numTerms
                        withBoolean:(jboolean)storeOffsets
                        withBoolean:(jboolean)storePositions;

#pragma mark Package-Private

- (instancetype)init;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithBoolean:(jboolean)arg0
                    withBoolean:(jboolean)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexParallelArrayTermVectorMapper)

FOUNDATION_EXPORT void OrgApacheLuceneIndexParallelArrayTermVectorMapper_init(OrgApacheLuceneIndexParallelArrayTermVectorMapper *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexParallelArrayTermVectorMapper *new_OrgApacheLuceneIndexParallelArrayTermVectorMapper_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexParallelArrayTermVectorMapper *create_OrgApacheLuceneIndexParallelArrayTermVectorMapper_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexParallelArrayTermVectorMapper)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsReader")
