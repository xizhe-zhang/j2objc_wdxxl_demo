//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/ReadOnlyDirectoryReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexReadOnlyDirectoryReader")
#ifdef RESTRICT_OrgApacheLuceneIndexReadOnlyDirectoryReader
#define INCLUDE_ALL_OrgApacheLuceneIndexReadOnlyDirectoryReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexReadOnlyDirectoryReader 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexReadOnlyDirectoryReader

#if !defined (OrgApacheLuceneIndexReadOnlyDirectoryReader_) && (INCLUDE_ALL_OrgApacheLuceneIndexReadOnlyDirectoryReader || defined(INCLUDE_OrgApacheLuceneIndexReadOnlyDirectoryReader))
#define OrgApacheLuceneIndexReadOnlyDirectoryReader_

#define RESTRICT_OrgApacheLuceneIndexDirectoryReader 1
#define INCLUDE_OrgApacheLuceneIndexDirectoryReader 1
#include "org/apache/lucene/index/DirectoryReader.h"

@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneIndexIndexWriter;
@class OrgApacheLuceneIndexSegmentInfos;
@class OrgApacheLuceneStoreDirectory;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;
@protocol OrgApacheLuceneIndexIndexDeletionPolicy;

@interface OrgApacheLuceneIndexReadOnlyDirectoryReader : OrgApacheLuceneIndexDirectoryReader

#pragma mark Protected

- (void)acquireWriteLock;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                 withOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)sis
          withOrgApacheLuceneIndexIndexDeletionPolicy:(id<OrgApacheLuceneIndexIndexDeletionPolicy>)deletionPolicy
                                              withInt:(jint)termInfosIndexDivisor
                               withJavaUtilCollection:(id<JavaUtilCollection>)readerFinishedListeners;

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                 withOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos
           withOrgApacheLuceneIndexSegmentReaderArray:(IOSObjectArray *)oldReaders
                                         withIntArray:(IOSIntArray *)oldStarts
                                      withJavaUtilMap:(id<JavaUtilMap>)oldNormsCache
                                          withBoolean:(jboolean)doClone
                                              withInt:(jint)termInfosIndexDivisor
                               withJavaUtilCollection:(id<JavaUtilCollection>)readerFinishedListeners;

- (instancetype)initWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                   withOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos
                                                withInt:(jint)termInfosIndexDivisor
                                            withBoolean:(jboolean)applyAllDeletes;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)arg0
                 withOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)arg1
          withOrgApacheLuceneIndexIndexDeletionPolicy:(id<OrgApacheLuceneIndexIndexDeletionPolicy>)arg2
                                          withBoolean:(jboolean)arg3
                                              withInt:(jint)arg4
                               withJavaUtilCollection:(id<JavaUtilCollection>)arg5 NS_UNAVAILABLE;

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)arg0
                 withOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)arg1
           withOrgApacheLuceneIndexSegmentReaderArray:(IOSObjectArray *)arg2
                                         withIntArray:(IOSIntArray *)arg3
                                      withJavaUtilMap:(id<JavaUtilMap>)arg4
                                          withBoolean:(jboolean)arg5
                                          withBoolean:(jboolean)arg6
                                              withInt:(jint)arg7
                               withJavaUtilCollection:(id<JavaUtilCollection>)arg8 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexReadOnlyDirectoryReader)

FOUNDATION_EXPORT void OrgApacheLuceneIndexReadOnlyDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfos_withOrgApacheLuceneIndexIndexDeletionPolicy_withInt_withJavaUtilCollection_(OrgApacheLuceneIndexReadOnlyDirectoryReader *self, OrgApacheLuceneStoreDirectory *directory, OrgApacheLuceneIndexSegmentInfos *sis, id<OrgApacheLuceneIndexIndexDeletionPolicy> deletionPolicy, jint termInfosIndexDivisor, id<JavaUtilCollection> readerFinishedListeners);

