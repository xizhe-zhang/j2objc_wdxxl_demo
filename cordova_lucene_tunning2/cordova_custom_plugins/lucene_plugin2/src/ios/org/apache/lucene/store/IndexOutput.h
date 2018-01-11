//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/store/IndexOutput.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreIndexOutput")
#ifdef RESTRICT_OrgApacheLuceneStoreIndexOutput
#define INCLUDE_ALL_OrgApacheLuceneStoreIndexOutput 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreIndexOutput 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreIndexOutput

#if !defined (OrgApacheLuceneStoreIndexOutput_) && (INCLUDE_ALL_OrgApacheLuceneStoreIndexOutput || defined(INCLUDE_OrgApacheLuceneStoreIndexOutput))
#define OrgApacheLuceneStoreIndexOutput_

#define RESTRICT_OrgApacheLuceneStoreDataOutput 1
#define INCLUDE_OrgApacheLuceneStoreDataOutput 1
#include "org/apache/lucene/store/DataOutput.h"

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@interface OrgApacheLuceneStoreIndexOutput : OrgApacheLuceneStoreDataOutput < JavaIoCloseable >

#pragma mark Public

- (instancetype)init;

- (void)close;

- (void)flush;

- (jlong)getFilePointer;

- (jlong)length;

- (void)seekWithLong:(jlong)pos;

- (void)setLengthWithLong:(jlong)length;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreIndexOutput)

FOUNDATION_EXPORT void OrgApacheLuceneStoreIndexOutput_init(OrgApacheLuceneStoreIndexOutput *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreIndexOutput)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreIndexOutput")
