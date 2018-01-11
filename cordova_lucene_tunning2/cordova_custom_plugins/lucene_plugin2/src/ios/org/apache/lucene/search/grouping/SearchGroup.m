//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/grouping/SearchGroup.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/Comparator.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/SortedSet.h"
#include "java/util/TreeSet.h"
#include "java/util/function/Function.h"
#include "java/util/function/ToDoubleFunction.h"
#include "java/util/function/ToIntFunction.h"
#include "java/util/function/ToLongFunction.h"
#include "org/apache/lucene/search/FieldComparator.h"
#include "org/apache/lucene/search/Sort.h"
#include "org/apache/lucene/search/SortField.h"
#include "org/apache/lucene/search/grouping/SearchGroup.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheLuceneSearchGroupingSearchGroup_ShardIter : NSObject {
 @public
  id<JavaUtilIterator> iter_;
  jint shardIndex_;
}

- (instancetype)initWithJavaUtilCollection:(id<JavaUtilCollection>)shard
                                   withInt:(jint)shardIndex;

- (OrgApacheLuceneSearchGroupingSearchGroup *)next;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingSearchGroup_ShardIter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingSearchGroup_ShardIter, iter_, id<JavaUtilIterator>)

__attribute__((unused)) static void OrgApacheLuceneSearchGroupingSearchGroup_ShardIter_initWithJavaUtilCollection_withInt_(OrgApacheLuceneSearchGroupingSearchGroup_ShardIter *self, id<JavaUtilCollection> shard, jint shardIndex);

__attribute__((unused)) static OrgApacheLuceneSearchGroupingSearchGroup_ShardIter *new_OrgApacheLuceneSearchGroupingSearchGroup_ShardIter_initWithJavaUtilCollection_withInt_(id<JavaUtilCollection> shard, jint shardIndex) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchGroupingSearchGroup_ShardIter *create_OrgApacheLuceneSearchGroupingSearchGroup_ShardIter_initWithJavaUtilCollection_withInt_(id<JavaUtilCollection> shard, jint shardIndex);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingSearchGroup_ShardIter)

@interface OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup : NSObject {
 @public
  id groupValue_;
  IOSObjectArray *topValues_;
  id<JavaUtilList> shards_;
  jint minShardIndex_;
  jboolean processed_;
  jboolean inQueue_;
}

- (instancetype)initWithId:(id)groupValue;

- (jboolean)neverEqualsWithId:(id)_other;

- (jboolean)isEqual:(id)_other;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup, groupValue_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup, topValues_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup, shards_, id<JavaUtilList>)

__attribute__((unused)) static void OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup_initWithId_(OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *self, id groupValue);

__attribute__((unused)) static OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *new_OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup_initWithId_(id groupValue) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *create_OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup_initWithId_(id groupValue);

__attribute__((unused)) static jboolean OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup_neverEqualsWithId_(OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *self, id _other);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup)

@interface OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator : NSObject < JavaUtilComparator > {
 @public
  IOSObjectArray *comparators_;
  IOSIntArray *reversed_;
}

- (instancetype)initWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort;

- (jint)compareWithId:(OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *)group
               withId:(OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *)other;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator, comparators_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator, reversed_, IOSIntArray *)

__attribute__((unused)) static void OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator_initWithOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator *self, OrgApacheLuceneSearchSort *groupSort);

__attribute__((unused)) static OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator *new_OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator_initWithOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchSort *groupSort) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator *create_OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator_initWithOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchSort *groupSort);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator)

@interface OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger : NSObject {
 @public
  OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator *groupComp_;
  id<JavaUtilSortedSet> queue_;
  id<JavaUtilMap> groupsSeen_;
}

- (instancetype)initWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort;

- (void)updateNextGroupWithInt:(jint)topN
withOrgApacheLuceneSearchGroupingSearchGroup_ShardIter:(OrgApacheLuceneSearchGroupingSearchGroup_ShardIter *)shard;

