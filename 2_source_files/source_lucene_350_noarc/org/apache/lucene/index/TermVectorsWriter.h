//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/TermVectorsWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsWriter")
#ifdef RESTRICT_OrgApacheLuceneIndexTermVectorsWriter
#define INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexTermVectorsWriter

#if !defined (OrgApacheLuceneIndexTermVectorsWriter_) && (INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsWriter || defined(INCLUDE_OrgApacheLuceneIndexTermVectorsWriter))
#define OrgApacheLuceneIndexTermVectorsWriter_

@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexTermVectorsReader;
@class OrgApacheLuceneStoreDirectory;

@interface OrgApacheLuceneIndexTermVectorsWriter : NSObject {
 @public
  IOSObjectArray *utf8Results_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                         withNSString:(NSString *)segment
                   withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fieldInfos;

- (void)addAllDocVectorsWithOrgApacheLuceneIndexTermFreqVectorArray:(IOSObjectArray *)vectors;

#pragma mark Package-Private

- (void)addRawDocumentsWithOrgApacheLuceneIndexTermVectorsReader:(OrgApacheLuceneIndexTermVectorsReader *)reader
                                                    withIntArray:(IOSIntArray *)tvdLengths
                                                    withIntArray:(IOSIntArray *)tvfLengths
                                                         withInt:(jint)numDocs;

- (void)close;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTermVectorsWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsWriter, utf8Results_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermVectorsWriter_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneIndexTermVectorsWriter *self, OrgApacheLuceneStoreDirectory *directory, NSString *segment, OrgApacheLuceneIndexFieldInfos *fieldInfos);

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorsWriter *new_OrgApacheLuceneIndexTermVectorsWriter_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneStoreDirectory *directory, NSString *segment, OrgApacheLuceneIndexFieldInfos *fieldInfos) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorsWriter *create_OrgApacheLuceneIndexTermVectorsWriter_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneStoreDirectory *directory, NSString *segment, OrgApacheLuceneIndexFieldInfos *fieldInfos);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermVectorsWriter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsWriter")
