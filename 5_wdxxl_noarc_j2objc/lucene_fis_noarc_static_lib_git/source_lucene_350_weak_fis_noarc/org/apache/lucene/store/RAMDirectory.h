//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/store/RAMDirectory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreRAMDirectory")
#ifdef RESTRICT_OrgApacheLuceneStoreRAMDirectory
#define INCLUDE_ALL_OrgApacheLuceneStoreRAMDirectory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreRAMDirectory 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreRAMDirectory

#if !defined (OrgApacheLuceneStoreRAMDirectory_) && (INCLUDE_ALL_OrgApacheLuceneStoreRAMDirectory || defined(INCLUDE_OrgApacheLuceneStoreRAMDirectory))
#define OrgApacheLuceneStoreRAMDirectory_

#define RESTRICT_OrgApacheLuceneStoreDirectory 1
#define INCLUDE_OrgApacheLuceneStoreDirectory 1
#include "org/apache/lucene/store/Directory.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class IOSObjectArray;
@class JavaUtilConcurrentAtomicAtomicLong;
@class OrgApacheLuceneStoreIndexInput;
@class OrgApacheLuceneStoreIndexOutput;
@class OrgApacheLuceneStoreRAMFile;
@protocol JavaUtilMap;

@interface OrgApacheLuceneStoreRAMDirectory : OrgApacheLuceneStoreDirectory < JavaIoSerializable > {
 @public
  id<JavaUtilMap> fileMap_;
  JavaUtilConcurrentAtomicAtomicLong *sizeInBytes_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir;

- (void)close;

- (OrgApacheLuceneStoreIndexOutput *)createOutputWithNSString:(NSString *)name;

- (void)deleteFileWithNSString:(NSString *)name;

- (jboolean)fileExistsWithNSString:(NSString *)name;

- (jlong)fileLengthWithNSString:(NSString *)name;

- (jlong)fileModifiedWithNSString:(NSString *)name;

- (IOSObjectArray *)listAll;

- (OrgApacheLuceneStoreIndexInput *)openInputWithNSString:(NSString *)name;

- (jlong)sizeInBytes;

- (void)touchFileWithNSString:(NSString *)name;

#pragma mark Protected

- (OrgApacheLuceneStoreRAMFile *)newRAMFile OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreRAMDirectory)

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreRAMDirectory, fileMap_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreRAMDirectory, sizeInBytes_, JavaUtilConcurrentAtomicAtomicLong *)

FOUNDATION_EXPORT void OrgApacheLuceneStoreRAMDirectory_init(OrgApacheLuceneStoreRAMDirectory *self);

FOUNDATION_EXPORT OrgApacheLuceneStoreRAMDirectory *new_OrgApacheLuceneStoreRAMDirectory_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreRAMDirectory *create_OrgApacheLuceneStoreRAMDirectory_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreRAMDirectory *self, OrgApacheLuceneStoreDirectory *dir);

FOUNDATION_EXPORT OrgApacheLuceneStoreRAMDirectory *new_OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *dir) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreRAMDirectory *create_OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *dir);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreRAMDirectory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreRAMDirectory")