- (id<JavaUtilCollection>)mergeWithJavaUtilList:(id<JavaUtilList>)shards
                                        withInt:(jint)offset
                                        withInt:(jint)topN;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger, groupComp_, OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger, queue_, id<JavaUtilSortedSet>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger, groupsSeen_, id<JavaUtilMap>)

__attribute__((unused)) static void OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger_initWithOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger *self, OrgApacheLuceneSearchSort *groupSort);

__attribute__((unused)) static OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger *new_OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger_initWithOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchSort *groupSort) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger *create_OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger_initWithOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchSort *groupSort);

__attribute__((unused)) static void OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger_updateNextGroupWithInt_withOrgApacheLuceneSearchGroupingSearchGroup_ShardIter_(OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger *self, jint topN, OrgApacheLuceneSearchGroupingSearchGroup_ShardIter *shard);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger)

@implementation OrgApacheLuceneSearchGroupingSearchGroup

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchGroupingSearchGroup_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)description {
  return (JreStrcat("$@$$C", @"SearchGroup(groupValue=", groupValue_, @" sortValues=", JavaUtilArrays_toStringWithNSObjectArray_(sortValues_), ')'));
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (o == nil || [self java_getClass] != [o java_getClass]) return false;
  OrgApacheLuceneSearchGroupingSearchGroup *that = (OrgApacheLuceneSearchGroupingSearchGroup *) cast_chk(o, [OrgApacheLuceneSearchGroupingSearchGroup class]);
  if (groupValue_ == nil) {
    if (that->groupValue_ != nil) {
      return false;
    }
  }
  else if (![groupValue_ isEqual:that->groupValue_]) {
    return false;
  }
  return true;
}

- (NSUInteger)hash {
  return groupValue_ != nil ? ((jint) [groupValue_ hash]) : 0;
}

+ (id<JavaUtilCollection>)mergeWithJavaUtilList:(id<JavaUtilList>)topGroups
                                        withInt:(jint)offset
                                        withInt:(jint)topN
                  withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort {
  return OrgApacheLuceneSearchGroupingSearchGroup_mergeWithJavaUtilList_withInt_withInt_withOrgApacheLuceneSearchSort_(topGroups, offset, topN, groupSort);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 0, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x9, 4, 5, 6, 7, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(description);
  methods[2].selector = @selector(isEqual:);
  methods[3].selector = @selector(hash);
  methods[4].selector = @selector(mergeWithJavaUtilList:withInt:withInt:withOrgApacheLuceneSearchSort:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "groupValue_", "LNSObject;", .constantValue.asLong = 0, 0x1, -1, -1, 8, -1 },
    { "sortValues_", "[LNSObject;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "toString", "equals", "LNSObject;", "hashCode", "merge", "LJavaUtilList;IILOrgApacheLuceneSearchSort;", "LJavaIoIOException;", "<T:Ljava/lang/Object;>(Ljava/util/List<Ljava/util/Collection<Lorg/apache/lucene/search/grouping/SearchGroup<TT;>;>;>;IILorg/apache/lucene/search/Sort;)Ljava/util/Collection<Lorg/apache/lucene/search/grouping/SearchGroup<TT;>;>;", "TGROUP_VALUE_TYPE;", "LOrgApacheLuceneSearchGroupingSearchGroup_ShardIter;LOrgApacheLuceneSearchGroupingSearchGroup_MergedGroup;LOrgApacheLuceneSearchGroupingSearchGroup_GroupComparator;LOrgApacheLuceneSearchGroupingSearchGroup_GroupMerger;", "<GROUP_VALUE_TYPE:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingSearchGroup = { "SearchGroup", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0x1, 5, 2, -1, 9, -1, 10, -1 };
  return &_OrgApacheLuceneSearchGroupingSearchGroup;
}

@end

void OrgApacheLuceneSearchGroupingSearchGroup_init(OrgApacheLuceneSearchGroupingSearchGroup *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchGroupingSearchGroup *new_OrgApacheLuceneSearchGroupingSearchGroup_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingSearchGroup, init)
}

OrgApacheLuceneSearchGroupingSearchGroup *create_OrgApacheLuceneSearchGroupingSearchGroup_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingSearchGroup, init)
}

