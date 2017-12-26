//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/IndexFileDeleter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexIndexFileDeleter")
#ifdef RESTRICT_OrgApacheLuceneIndexIndexFileDeleter
#define INCLUDE_ALL_OrgApacheLuceneIndexIndexFileDeleter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexIndexFileDeleter 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexIndexFileDeleter

#if !defined (OrgApacheLuceneIndexIndexFileDeleter_) && (INCLUDE_ALL_OrgApacheLuceneIndexIndexFileDeleter || defined(INCLUDE_OrgApacheLuceneIndexIndexFileDeleter))
#define OrgApacheLuceneIndexIndexFileDeleter_

@class JavaIoPrintStream;
@class OrgApacheLuceneIndexIndexWriter;
@class OrgApacheLuceneIndexSegmentInfos;
@class OrgApacheLuceneStoreDirectory;
@protocol JavaUtilCollection;
@protocol JavaUtilList;
@protocol OrgApacheLuceneIndexIndexDeletionPolicy;

@interface OrgApacheLuceneIndexIndexFileDeleter : NSObject {
 @public
  jboolean startingCommitDeleted_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
          withOrgApacheLuceneIndexIndexDeletionPolicy:(id<OrgApacheLuceneIndexIndexDeletionPolicy>)policy
                 withOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos
                                withJavaIoPrintStream:(JavaIoPrintStream *)infoStream
                  withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

- (void)checkpointWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos
                                           withBoolean:(jboolean)isCommit;

- (void)close;

- (void)deletePendingFiles;

- (jboolean)existsWithNSString:(NSString *)fileName;

- (OrgApacheLuceneIndexSegmentInfos *)getLastSegmentInfos;

- (void)refresh;

- (void)refreshWithNSString:(NSString *)segmentName;

#pragma mark Package-Private

- (void)decRefWithJavaUtilCollection:(id<JavaUtilCollection>)files;

- (void)decRefWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos;

- (void)decRefWithNSString:(NSString *)fileName;

- (void)deleteFileWithNSString:(NSString *)fileName;

- (void)deleteFilesWithJavaUtilList:(id<JavaUtilList>)files;

- (void)deleteNewFilesWithJavaUtilCollection:(id<JavaUtilCollection>)files;

- (void)incRefWithJavaUtilCollection:(id<JavaUtilCollection>)files;

- (void)incRefWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos
                                       withBoolean:(jboolean)isCommit;

- (void)incRefWithNSString:(NSString *)fileName;

- (void)revisitPolicy;

- (void)setInfoStreamWithJavaIoPrintStream:(JavaIoPrintStream *)infoStream;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexIndexFileDeleter)

inline jboolean OrgApacheLuceneIndexIndexFileDeleter_get_VERBOSE_REF_COUNTS(void);
inline jboolean OrgApacheLuceneIndexIndexFileDeleter_set_VERBOSE_REF_COUNTS(jboolean value);
inline jboolean *OrgApacheLuceneIndexIndexFileDeleter_getRef_VERBOSE_REF_COUNTS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean OrgApacheLuceneIndexIndexFileDeleter_VERBOSE_REF_COUNTS;
J2OBJC_STATIC_FIELD_PRIMITIVE(OrgApacheLuceneIndexIndexFileDeleter, VERBOSE_REF_COUNTS, jboolean)

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexFileDeleter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneIndexSegmentInfos_withJavaIoPrintStream_withOrgApacheLuceneIndexIndexWriter_(OrgApacheLuceneIndexIndexFileDeleter *self, OrgApacheLuceneStoreDirectory *directory, id<OrgApacheLuceneIndexIndexDeletionPolicy> policy, OrgApacheLuceneIndexSegmentInfos *segmentInfos, JavaIoPrintStream *infoStream, OrgApacheLuceneIndexIndexWriter *writer);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexFileDeleter *new_OrgApacheLuceneIndexIndexFileDeleter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneIndexSegmentInfos_withJavaIoPrintStream_withOrgApacheLuceneIndexIndexWriter_(OrgApacheLuceneStoreDirectory *directory, id<OrgApacheLuceneIndexIndexDeletionPolicy> policy, OrgApacheLuceneIndexSegmentInfos *segmentInfos, JavaIoPrintStream *infoStream, OrgApacheLuceneIndexIndexWriter *writer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexFileDeleter *create_OrgApacheLuceneIndexIndexFileDeleter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneIndexSegmentInfos_withJavaIoPrintStream_withOrgApacheLuceneIndexIndexWriter_(OrgApacheLuceneStoreDirectory *directory, id<OrgApacheLuceneIndexIndexDeletionPolicy> policy, OrgApacheLuceneIndexSegmentInfos *segmentInfos, JavaIoPrintStream *infoStream, OrgApacheLuceneIndexIndexWriter *writer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexFileDeleter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexIndexFileDeleter")
