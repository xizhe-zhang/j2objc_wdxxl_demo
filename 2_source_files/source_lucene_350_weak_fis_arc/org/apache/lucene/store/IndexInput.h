//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/store/IndexInput.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreIndexInput")
#ifdef RESTRICT_OrgApacheLuceneStoreIndexInput
#define INCLUDE_ALL_OrgApacheLuceneStoreIndexInput 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreIndexInput 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreIndexInput

#if !defined (OrgApacheLuceneStoreIndexInput_) && (INCLUDE_ALL_OrgApacheLuceneStoreIndexInput || defined(INCLUDE_OrgApacheLuceneStoreIndexInput))
#define OrgApacheLuceneStoreIndexInput_

#define RESTRICT_OrgApacheLuceneStoreDataInput 1
#define INCLUDE_OrgApacheLuceneStoreDataInput 1
#include "org/apache/lucene/store/DataInput.h"

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class OrgApacheLuceneStoreIndexOutput;

@interface OrgApacheLuceneStoreIndexInput : OrgApacheLuceneStoreDataInput < NSCopying, JavaIoCloseable >

#pragma mark Public

- (void)close;

- (void)copyBytesWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)outArg
                                            withLong:(jlong)numBytes OBJC_METHOD_FAMILY_NONE;

- (jlong)getFilePointer;

- (jlong)length;

- (void)seekWithLong:(jlong)pos;

- (void)skipCharsWithInt:(jint)length;

- (NSString *)description;

#pragma mark Protected

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)resourceDescription;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreIndexInput)

FOUNDATION_EXPORT void OrgApacheLuceneStoreIndexInput_init(OrgApacheLuceneStoreIndexInput *self);

FOUNDATION_EXPORT void OrgApacheLuceneStoreIndexInput_initWithNSString_(OrgApacheLuceneStoreIndexInput *self, NSString *resourceDescription);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreIndexInput)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreIndexInput")