id<JavaUtilCollection> OrgApacheLuceneSearchGroupingSearchGroup_mergeWithJavaUtilList_withInt_withInt_withOrgApacheLuceneSearchSort_(id<JavaUtilList> topGroups, jint offset, jint topN, OrgApacheLuceneSearchSort *groupSort) {
  OrgApacheLuceneSearchGroupingSearchGroup_initialize();
  if ([((id<JavaUtilList>) nil_chk(topGroups)) size] == 0) {
    return nil;
  }
  else {
    return [new_OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger_initWithOrgApacheLuceneSearchSort_(groupSort) mergeWithJavaUtilList:topGroups withInt:offset withInt:topN];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingSearchGroup)

@implementation OrgApacheLuceneSearchGroupingSearchGroup_ShardIter

- (instancetype)initWithJavaUtilCollection:(id<JavaUtilCollection>)shard
                                   withInt:(jint)shardIndex {
  OrgApacheLuceneSearchGroupingSearchGroup_ShardIter_initWithJavaUtilCollection_withInt_(self, shard, shardIndex);
  return self;
}

- (OrgApacheLuceneSearchGroupingSearchGroup *)next {
  JreAssert([((id<JavaUtilIterator>) nil_chk(iter_)) hasNext], @"org/apache/lucene/search/grouping/SearchGroup.java:83 condition failed: assert iter.hasNext();");
  OrgApacheLuceneSearchGroupingSearchGroup *group = [iter_ next];
  if (((OrgApacheLuceneSearchGroupingSearchGroup *) nil_chk(group))->sortValues_ == nil) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"group.sortValues is null; you must pass fillFields=true to the first pass collector");
  }
  return group;
}

- (NSString *)description {
  return JreStrcat("$IC", @"ShardIter(shard=", shardIndex_, ')');
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchGroupingSearchGroup;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaUtilCollection:withInt:);
  methods[1].selector = @selector(next);
  methods[2].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "iter_", "LJavaUtilIterator;", .constantValue.asLong = 0, 0x11, -1, -1, 4, -1 },
    { "shardIndex_", "I", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilCollection;I", "(Ljava/util/Collection<Lorg/apache/lucene/search/grouping/SearchGroup<TT;>;>;I)V", "()Lorg/apache/lucene/search/grouping/SearchGroup<TT;>;", "toString", "Ljava/util/Iterator<Lorg/apache/lucene/search/grouping/SearchGroup<TT;>;>;", "LOrgApacheLuceneSearchGroupingSearchGroup;", "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingSearchGroup_ShardIter = { "ShardIter", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0xa, 3, 2, 5, -1, -1, 6, -1 };
  return &_OrgApacheLuceneSearchGroupingSearchGroup_ShardIter;
}

@end

void OrgApacheLuceneSearchGroupingSearchGroup_ShardIter_initWithJavaUtilCollection_withInt_(OrgApacheLuceneSearchGroupingSearchGroup_ShardIter *self, id<JavaUtilCollection> shard, jint shardIndex) {
  NSObject_init(self);
  self->shardIndex_ = shardIndex;
  self->iter_ = [((id<JavaUtilCollection>) nil_chk(shard)) iterator];
  JreAssert([((id<JavaUtilIterator>) nil_chk(self->iter_)) hasNext], @"org/apache/lucene/search/grouping/SearchGroup.java:79 condition failed: assert iter.hasNext();");
}

OrgApacheLuceneSearchGroupingSearchGroup_ShardIter *new_OrgApacheLuceneSearchGroupingSearchGroup_ShardIter_initWithJavaUtilCollection_withInt_(id<JavaUtilCollection> shard, jint shardIndex) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingSearchGroup_ShardIter, initWithJavaUtilCollection_withInt_, shard, shardIndex)
}

OrgApacheLuceneSearchGroupingSearchGroup_ShardIter *create_OrgApacheLuceneSearchGroupingSearchGroup_ShardIter_initWithJavaUtilCollection_withInt_(id<JavaUtilCollection> shard, jint shardIndex) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingSearchGroup_ShardIter, initWithJavaUtilCollection_withInt_, shard, shardIndex)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingSearchGroup_ShardIter)

@implementation OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup

- (instancetype)initWithId:(id)groupValue {
  OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup_initWithId_(self, groupValue);
  return self;
}

- (jboolean)neverEqualsWithId:(id)_other {
  return OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup_neverEqualsWithId_(self, _other);
}

- (jboolean)isEqual:(id)_other {
  JreAssert(OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup_neverEqualsWithId_(self, _other), @"org/apache/lucene/search/grouping/SearchGroup.java:130 condition failed: assert neverEquals(_other);");
  if ([_other isKindOfClass:[OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup class]]) {
    OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *other = (OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *) cast_chk(_other, [OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup class]);
    if (groupValue_ == nil) {
      return other == nil;
    }
    else {
      return [groupValue_ isEqual:other];
    }
  }
  else {
    return false;
  }
}

- (NSUInteger)hash {
  if (groupValue_ == nil) {
    return 0;
  }
  else {
    return ((jint) [groupValue_ hash]);
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "Z", 0x2, 2, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithId:);
  methods[1].selector = @selector(neverEqualsWithId:);
  methods[2].selector = @selector(isEqual:);
  methods[3].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "groupValue_", "LNSObject;", .constantValue.asLong = 0, 0x11, -1, -1, 5, -1 },
    { "topValues_", "[LNSObject;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "shards_", "LJavaUtilList;", .constantValue.asLong = 0, 0x11, -1, -1, 6, -1 },
    { "minShardIndex_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "processed_", "Z", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "inQueue_", "Z", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSObject;", "(TT;)V", "neverEquals", "equals", "hashCode", "TT;", "Ljava/util/List<Lorg/apache/lucene/search/grouping/SearchGroup$ShardIter<TT;>;>;", "LOrgApacheLuceneSearchGroupingSearchGroup;", "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup = { "MergedGroup", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0xa, 4, 6, 7, -1, -1, 8, -1 };
  return &_OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup;
}

@end

void OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup_initWithId_(OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *self, id groupValue) {
  NSObject_init(self);
  self->shards_ = new_JavaUtilArrayList_init();
  self->groupValue_ = groupValue;
}

OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *new_OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup_initWithId_(id groupValue) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup, initWithId_, groupValue)
}

OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *create_OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup_initWithId_(id groupValue) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup, initWithId_, groupValue)
}

jboolean OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup_neverEqualsWithId_(OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *self, id _other) {
  if ([_other isKindOfClass:[OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup class]]) {
    OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *other = (OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *) cast_chk(_other, [OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup class]);
    if (self->groupValue_ == nil) {
      JreAssert(((OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *) nil_chk(other))->groupValue_ != nil, @"org/apache/lucene/search/grouping/SearchGroup.java:118 condition failed: assert other.groupValue != null;");
    }
    else {
      JreAssert(![self->groupValue_ isEqual:((OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *) nil_chk(other))->groupValue_], @"org/apache/lucene/search/grouping/SearchGroup.java:120 condition failed: assert !groupValue.equals(other.groupValue);");
    }
  }
  return true;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup)

@implementation OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator

- (instancetype)initWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort {
  OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator_initWithOrgApacheLuceneSearchSort_(self, groupSort);
  return self;
}

- (jint)compareWithId:(OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *)group
               withId:(OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *)other {
  if (group == other) {
    return 0;
  }
  IOSObjectArray *groupValues = ((OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *) nil_chk(group))->topValues_;
  IOSObjectArray *otherValues = ((OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *) nil_chk(other))->topValues_;
  for (jint compIDX = 0; compIDX < ((IOSObjectArray *) nil_chk(comparators_))->size_; compIDX++) {
    jint c = IOSIntArray_Get(nil_chk(reversed_), compIDX) * [((OrgApacheLuceneSearchFieldComparator *) nil_chk(IOSObjectArray_Get(comparators_, compIDX))) compareValuesWithId:IOSObjectArray_Get(nil_chk(groupValues), compIDX) withId:IOSObjectArray_Get(nil_chk(otherValues), compIDX)];
    if (c != 0) {
      return c;
    }
  }
  JreAssert(group->minShardIndex_ != other->minShardIndex_, @"org/apache/lucene/search/grouping/SearchGroup.java:188 condition failed: assert group.minShardIndex != other.minShardIndex;");
  return group->minShardIndex_ - other->minShardIndex_;
}

