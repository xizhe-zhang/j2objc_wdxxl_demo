//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/SegmentInfos.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexSegmentInfos")
#ifdef RESTRICT_OrgApacheLuceneIndexSegmentInfos
#define INCLUDE_ALL_OrgApacheLuceneIndexSegmentInfos 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexSegmentInfos 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexSegmentInfos

#if !defined (OrgApacheLuceneIndexSegmentInfos_) && (INCLUDE_ALL_OrgApacheLuceneIndexSegmentInfos || defined(INCLUDE_OrgApacheLuceneIndexSegmentInfos))
#define OrgApacheLuceneIndexSegmentInfos_

#define RESTRICT_JavaLangIterable 1
#define INCLUDE_JavaLangIterable 1
#include "java/lang/Iterable.h"

@class IOSObjectArray;
@class JavaIoPrintStream;
@class OrgApacheLuceneIndexMergePolicy_OneMerge;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneStoreChecksumIndexOutput;
@class OrgApacheLuceneStoreDirectory;
@protocol JavaUtilCollection;
@protocol JavaUtilFunctionConsumer;
@protocol JavaUtilIterator;
@protocol JavaUtilList;
@protocol JavaUtilMap;
@protocol JavaUtilSet;
@protocol JavaUtilSpliterator;

@interface OrgApacheLuceneIndexSegmentInfos : NSObject < NSCopying, JavaLangIterable > {
 @public
  jint counter_;
  jlong version__;
  OrgApacheLuceneStoreChecksumIndexOutput *pendingSegnOutput_;
}

#pragma mark Public

- (instancetype)init;

- (void)addWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si;

- (void)addAllWithJavaLangIterable:(id<JavaLangIterable>)sis;

- (id<JavaUtilList>)asList;

- (id<JavaUtilSet>)asSet;

- (void)changed;

- (void)clear;

- (id)java_clone;

- (jboolean)containsWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si;

- (id<JavaUtilCollection>)filesWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                     withBoolean:(jboolean)includeSegmentsFile;

+ (jlong)generationFromSegmentsFileNameWithNSString:(NSString *)fileName;

- (NSString *)getCurrentSegmentFileName;

+ (NSString *)getCurrentSegmentFileNameWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory;

+ (NSString *)getCurrentSegmentFileNameWithNSStringArray:(IOSObjectArray *)files;

+ (jlong)getCurrentSegmentGenerationWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory;

+ (jlong)getCurrentSegmentGenerationWithNSStringArray:(IOSObjectArray *)files;

+ (jint)getDefaultGenFileRetryCount;

+ (jint)getDefaultGenFileRetryPauseMsec;

+ (jint)getDefaultGenLookahedCount;

- (jint)getFormat;

- (jlong)getGeneration;

+ (JavaIoPrintStream *)getInfoStream;

- (jlong)getLastGeneration;

- (NSString *)getNextSegmentFileName;

- (id<JavaUtilMap>)getUserData;

- (jlong)getVersion;

- (jint)indexOfWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si;

- (OrgApacheLuceneIndexSegmentInfo *)infoWithInt:(jint)i;

- (id<JavaUtilIterator>)iterator;

- (void)pruneDeletedSegments;

- (OrgApacheLuceneIndexSegmentInfos *)rangeWithInt:(jint)first
                                           withInt:(jint)last;

- (void)readWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory;

- (void)readWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                 withNSString:(NSString *)segmentFileName;

+ (id<JavaUtilMap>)readCurrentUserDataWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory;

+ (jlong)readCurrentVersionWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory;

- (void)removeWithInt:(jint)index;

- (void)removeWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si;

+ (void)setDefaultGenFileRetryCountWithInt:(jint)count;

+ (void)setDefaultGenFileRetryPauseMsecWithInt:(jint)msec;

+ (void)setDefaultGenLookaheadCountWithInt:(jint)count;

- (void)setFormatWithInt:(jint)format;

+ (void)setInfoStreamWithJavaIoPrintStream:(JavaIoPrintStream *)infoStream;

- (jint)size;

- (NSString *)toStringWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory;

- (jint)totalDocCount;

#pragma mark Package-Private

- (void)applyMergeChangesWithOrgApacheLuceneIndexMergePolicy_OneMerge:(OrgApacheLuceneIndexMergePolicy_OneMerge *)merge
                                                          withBoolean:(jboolean)dropSegment;

- (void)commitWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir;

- (id<JavaUtilList>)createBackupSegmentInfosWithBoolean:(jboolean)cloneChildren;

- (void)finishCommitWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir;

- (void)prepareCommitWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir;

- (void)replaceWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)other;

- (void)rollbackCommitWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir;

- (void)rollbackSegmentInfosWithJavaUtilList:(id<JavaUtilList>)infos;

- (void)setUserDataWithJavaUtilMap:(id<JavaUtilMap>)data;

- (void)updateGenerationWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)other;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexSegmentInfos)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentInfos, pendingSegnOutput_, OrgApacheLuceneStoreChecksumIndexOutput *)

inline jint OrgApacheLuceneIndexSegmentInfos_get_FORMAT(void);
#define OrgApacheLuceneIndexSegmentInfos_FORMAT -1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSegmentInfos, FORMAT, jint)

inline jint OrgApacheLuceneIndexSegmentInfos_get_FORMAT_LOCKLESS(void);
#define OrgApacheLuceneIndexSegmentInfos_FORMAT_LOCKLESS -2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSegmentInfos, FORMAT_LOCKLESS, jint)

inline jint OrgApacheLuceneIndexSegmentInfos_get_FORMAT_SINGLE_NORM_FILE(void);
#define OrgApacheLuceneIndexSegmentInfos_FORMAT_SINGLE_NORM_FILE -3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSegmentInfos, FORMAT_SINGLE_NORM_FILE, jint)

inline jint OrgApacheLuceneIndexSegmentInfos_get_FORMAT_SHARED_DOC_STORE(void);
#define OrgApacheLuceneIndexSegmentInfos_FORMAT_SHARED_DOC_STORE -4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSegmentInfos, FORMAT_SHARED_DOC_STORE, jint)

inline jint OrgApacheLuceneIndexSegmentInfos_get_FORMAT_CHECKSUM(void);
#define OrgApacheLuceneIndexSegmentInfos_FORMAT_CHECKSUM -5
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSegmentInfos, FORMAT_CHECKSUM, jint)

inline jint OrgApacheLuceneIndexSegmentInfos_get_FORMAT_DEL_COUNT(void);
#define OrgApacheLuceneIndexSegmentInfos_FORMAT_DEL_COUNT -6
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSegmentInfos, FORMAT_DEL_COUNT, jint)

inline jint OrgApacheLuceneIndexSegmentInfos_get_FORMAT_HAS_PROX(void);
#define OrgApacheLuceneIndexSegmentInfos_FORMAT_HAS_PROX -7
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSegmentInfos, FORMAT_HAS_PROX, jint)

inline jint OrgApacheLuceneIndexSegmentInfos_get_FORMAT_USER_DATA(void);
#define OrgApacheLuceneIndexSegmentInfos_FORMAT_USER_DATA -8
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSegmentInfos, FORMAT_USER_DATA, jint)

inline jint OrgApacheLuceneIndexSegmentInfos_get_FORMAT_DIAGNOSTICS(void);
#define OrgApacheLuceneIndexSegmentInfos_FORMAT_DIAGNOSTICS -9
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSegmentInfos, FORMAT_DIAGNOSTICS, jint)

inline jint OrgApacheLuceneIndexSegmentInfos_get_FORMAT_HAS_VECTORS(void);
#define OrgApacheLuceneIndexSegmentInfos_FORMAT_HAS_VECTORS -10
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSegmentInfos, FORMAT_HAS_VECTORS, jint)

inline jint OrgApacheLuceneIndexSegmentInfos_get_FORMAT_3_1(void);
#define OrgApacheLuceneIndexSegmentInfos_FORMAT_3_1 -11
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSegmentInfos, FORMAT_3_1, jint)