FOUNDATION_EXPORT OrgApacheLuceneIndexReadOnlyDirectoryReader *new_OrgApacheLuceneIndexReadOnlyDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfos_withOrgApacheLuceneIndexIndexDeletionPolicy_withInt_withJavaUtilCollection_(OrgApacheLuceneStoreDirectory *directory, OrgApacheLuceneIndexSegmentInfos *sis, id<OrgApacheLuceneIndexIndexDeletionPolicy> deletionPolicy, jint termInfosIndexDivisor, id<JavaUtilCollection> readerFinishedListeners) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexReadOnlyDirectoryReader *create_OrgApacheLuceneIndexReadOnlyDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfos_withOrgApacheLuceneIndexIndexDeletionPolicy_withInt_withJavaUtilCollection_(OrgApacheLuceneStoreDirectory *directory, OrgApacheLuceneIndexSegmentInfos *sis, id<OrgApacheLuceneIndexIndexDeletionPolicy> deletionPolicy, jint termInfosIndexDivisor, id<JavaUtilCollection> readerFinishedListeners);

FOUNDATION_EXPORT void OrgApacheLuceneIndexReadOnlyDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfos_withOrgApacheLuceneIndexSegmentReaderArray_withIntArray_withJavaUtilMap_withBoolean_withInt_withJavaUtilCollection_(OrgApacheLuceneIndexReadOnlyDirectoryReader *self, OrgApacheLuceneStoreDirectory *directory, OrgApacheLuceneIndexSegmentInfos *infos, IOSObjectArray *oldReaders, IOSIntArray *oldStarts, id<JavaUtilMap> oldNormsCache, jboolean doClone, jint termInfosIndexDivisor, id<JavaUtilCollection> readerFinishedListeners);

FOUNDATION_EXPORT OrgApacheLuceneIndexReadOnlyDirectoryReader *new_OrgApacheLuceneIndexReadOnlyDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfos_withOrgApacheLuceneIndexSegmentReaderArray_withIntArray_withJavaUtilMap_withBoolean_withInt_withJavaUtilCollection_(OrgApacheLuceneStoreDirectory *directory, OrgApacheLuceneIndexSegmentInfos *infos, IOSObjectArray *oldReaders, IOSIntArray *oldStarts, id<JavaUtilMap> oldNormsCache, jboolean doClone, jint termInfosIndexDivisor, id<JavaUtilCollection> readerFinishedListeners) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexReadOnlyDirectoryReader *create_OrgApacheLuceneIndexReadOnlyDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfos_withOrgApacheLuceneIndexSegmentReaderArray_withIntArray_withJavaUtilMap_withBoolean_withInt_withJavaUtilCollection_(OrgApacheLuceneStoreDirectory *directory, OrgApacheLuceneIndexSegmentInfos *infos, IOSObjectArray *oldReaders, IOSIntArray *oldStarts, id<JavaUtilMap> oldNormsCache, jboolean doClone, jint termInfosIndexDivisor, id<JavaUtilCollection> readerFinishedListeners);

FOUNDATION_EXPORT void OrgApacheLuceneIndexReadOnlyDirectoryReader_initWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentInfos_withInt_withBoolean_(OrgApacheLuceneIndexReadOnlyDirectoryReader *self, OrgApacheLuceneIndexIndexWriter *writer, OrgApacheLuceneIndexSegmentInfos *infos, jint termInfosIndexDivisor, jboolean applyAllDeletes);

FOUNDATION_EXPORT OrgApacheLuceneIndexReadOnlyDirectoryReader *new_OrgApacheLuceneIndexReadOnlyDirectoryReader_initWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentInfos_withInt_withBoolean_(OrgApacheLuceneIndexIndexWriter *writer, OrgApacheLuceneIndexSegmentInfos *infos, jint termInfosIndexDivisor, jboolean applyAllDeletes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexReadOnlyDirectoryReader *create_OrgApacheLuceneIndexReadOnlyDirectoryReader_initWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentInfos_withInt_withBoolean_(OrgApacheLuceneIndexIndexWriter *writer, OrgApacheLuceneIndexSegmentInfos *infos, jint termInfosIndexDivisor, jboolean applyAllDeletes);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexReadOnlyDirectoryReader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexReadOnlyDirectoryReader")
