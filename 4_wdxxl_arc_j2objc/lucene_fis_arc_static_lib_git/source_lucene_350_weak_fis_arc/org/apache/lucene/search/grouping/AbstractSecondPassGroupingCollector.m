//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/grouping/AbstractSecondPassGroupingCollector.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/Collector.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Sort.h"
#include "org/apache/lucene/search/TopDocs.h"
#include "org/apache/lucene/search/TopDocsCollector.h"
#include "org/apache/lucene/search/TopFieldCollector.h"
#include "org/apache/lucene/search/TopScoreDocCollector.h"
#include "org/apache/lucene/search/grouping/AbstractSecondPassGroupingCollector.h"
#include "org/apache/lucene/search/grouping/GroupDocs.h"
#include "org/apache/lucene/search/grouping/SearchGroup.h"
#include "org/apache/lucene/search/grouping/TopGroups.h"

@interface OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector () {
 @public
  jint maxDocsPerGroup_;
  id<JavaUtilCollection> groups_;
  OrgApacheLuceneSearchSort *withinGroupSort_;
  OrgApacheLuceneSearchSort *groupSort_;
  jint totalHitCount_;
  jint totalGroupedHitCount_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector, groups_, id<JavaUtilCollection>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector, withinGroupSort_, OrgApacheLuceneSearchSort *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector, groupSort_, OrgApacheLuceneSearchSort *)

@implementation OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector

- (instancetype)initWithJavaUtilCollection:(id<JavaUtilCollection>)groups
             withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort
             withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)withinGroupSort
                                   withInt:(jint)maxDocsPerGroup
                               withBoolean:(jboolean)getScores
                               withBoolean:(jboolean)getMaxScores
                               withBoolean:(jboolean)fillSortFields {
  OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_initWithJavaUtilCollection_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_withInt_withBoolean_withBoolean_withBoolean_(self, groups, groupSort, withinGroupSort, maxDocsPerGroup, getScores, getMaxScores, fillSortFields);
  return self;
}

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer {
  for (OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs * __strong group in nil_chk([((id<JavaUtilMap>) nil_chk(groupMap_)) values])) {
    [((OrgApacheLuceneSearchTopDocsCollector *) nil_chk(((OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs *) nil_chk(group))->collector_)) setScorerWithOrgApacheLuceneSearchScorer:scorer];
  }
}

- (void)collectWithInt:(jint)doc {
  totalHitCount_++;
  OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs *group = [self retrieveGroupWithInt:doc];
  if (group != nil) {
    totalGroupedHitCount_++;
    [((OrgApacheLuceneSearchTopDocsCollector *) nil_chk(group->collector_)) collectWithInt:doc];
  }
}

- (OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs *)retrieveGroupWithInt:(jint)doc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase {
  for (OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs * __strong group in nil_chk([((id<JavaUtilMap>) nil_chk(groupMap_)) values])) {
    [((OrgApacheLuceneSearchTopDocsCollector *) nil_chk(((OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs *) nil_chk(group))->collector_)) setNextReaderWithOrgApacheLuceneIndexIndexReader:reader withInt:docBase];
  }
}

- (jboolean)acceptsDocsOutOfOrder {
  return false;
}

- (OrgApacheLuceneSearchGroupingTopGroups *)getTopGroupsWithInt:(jint)withinGroupOffset {
  IOSObjectArray *groupDocsResult = [IOSObjectArray newArrayWithLength:[((id<JavaUtilCollection>) nil_chk(groups_)) size] type:OrgApacheLuceneSearchGroupingGroupDocs_class_()];
  jint groupIDX = 0;
  for (OrgApacheLuceneSearchGroupingSearchGroup * __strong group in groups_) {
    OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs *groupDocs = [((id<JavaUtilMap>) nil_chk(groupMap_)) getWithId:((OrgApacheLuceneSearchGroupingSearchGroup *) nil_chk(group))->groupValue_];
    OrgApacheLuceneSearchTopDocs *topDocs = [((OrgApacheLuceneSearchTopDocsCollector *) nil_chk(((OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs *) nil_chk(groupDocs))->collector_)) topDocsWithInt:withinGroupOffset withInt:maxDocsPerGroup_];
    (void) IOSObjectArray_SetAndConsume(groupDocsResult, groupIDX++, new_OrgApacheLuceneSearchGroupingGroupDocs_initWithFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_([((OrgApacheLuceneSearchTopDocs *) nil_chk(topDocs)) getMaxScore], topDocs->totalHits_, topDocs->scoreDocs_, groupDocs->groupValue_, group->sortValues_));
  }
  return new_OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchSortFieldArray_withOrgApacheLuceneSearchSortFieldArray_withInt_withInt_withOrgApacheLuceneSearchGroupingGroupDocsArray_([((OrgApacheLuceneSearchSort *) nil_chk(groupSort_)) getSort], withinGroupSort_ == nil ? nil : [withinGroupSort_ getSort], totalHitCount_, totalGroupedHitCount_, groupDocsResult);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, 2, -1, -1 },
    { NULL, "V", 0x1, 3, 4, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs;", 0x404, 7, 6, 1, 8, -1, -1 },
    { NULL, "V", 0x1, 9, 10, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchGroupingTopGroups;", 0x1, 11, 6, -1, 12, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaUtilCollection:withOrgApacheLuceneSearchSort:withOrgApacheLuceneSearchSort:withInt:withBoolean:withBoolean:withBoolean:);
  methods[1].selector = @selector(setScorerWithOrgApacheLuceneSearchScorer:);
  methods[2].selector = @selector(collectWithInt:);
  methods[3].selector = @selector(retrieveGroupWithInt:);
  methods[4].selector = @selector(setNextReaderWithOrgApacheLuceneIndexIndexReader:withInt:);
  methods[5].selector = @selector(acceptsDocsOutOfOrder);
  methods[6].selector = @selector(getTopGroupsWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "groupMap_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x14, -1, -1, 13, -1 },
    { "maxDocsPerGroup_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "groupDocs_", "[LOrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs;", .constantValue.asLong = 0, 0x4, -1, -1, 14, -1 },
    { "groups_", "LJavaUtilCollection;", .constantValue.asLong = 0, 0x12, -1, -1, 15, -1 },
    { "withinGroupSort_", "LOrgApacheLuceneSearchSort;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "groupSort_", "LOrgApacheLuceneSearchSort;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "totalHitCount_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "totalGroupedHitCount_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilCollection;LOrgApacheLuceneSearchSort;LOrgApacheLuceneSearchSort;IZZZ", "LJavaIoIOException;", "(Ljava/util/Collection<Lorg/apache/lucene/search/grouping/SearchGroup<TGROUP_VALUE_TYPE;>;>;Lorg/apache/lucene/search/Sort;Lorg/apache/lucene/search/Sort;IZZZ)V", "setScorer", "LOrgApacheLuceneSearchScorer;", "collect", "I", "retrieveGroup", "(I)Lorg/apache/lucene/search/grouping/AbstractSecondPassGroupingCollector$SearchGroupDocs<TGROUP_VALUE_TYPE;>;", "setNextReader", "LOrgApacheLuceneIndexIndexReader;I", "getTopGroups", "(I)Lorg/apache/lucene/search/grouping/TopGroups<TGROUP_VALUE_TYPE;>;", "Ljava/util/Map<TGROUP_VALUE_TYPE;Lorg/apache/lucene/search/grouping/AbstractSecondPassGroupingCollector$SearchGroupDocs<TGROUP_VALUE_TYPE;>;>;", "[Lorg/apache/lucene/search/grouping/AbstractSecondPassGroupingCollector$SearchGroupDocs<TGROUP_VALUE_TYPE;>;", "Ljava/util/Collection<Lorg/apache/lucene/search/grouping/SearchGroup<TGROUP_VALUE_TYPE;>;>;", "LOrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs;", "<GROUP_VALUE_TYPE:Ljava/lang/Object;>Lorg/apache/lucene/search/Collector;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector = { "AbstractSecondPassGroupingCollector", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0x401, 7, 8, -1, 16, -1, 17, -1 };
  return &_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector;
}

@end

void OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_initWithJavaUtilCollection_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_withInt_withBoolean_withBoolean_withBoolean_(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector *self, id<JavaUtilCollection> groups, OrgApacheLuceneSearchSort *groupSort, OrgApacheLuceneSearchSort *withinGroupSort, jint maxDocsPerGroup, jboolean getScores, jboolean getMaxScores, jboolean fillSortFields) {
  OrgApacheLuceneSearchCollector_init(self);
  if ([((id<JavaUtilCollection>) nil_chk(groups)) size] == 0) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"no groups to collect (groups.size() is 0)");
  }
  self->groupSort_ = groupSort;
  self->withinGroupSort_ = withinGroupSort;
  self->groups_ = groups;
  self->maxDocsPerGroup_ = maxDocsPerGroup;
  self->groupMap_ = new_JavaUtilHashMap_initWithInt_([groups size]);
  for (OrgApacheLuceneSearchGroupingSearchGroup * __strong group in groups) {
    OrgApacheLuceneSearchTopDocsCollector *collector;
    if (withinGroupSort == nil) {
      collector = OrgApacheLuceneSearchTopScoreDocCollector_createWithInt_withBoolean_(maxDocsPerGroup, true);
    }
    else {
      collector = OrgApacheLuceneSearchTopFieldCollector_createWithOrgApacheLuceneSearchSort_withInt_withBoolean_withBoolean_withBoolean_withBoolean_(withinGroupSort, maxDocsPerGroup, fillSortFields, getScores, getMaxScores, true);
    }
    (void) [self->groupMap_ putWithId:((OrgApacheLuceneSearchGroupingSearchGroup *) nil_chk(group))->groupValue_ withId:new_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs_initWithOrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_withId_withOrgApacheLuceneSearchTopDocsCollector_(self, group->groupValue_, collector)];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector)

@implementation OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs

- (instancetype)initWithOrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector:(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector *)outer$
                                                                                  withId:(id)groupValue
                                               withOrgApacheLuceneSearchTopDocsCollector:(OrgApacheLuceneSearchTopDocsCollector *)collector {
  OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs_initWithOrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_withId_withOrgApacheLuceneSearchTopDocsCollector_(self, outer$, groupValue, collector);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector:withId:withOrgApacheLuceneSearchTopDocsCollector:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "groupValue_", "LNSObject;", .constantValue.asLong = 0, 0x11, -1, -1, 2, -1 },
    { "collector_", "LOrgApacheLuceneSearchTopDocsCollector;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSObject;LOrgApacheLuceneSearchTopDocsCollector;", "(TGROUP_VALUE_TYPE;Lorg/apache/lucene/search/TopDocsCollector;)V", "TGROUP_VALUE_TYPE;", "LOrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector;", "<GROUP_VALUE_TYPE:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs = { "SearchGroupDocs", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0x1, 1, 2, 3, -1, -1, 4, -1 };
  return &_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs;
}

@end

void OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs_initWithOrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_withId_withOrgApacheLuceneSearchTopDocsCollector_(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs *self, OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector *outer$, id groupValue, OrgApacheLuceneSearchTopDocsCollector *collector) {
  NSObject_init(self);
  self->groupValue_ = groupValue;
  self->collector_ = collector;
}

OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs *new_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs_initWithOrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_withId_withOrgApacheLuceneSearchTopDocsCollector_(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector *outer$, id groupValue, OrgApacheLuceneSearchTopDocsCollector *collector) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs, initWithOrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_withId_withOrgApacheLuceneSearchTopDocsCollector_, outer$, groupValue, collector)
}

OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs *create_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs_initWithOrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_withId_withOrgApacheLuceneSearchTopDocsCollector_(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector *outer$, id groupValue, OrgApacheLuceneSearchTopDocsCollector *collector) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs, initWithOrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_withId_withOrgApacheLuceneSearchTopDocsCollector_, outer$, groupValue, collector)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs)