inline jint OrgApacheLuceneIndexSegmentInfos_get_CURRENT_FORMAT(void);
#define OrgApacheLuceneIndexSegmentInfos_CURRENT_FORMAT -11
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSegmentInfos, CURRENT_FORMAT, jint)

inline jint OrgApacheLuceneIndexSegmentInfos_get_FORMAT_MINIMUM(void);
#define OrgApacheLuceneIndexSegmentInfos_FORMAT_MINIMUM -1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSegmentInfos, FORMAT_MINIMUM, jint)

inline jint OrgApacheLuceneIndexSegmentInfos_get_FORMAT_MAXIMUM(void);
#define OrgApacheLuceneIndexSegmentInfos_FORMAT_MAXIMUM -11
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSegmentInfos, FORMAT_MAXIMUM, jint)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSegmentInfos_init(OrgApacheLuceneIndexSegmentInfos *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentInfos *new_OrgApacheLuceneIndexSegmentInfos_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentInfos *create_OrgApacheLuceneIndexSegmentInfos_init(void);

FOUNDATION_EXPORT jlong OrgApacheLuceneIndexSegmentInfos_getCurrentSegmentGenerationWithNSStringArray_(IOSObjectArray *files);

FOUNDATION_EXPORT jlong OrgApacheLuceneIndexSegmentInfos_getCurrentSegmentGenerationWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *directory);

FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexSegmentInfos_getCurrentSegmentFileNameWithNSStringArray_(IOSObjectArray *files);

FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexSegmentInfos_getCurrentSegmentFileNameWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *directory);

FOUNDATION_EXPORT jlong OrgApacheLuceneIndexSegmentInfos_generationFromSegmentsFileNameWithNSString_(NSString *fileName);

FOUNDATION_EXPORT jlong OrgApacheLuceneIndexSegmentInfos_readCurrentVersionWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *directory);

FOUNDATION_EXPORT id<JavaUtilMap> OrgApacheLuceneIndexSegmentInfos_readCurrentUserDataWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *directory);

FOUNDATION_EXPORT void OrgApacheLuceneIndexSegmentInfos_setInfoStreamWithJavaIoPrintStream_(JavaIoPrintStream *infoStream);

FOUNDATION_EXPORT void OrgApacheLuceneIndexSegmentInfos_setDefaultGenFileRetryCountWithInt_(jint count);

FOUNDATION_EXPORT jint OrgApacheLuceneIndexSegmentInfos_getDefaultGenFileRetryCount(void);

FOUNDATION_EXPORT void OrgApacheLuceneIndexSegmentInfos_setDefaultGenFileRetryPauseMsecWithInt_(jint msec);

FOUNDATION_EXPORT jint OrgApacheLuceneIndexSegmentInfos_getDefaultGenFileRetryPauseMsec(void);

FOUNDATION_EXPORT void OrgApacheLuceneIndexSegmentInfos_setDefaultGenLookaheadCountWithInt_(jint count);

FOUNDATION_EXPORT jint OrgApacheLuceneIndexSegmentInfos_getDefaultGenLookahedCount(void);

FOUNDATION_EXPORT JavaIoPrintStream *OrgApacheLuceneIndexSegmentInfos_getInfoStream(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSegmentInfos)

#endif

#if !defined (OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile_) && (INCLUDE_ALL_OrgApacheLuceneIndexSegmentInfos || defined(INCLUDE_OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile))
#define OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile_

@class OrgApacheLuceneIndexIndexCommit;
@class OrgApacheLuceneStoreDirectory;

@interface OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile : NSObject {
 @public
  OrgApacheLuceneStoreDirectory *directory_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory;

- (id)run;

- (id)runWithOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)commit;

#pragma mark Protected

- (id)doBodyWithNSString:(NSString *)segmentFileName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile, directory_, OrgApacheLuceneStoreDirectory *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile_initWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile *self, OrgApacheLuceneStoreDirectory *directory);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexSegmentInfos")