- (id<JavaUtilComparator>)reversed {
  return JavaUtilComparator_reversed(self);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilComparator:(id<JavaUtilComparator>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilComparator_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0
                                             withJavaUtilComparator:(id<JavaUtilComparator>)arg1 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_withJavaUtilComparator_(self, arg0, arg1);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingIntWithJavaUtilFunctionToIntFunction:(id<JavaUtilFunctionToIntFunction>)arg0 {
  return JavaUtilComparator_thenComparingIntWithJavaUtilFunctionToIntFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingLongWithJavaUtilFunctionToLongFunction:(id<JavaUtilFunctionToLongFunction>)arg0 {
  return JavaUtilComparator_thenComparingLongWithJavaUtilFunctionToLongFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingDoubleWithJavaUtilFunctionToDoubleFunction:(id<JavaUtilFunctionToDoubleFunction>)arg0 {
  return JavaUtilComparator_thenComparingDoubleWithJavaUtilFunctionToDoubleFunction_(self, arg0);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 3, -1, 4, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSort:);
  methods[1].selector = @selector(compareWithId:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "comparators_", "[LOrgApacheLuceneSearchFieldComparator;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "reversed_", "[I", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSort;", "LJavaIoIOException;", "compare", "LOrgApacheLuceneSearchGroupingSearchGroup_MergedGroup;LOrgApacheLuceneSearchGroupingSearchGroup_MergedGroup;", "(Lorg/apache/lucene/search/grouping/SearchGroup$MergedGroup<TT;>;Lorg/apache/lucene/search/grouping/SearchGroup$MergedGroup<TT;>;)I", "LOrgApacheLuceneSearchGroupingSearchGroup;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/Comparator<Lorg/apache/lucene/search/grouping/SearchGroup$MergedGroup<TT;>;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator = { "GroupComparator", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0xa, 2, 2, 5, -1, -1, 6, -1 };
  return &_OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator;
}

@end

void OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator_initWithOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator *self, OrgApacheLuceneSearchSort *groupSort) {
  NSObject_init(self);
  IOSObjectArray *sortFields = [((OrgApacheLuceneSearchSort *) nil_chk(groupSort)) getSort];
  self->comparators_ = [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(sortFields))->size_ type:OrgApacheLuceneSearchFieldComparator_class_()];
  self->reversed_ = [IOSIntArray newArrayWithLength:sortFields->size_];
  for (jint compIDX = 0; compIDX < sortFields->size_; compIDX++) {
    OrgApacheLuceneSearchSortField *sortField = IOSObjectArray_Get(sortFields, compIDX);
    (void) IOSObjectArray_Set(self->comparators_, compIDX, [((OrgApacheLuceneSearchSortField *) nil_chk(sortField)) getComparatorWithInt:1 withInt:compIDX]);
    *IOSIntArray_GetRef(self->reversed_, compIDX) = [sortField getReverse] ? -1 : 1;
  }
}

OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator *new_OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator_initWithOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchSort *groupSort) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator, initWithOrgApacheLuceneSearchSort_, groupSort)
}

OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator *create_OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator_initWithOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchSort *groupSort) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator, initWithOrgApacheLuceneSearchSort_, groupSort)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator)

@implementation OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger

- (instancetype)initWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort {
  OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger_initWithOrgApacheLuceneSearchSort_(self, groupSort);
  return self;
}

- (void)updateNextGroupWithInt:(jint)topN
withOrgApacheLuceneSearchGroupingSearchGroup_ShardIter:(OrgApacheLuceneSearchGroupingSearchGroup_ShardIter *)shard {
  OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger_updateNextGroupWithInt_withOrgApacheLuceneSearchGroupingSearchGroup_ShardIter_(self, topN, shard);
}

