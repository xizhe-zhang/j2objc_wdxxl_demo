//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/store/OutputStreamDataOutput.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreOutputStreamDataOutput")
#ifdef RESTRICT_OrgApacheLuceneStoreOutputStreamDataOutput
#define INCLUDE_ALL_OrgApacheLuceneStoreOutputStreamDataOutput 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreOutputStreamDataOutput 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreOutputStreamDataOutput

#if !defined (OrgApacheLuceneStoreOutputStreamDataOutput_) && (INCLUDE_ALL_OrgApacheLuceneStoreOutputStreamDataOutput || defined(INCLUDE_OrgApacheLuceneStoreOutputStreamDataOutput))
#define OrgApacheLuceneStoreOutputStreamDataOutput_

#define RESTRICT_OrgApacheLuceneStoreDataOutput 1
#define INCLUDE_OrgApacheLuceneStoreDataOutput 1
#include "org/apache/lucene/store/DataOutput.h"

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class IOSByteArray;
@class JavaIoOutputStream;

@interface OrgApacheLuceneStoreOutputStreamDataOutput : OrgApacheLuceneStoreDataOutput < JavaIoCloseable >

#pragma mark Public

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)os;

- (void)close;

- (void)writeByteWithByte:(jbyte)b;

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)length;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreOutputStreamDataOutput)

FOUNDATION_EXPORT void OrgApacheLuceneStoreOutputStreamDataOutput_initWithJavaIoOutputStream_(OrgApacheLuceneStoreOutputStreamDataOutput *self, JavaIoOutputStream *os);

FOUNDATION_EXPORT OrgApacheLuceneStoreOutputStreamDataOutput *new_OrgApacheLuceneStoreOutputStreamDataOutput_initWithJavaIoOutputStream_(JavaIoOutputStream *os) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreOutputStreamDataOutput *create_OrgApacheLuceneStoreOutputStreamDataOutput_initWithJavaIoOutputStream_(JavaIoOutputStream *os);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreOutputStreamDataOutput)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreOutputStreamDataOutput")