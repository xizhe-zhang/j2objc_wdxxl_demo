//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/store/BufferedIndexOutput.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreBufferedIndexOutput")
#ifdef RESTRICT_OrgApacheLuceneStoreBufferedIndexOutput
#define INCLUDE_ALL_OrgApacheLuceneStoreBufferedIndexOutput 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreBufferedIndexOutput 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreBufferedIndexOutput

#if !defined (OrgApacheLuceneStoreBufferedIndexOutput_) && (INCLUDE_ALL_OrgApacheLuceneStoreBufferedIndexOutput || defined(INCLUDE_OrgApacheLuceneStoreBufferedIndexOutput))
#define OrgApacheLuceneStoreBufferedIndexOutput_

#define RESTRICT_OrgApacheLuceneStoreIndexOutput 1
#define INCLUDE_OrgApacheLuceneStoreIndexOutput 1
#include "org/apache/lucene/store/IndexOutput.h"

@class IOSByteArray;

@interface OrgApacheLuceneStoreBufferedIndexOutput : OrgApacheLuceneStoreIndexOutput

#pragma mark Public

- (instancetype)init;

- (void)close;

- (void)flush;

- (jlong)getFilePointer;

- (jlong)length;

- (void)seekWithLong:(jlong)pos;

- (void)writeByteWithByte:(jbyte)b;

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)length;

#pragma mark Protected

- (void)flushBufferWithByteArray:(IOSByteArray *)b
                         withInt:(jint)offset
                         withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreBufferedIndexOutput)

inline jint OrgApacheLuceneStoreBufferedIndexOutput_get_BUFFER_SIZE(void);
#define OrgApacheLuceneStoreBufferedIndexOutput_BUFFER_SIZE 16384
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneStoreBufferedIndexOutput, BUFFER_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneStoreBufferedIndexOutput_init(OrgApacheLuceneStoreBufferedIndexOutput *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreBufferedIndexOutput)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreBufferedIndexOutput")