- (id<JavaUtilCollection>)mergeWithJavaUtilList:(id<JavaUtilList>)shards
                                        withInt:(jint)offset
                                        withInt:(jint)topN {
  jint maxQueueSize = offset + topN;
  for (jint shardIDX = 0; shardIDX < [((id<JavaUtilList>) nil_chk(shards)) size]; shardIDX++) {
    id<JavaUtilCollection> shard = [shards getWithInt:shardIDX];
    if (![((id<JavaUtilCollection>) nil_chk(shard)) isEmpty]) {
      OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger_updateNextGroupWithInt_withOrgApacheLuceneSearchGroupingSearchGroup_ShardIter_(self, maxQueueSize, new_OrgApacheLuceneSearchGroupingSearchGroup_ShardIter_initWithJavaUtilCollection_withInt_(shard, shardIDX));
    }
  }
  id<JavaUtilList> newTopGroups = new_JavaUtilArrayList_init();
  jint count = 0;
  while ([((id<JavaUtilSortedSet>) nil_chk(queue_)) size] != 0) {
    OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *group = [queue_ first];
    [queue_ removeWithId:group];
    ((OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *) nil_chk(group))->processed_ = true;
    if (count++ >= offset) {
      OrgApacheLuceneSearchGroupingSearchGroup *newGroup = new_OrgApacheLuceneSearchGroupingSearchGroup_init();
      newGroup->groupValue_ = group->groupValue_;
      newGroup->sortValues_ = group->topValues_;
      [newTopGroups addWithId:newGroup];
      if ([newTopGroups size] == topN) {
        break;
      }
    }
    for (OrgApacheLuceneSearchGroupingSearchGroup_ShardIter * __strong shardIter in nil_chk(group->shards_)) {
      OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger_updateNextGroupWithInt_withOrgApacheLuceneSearchGroupingSearchGroup_ShardIter_(self, maxQueueSize, shardIter);
    }
  }
  if ([newTopGroups size] == 0) {
    return nil;
  }
  else {
    return newTopGroups;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x2, 2, 3, -1, 4, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x1, 5, 6, -1, 7, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSort:);
  methods[1].selector = @selector(updateNextGroupWithInt:withOrgApacheLuceneSearchGroupingSearchGroup_ShardIter:);
  methods[2].selector = @selector(mergeWithJavaUtilList:withInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "groupComp_", "LOrgApacheLuceneSearchGroupingSearchGroup_GroupComparator;", .constantValue.asLong = 0, 0x12, -1, -1, 8, -1 },
    { "queue_", "LJavaUtilSortedSet;", .constantValue.asLong = 0, 0x12, -1, -1, 9, -1 },
    { "groupsSeen_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x12, -1, -1, 10, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSort;", "LJavaIoIOException;", "updateNextGroup", "ILOrgApacheLuceneSearchGroupingSearchGroup_ShardIter;", "(ILorg/apache/lucene/search/grouping/SearchGroup$ShardIter<TT;>;)V", "merge", "LJavaUtilList;II", "(Ljava/util/List<Ljava/util/Collection<Lorg/apache/lucene/search/grouping/SearchGroup<TT;>;>;>;II)Ljava/util/Collection<Lorg/apache/lucene/search/grouping/SearchGroup<TT;>;>;", "Lorg/apache/lucene/search/grouping/SearchGroup$GroupComparator<TT;>;", "Ljava/util/SortedSet<Lorg/apache/lucene/search/grouping/SearchGroup$MergedGroup<TT;>;>;", "Ljava/util/Map<TT;Lorg/apache/lucene/search/grouping/SearchGroup$MergedGroup<TT;>;>;", "LOrgApacheLuceneSearchGroupingSearchGroup;", "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger = { "GroupMerger", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0xa, 3, 3, 11, -1, -1, 12, -1 };
  return &_OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger;
}

@end

void OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger_initWithOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger *self, OrgApacheLuceneSearchSort *groupSort) {
  NSObject_init(self);
  self->groupComp_ = new_OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator_initWithOrgApacheLuceneSearchSort_(groupSort);
  self->queue_ = new_JavaUtilTreeSet_initWithJavaUtilComparator_(self->groupComp_);
  self->groupsSeen_ = new_JavaUtilHashMap_init();
}

OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger *new_OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger_initWithOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchSort *groupSort) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger, initWithOrgApacheLuceneSearchSort_, groupSort)
}

OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger *create_OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger_initWithOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchSort *groupSort) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger, initWithOrgApacheLuceneSearchSort_, groupSort)
}

void OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger_updateNextGroupWithInt_withOrgApacheLuceneSearchGroupingSearchGroup_ShardIter_(OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger *self, jint topN, OrgApacheLuceneSearchGroupingSearchGroup_ShardIter *shard) {
  while ([((id<JavaUtilIterator>) nil_chk(((OrgApacheLuceneSearchGroupingSearchGroup_ShardIter *) nil_chk(shard))->iter_)) hasNext]) {
    OrgApacheLuceneSearchGroupingSearchGroup *group = [shard next];
    OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *mergedGroup = [((id<JavaUtilMap>) nil_chk(self->groupsSeen_)) getWithId:((OrgApacheLuceneSearchGroupingSearchGroup *) nil_chk(group))->groupValue_];
    jboolean isNew = mergedGroup == nil;
    if (isNew) {
      mergedGroup = new_OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup_initWithId_(group->groupValue_);
      mergedGroup->minShardIndex_ = shard->shardIndex_;
      JreAssert(group->sortValues_ != nil, @"org/apache/lucene/search/grouping/SearchGroup.java:218 condition failed: assert group.sortValues != null;");
      mergedGroup->topValues_ = group->sortValues_;
      (void) [self->groupsSeen_ putWithId:group->groupValue_ withId:mergedGroup];
      mergedGroup->inQueue_ = true;
      [((id<JavaUtilSortedSet>) nil_chk(self->queue_)) addWithId:mergedGroup];
    }
    else if (((OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *) nil_chk(mergedGroup))->processed_) {
      continue;
    }
    else {
      jboolean competes = false;
      for (jint compIDX = 0; compIDX < ((IOSObjectArray *) nil_chk(((OrgApacheLuceneSearchGroupingSearchGroup_GroupComparator *) nil_chk(self->groupComp_))->comparators_))->size_; compIDX++) {
        jint cmp = IOSIntArray_Get(nil_chk(self->groupComp_->reversed_), compIDX) * [((OrgApacheLuceneSearchFieldComparator *) nil_chk(IOSObjectArray_Get(self->groupComp_->comparators_, compIDX))) compareValuesWithId:IOSObjectArray_Get(nil_chk(group->sortValues_), compIDX) withId:IOSObjectArray_Get(nil_chk(mergedGroup->topValues_), compIDX)];
        if (cmp < 0) {
          competes = true;
          break;
        }
        else if (cmp > 0) {
          break;
        }
        else if (compIDX == self->groupComp_->comparators_->size_ - 1) {
          if (shard->shardIndex_ < mergedGroup->minShardIndex_) {
            competes = true;
          }
        }
      }
      if (competes) {
        if (mergedGroup->inQueue_) {
          [((id<JavaUtilSortedSet>) nil_chk(self->queue_)) removeWithId:mergedGroup];
        }
        mergedGroup->topValues_ = group->sortValues_;
        mergedGroup->minShardIndex_ = shard->shardIndex_;
        [((id<JavaUtilSortedSet>) nil_chk(self->queue_)) addWithId:mergedGroup];
        mergedGroup->inQueue_ = true;
      }
    }
    [((id<JavaUtilList>) nil_chk(mergedGroup->shards_)) addWithId:shard];
    break;
  }
  while ([((id<JavaUtilSortedSet>) nil_chk(self->queue_)) size] > topN) {
    OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *group = [self->queue_ last];
    [self->queue_ removeWithId:group];
    ((OrgApacheLuceneSearchGroupingSearchGroup_MergedGroup *) nil_chk(group))->inQueue_ = false;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingSearchGroup_GroupMerger)
