//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/CachingCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchCachingCollector")
#ifdef RESTRICT_OrgApacheLuceneSearchCachingCollector
#define INCLUDE_ALL_OrgApacheLuceneSearchCachingCollector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchCachingCollector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchCachingCollector

#if !defined (OrgApacheLuceneSearchCachingCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchCachingCollector || defined(INCLUDE_OrgApacheLuceneSearchCachingCollector))
#define OrgApacheLuceneSearchCachingCollector_

#define RESTRICT_OrgApacheLuceneSearchCollector 1
#define INCLUDE_OrgApacheLuceneSearchCollector 1
#include "org/apache/lucene/search/Collector.h"

@class IOSIntArray;
@class OrgApacheLuceneIndexIndexReader;
@protocol JavaUtilList;

@interface OrgApacheLuceneSearchCachingCollector : OrgApacheLuceneSearchCollector {
 @public
  OrgApacheLuceneSearchCollector *other_;
  jint maxDocsToCache_;
  id<JavaUtilList> cachedSegs_;
  id<JavaUtilList> cachedDocs_;
  IOSIntArray *curDocs_;
  jint upto_;
  jint base_;
  jint lastDocBase_;
}

#pragma mark Public

- (jboolean)acceptsDocsOutOfOrder;

+ (OrgApacheLuceneSearchCachingCollector *)createWithBoolean:(jboolean)acceptDocsOutOfOrder
                                                 withBoolean:(jboolean)cacheScores
                                                  withDouble:(jdouble)maxRAMMB;

+ (OrgApacheLuceneSearchCachingCollector *)createWithOrgApacheLuceneSearchCollector:(OrgApacheLuceneSearchCollector *)other
                                                                        withBoolean:(jboolean)cacheScores
                                                                         withDouble:(jdouble)maxRAMMB;

+ (OrgApacheLuceneSearchCachingCollector *)createWithOrgApacheLuceneSearchCollector:(OrgApacheLuceneSearchCollector *)other
                                                                        withBoolean:(jboolean)cacheScores
                                                                            withInt:(jint)maxDocsToCache;

- (jboolean)isCached;

- (void)replayWithOrgApacheLuceneSearchCollector:(OrgApacheLuceneSearchCollector *)other;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

#pragma mark Package-Private

- (void)replayInitWithOrgApacheLuceneSearchCollector:(OrgApacheLuceneSearchCollector *)other;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchCachingCollector)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchCachingCollector, other_, OrgApacheLuceneSearchCollector *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchCachingCollector, cachedSegs_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchCachingCollector, cachedDocs_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchCachingCollector, curDocs_, IOSIntArray *)

FOUNDATION_EXPORT OrgApacheLuceneSearchCachingCollector *OrgApacheLuceneSearchCachingCollector_createWithBoolean_withBoolean_withDouble_(jboolean acceptDocsOutOfOrder, jboolean cacheScores, jdouble maxRAMMB);

FOUNDATION_EXPORT OrgApacheLuceneSearchCachingCollector *OrgApacheLuceneSearchCachingCollector_createWithOrgApacheLuceneSearchCollector_withBoolean_withDouble_(OrgApacheLuceneSearchCollector *other, jboolean cacheScores, jdouble maxRAMMB);

FOUNDATION_EXPORT OrgApacheLuceneSearchCachingCollector *OrgApacheLuceneSearchCachingCollector_createWithOrgApacheLuceneSearchCollector_withBoolean_withInt_(OrgApacheLuceneSearchCollector *other, jboolean cacheScores, jint maxDocsToCache);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchCachingCollector)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchCachingCollector")
