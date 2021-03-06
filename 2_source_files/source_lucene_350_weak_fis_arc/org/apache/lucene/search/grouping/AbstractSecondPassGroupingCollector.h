//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/grouping/AbstractSecondPassGroupingCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector")
#ifdef RESTRICT_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector
#define INCLUDE_ALL_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector

#if !defined (OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector || defined(INCLUDE_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector))
#define OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_

#define RESTRICT_OrgApacheLuceneSearchCollector 1
#define INCLUDE_OrgApacheLuceneSearchCollector 1
#include "org/apache/lucene/search/Collector.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs;
@class OrgApacheLuceneSearchGroupingTopGroups;
@class OrgApacheLuceneSearchScorer;
@class OrgApacheLuceneSearchSort;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;

@interface OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector : OrgApacheLuceneSearchCollector {
 @public
  id<JavaUtilMap> groupMap_;
  IOSObjectArray *groupDocs_;
}

#pragma mark Public

- (instancetype)initWithJavaUtilCollection:(id<JavaUtilCollection>)groups
             withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort
             withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)withinGroupSort
                                   withInt:(jint)maxDocsPerGroup
                               withBoolean:(jboolean)getScores
                               withBoolean:(jboolean)getMaxScores
                               withBoolean:(jboolean)fillSortFields;

- (jboolean)acceptsDocsOutOfOrder;

- (void)collectWithInt:(jint)doc;

- (OrgApacheLuceneSearchGroupingTopGroups *)getTopGroupsWithInt:(jint)withinGroupOffset;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

#pragma mark Protected

- (OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs *)retrieveGroupWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector, groupMap_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector, groupDocs_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_initWithJavaUtilCollection_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_withInt_withBoolean_withBoolean_withBoolean_(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector *self, id<JavaUtilCollection> groups, OrgApacheLuceneSearchSort *groupSort, OrgApacheLuceneSearchSort *withinGroupSort, jint maxDocsPerGroup, jboolean getScores, jboolean getMaxScores, jboolean fillSortFields);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector)

#endif

#if !defined (OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs_) && (INCLUDE_ALL_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector || defined(INCLUDE_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs))
#define OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs_

@class OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector;
@class OrgApacheLuceneSearchTopDocsCollector;

@interface OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs : NSObject {
 @public
  id groupValue_;
  OrgApacheLuceneSearchTopDocsCollector *collector_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector:(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector *)outer$
                                                                                  withId:(id)groupValue
                                               withOrgApacheLuceneSearchTopDocsCollector:(OrgApacheLuceneSearchTopDocsCollector *)collector;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs, groupValue_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs, collector_, OrgApacheLuceneSearchTopDocsCollector *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs_initWithOrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_withId_withOrgApacheLuceneSearchTopDocsCollector_(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs *self, OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector *outer$, id groupValue, OrgApacheLuceneSearchTopDocsCollector *collector);

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs *new_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs_initWithOrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_withId_withOrgApacheLuceneSearchTopDocsCollector_(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector *outer$, id groupValue, OrgApacheLuceneSearchTopDocsCollector *collector) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs *create_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs_initWithOrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_withId_withOrgApacheLuceneSearchTopDocsCollector_(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector *outer$, id groupValue, OrgApacheLuceneSearchTopDocsCollector *collector);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector")
