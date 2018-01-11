//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/grouping/TopGroups.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "org/apache/lucene/search/ScoreDoc.h"
#include "org/apache/lucene/search/Sort.h"
#include "org/apache/lucene/search/TopDocs.h"
#include "org/apache/lucene/search/grouping/GroupDocs.h"
#include "org/apache/lucene/search/grouping/TopGroups.h"

@implementation OrgApacheLuceneSearchGroupingTopGroups

- (instancetype)initWithOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)groupSort
                    withOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)withinGroupSort
                                                    withInt:(jint)totalHitCount
                                                    withInt:(jint)totalGroupedHitCount
            withOrgApacheLuceneSearchGroupingGroupDocsArray:(IOSObjectArray *)groups {
  OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchSortFieldArray_withOrgApacheLuceneSearchSortFieldArray_withInt_withInt_withOrgApacheLuceneSearchGroupingGroupDocsArray_(self, groupSort, withinGroupSort, totalHitCount, totalGroupedHitCount, groups);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchGroupingTopGroups:(OrgApacheLuceneSearchGroupingTopGroups *)oldTopGroups
                                           withJavaLangInteger:(JavaLangInteger *)totalGroupCount {
  OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchGroupingTopGroups_withJavaLangInteger_(self, oldTopGroups, totalGroupCount);
  return self;
}

+ (OrgApacheLuceneSearchGroupingTopGroups *)mergeWithOrgApacheLuceneSearchGroupingTopGroupsArray:(IOSObjectArray *)shardGroups
                                                                   withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort
                                                                   withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)docSort
                                                                                         withInt:(jint)docOffset
                                                                                         withInt:(jint)docTopN {
  return OrgApacheLuceneSearchGroupingTopGroups_mergeWithOrgApacheLuceneSearchGroupingTopGroupsArray_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_withInt_withInt_(shardGroups, groupSort, docSort, docOffset, docTopN);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, 3, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchGroupingTopGroups;", 0x9, 4, 5, 6, 7, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSortFieldArray:withOrgApacheLuceneSearchSortFieldArray:withInt:withInt:withOrgApacheLuceneSearchGroupingGroupDocsArray:);
  methods[1].selector = @selector(initWithOrgApacheLuceneSearchGroupingTopGroups:withJavaLangInteger:);
  methods[2].selector = @selector(mergeWithOrgApacheLuceneSearchGroupingTopGroupsArray:withOrgApacheLuceneSearchSort:withOrgApacheLuceneSearchSort:withInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "totalHitCount_", "I", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "totalGroupedHitCount_", "I", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "totalGroupCount_", "LJavaLangInteger;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "groups_", "[LOrgApacheLuceneSearchGroupingGroupDocs;", .constantValue.asLong = 0, 0x11, -1, -1, 8, -1 },
    { "groupSort_", "[LOrgApacheLuceneSearchSortField;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "withinGroupSort_", "[LOrgApacheLuceneSearchSortField;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[LOrgApacheLuceneSearchSortField;[LOrgApacheLuceneSearchSortField;II[LOrgApacheLuceneSearchGroupingGroupDocs;", "([Lorg/apache/lucene/search/SortField;[Lorg/apache/lucene/search/SortField;II[Lorg/apache/lucene/search/grouping/GroupDocs<TGROUP_VALUE_TYPE;>;)V", "LOrgApacheLuceneSearchGroupingTopGroups;LJavaLangInteger;", "(Lorg/apache/lucene/search/grouping/TopGroups<TGROUP_VALUE_TYPE;>;Ljava/lang/Integer;)V", "merge", "[LOrgApacheLuceneSearchGroupingTopGroups;LOrgApacheLuceneSearchSort;LOrgApacheLuceneSearchSort;II", "LJavaIoIOException;", "<T:Ljava/lang/Object;>([Lorg/apache/lucene/search/grouping/TopGroups<TT;>;Lorg/apache/lucene/search/Sort;Lorg/apache/lucene/search/Sort;II)Lorg/apache/lucene/search/grouping/TopGroups<TT;>;", "[Lorg/apache/lucene/search/grouping/GroupDocs<TGROUP_VALUE_TYPE;>;", "<GROUP_VALUE_TYPE:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingTopGroups = { "TopGroups", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0x1, 3, 6, -1, -1, -1, 9, -1 };
  return &_OrgApacheLuceneSearchGroupingTopGroups;
}

@end

void OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchSortFieldArray_withOrgApacheLuceneSearchSortFieldArray_withInt_withInt_withOrgApacheLuceneSearchGroupingGroupDocsArray_(OrgApacheLuceneSearchGroupingTopGroups *self, IOSObjectArray *groupSort, IOSObjectArray *withinGroupSort, jint totalHitCount, jint totalGroupedHitCount, IOSObjectArray *groups) {
  NSObject_init(self);
  self->groupSort_ = groupSort;
  self->withinGroupSort_ = withinGroupSort;
  self->totalHitCount_ = totalHitCount;
  self->totalGroupedHitCount_ = totalGroupedHitCount;
  self->groups_ = groups;
  self->totalGroupCount_ = nil;
}

OrgApacheLuceneSearchGroupingTopGroups *new_OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchSortFieldArray_withOrgApacheLuceneSearchSortFieldArray_withInt_withInt_withOrgApacheLuceneSearchGroupingGroupDocsArray_(IOSObjectArray *groupSort, IOSObjectArray *withinGroupSort, jint totalHitCount, jint totalGroupedHitCount, IOSObjectArray *groups) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingTopGroups, initWithOrgApacheLuceneSearchSortFieldArray_withOrgApacheLuceneSearchSortFieldArray_withInt_withInt_withOrgApacheLuceneSearchGroupingGroupDocsArray_, groupSort, withinGroupSort, totalHitCount, totalGroupedHitCount, groups)
}

OrgApacheLuceneSearchGroupingTopGroups *create_OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchSortFieldArray_withOrgApacheLuceneSearchSortFieldArray_withInt_withInt_withOrgApacheLuceneSearchGroupingGroupDocsArray_(IOSObjectArray *groupSort, IOSObjectArray *withinGroupSort, jint totalHitCount, jint totalGroupedHitCount, IOSObjectArray *groups) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingTopGroups, initWithOrgApacheLuceneSearchSortFieldArray_withOrgApacheLuceneSearchSortFieldArray_withInt_withInt_withOrgApacheLuceneSearchGroupingGroupDocsArray_, groupSort, withinGroupSort, totalHitCount, totalGroupedHitCount, groups)
}

void OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchGroupingTopGroups_withJavaLangInteger_(OrgApacheLuceneSearchGroupingTopGroups *self, OrgApacheLuceneSearchGroupingTopGroups *oldTopGroups, JavaLangInteger *totalGroupCount) {
  NSObject_init(self);
  self->groupSort_ = ((OrgApacheLuceneSearchGroupingTopGroups *) nil_chk(oldTopGroups))->groupSort_;
  self->withinGroupSort_ = oldTopGroups->withinGroupSort_;
  self->totalHitCount_ = oldTopGroups->totalHitCount_;
  self->totalGroupedHitCount_ = oldTopGroups->totalGroupedHitCount_;
  self->groups_ = oldTopGroups->groups_;
  self->totalGroupCount_ = totalGroupCount;
}

OrgApacheLuceneSearchGroupingTopGroups *new_OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchGroupingTopGroups_withJavaLangInteger_(OrgApacheLuceneSearchGroupingTopGroups *oldTopGroups, JavaLangInteger *totalGroupCount) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingTopGroups, initWithOrgApacheLuceneSearchGroupingTopGroups_withJavaLangInteger_, oldTopGroups, totalGroupCount)
}

OrgApacheLuceneSearchGroupingTopGroups *create_OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchGroupingTopGroups_withJavaLangInteger_(OrgApacheLuceneSearchGroupingTopGroups *oldTopGroups, JavaLangInteger *totalGroupCount) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingTopGroups, initWithOrgApacheLuceneSearchGroupingTopGroups_withJavaLangInteger_, oldTopGroups, totalGroupCount)
}

OrgApacheLuceneSearchGroupingTopGroups *OrgApacheLuceneSearchGroupingTopGroups_mergeWithOrgApacheLuceneSearchGroupingTopGroupsArray_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_withInt_withInt_(IOSObjectArray *shardGroups, OrgApacheLuceneSearchSort *groupSort, OrgApacheLuceneSearchSort *docSort, jint docOffset, jint docTopN) {
  OrgApacheLuceneSearchGroupingTopGroups_initialize();
  if (((IOSObjectArray *) nil_chk(shardGroups))->size_ == 0) {
    return nil;
  }
  jint totalHitCount = 0;
  jint totalGroupedHitCount = 0;
  JavaLangInteger *totalGroupCount = nil;
  jint numGroups = ((IOSObjectArray *) nil_chk(((OrgApacheLuceneSearchGroupingTopGroups *) nil_chk(IOSObjectArray_Get(shardGroups, 0)))->groups_))->size_;
  {
    IOSObjectArray *a__ = shardGroups;
    OrgApacheLuceneSearchGroupingTopGroups * const *b__ = a__->buffer_;
    OrgApacheLuceneSearchGroupingTopGroups * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchGroupingTopGroups *shard = *b__++;
      if (numGroups != ((OrgApacheLuceneSearchGroupingTopGroups *) nil_chk(shard))->groups_->size_) {
        @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"number of groups differs across shards; you must pass same top groups to all shards' second-pass collector");
      }
      totalHitCount += shard->totalHitCount_;
      totalGroupedHitCount += shard->totalGroupedHitCount_;
      if (shard->totalGroupCount_ != nil) {
        if (totalGroupCount == nil) {
          totalGroupCount = JavaLangInteger_valueOfWithInt_(0);
        }
        (void) JreBoxedPlusAssignStrongInt(&totalGroupCount, [shard->totalGroupCount_ intValue]);
      }
    }
  }
  IOSObjectArray *mergedGroupDocs = [IOSObjectArray newArrayWithLength:numGroups type:OrgApacheLuceneSearchGroupingGroupDocs_class_()];
  IOSObjectArray *shardTopDocs = [IOSObjectArray newArrayWithLength:shardGroups->size_ type:OrgApacheLuceneSearchTopDocs_class_()];
  for (jint groupIDX = 0; groupIDX < numGroups; groupIDX++) {
    id groupValue = ((OrgApacheLuceneSearchGroupingGroupDocs *) nil_chk(IOSObjectArray_Get(((OrgApacheLuceneSearchGroupingTopGroups *) nil_chk(IOSObjectArray_Get(shardGroups, 0)))->groups_, groupIDX)))->groupValue_;
    jfloat maxScore = JavaLangFloat_MIN_VALUE;
    jint totalHits = 0;
    for (jint shardIDX = 0; shardIDX < shardGroups->size_; shardIDX++) {
      OrgApacheLuceneSearchGroupingTopGroups *shard = IOSObjectArray_Get(shardGroups, shardIDX);
      OrgApacheLuceneSearchGroupingGroupDocs *shardGroupDocs = IOSObjectArray_Get(((OrgApacheLuceneSearchGroupingTopGroups *) nil_chk(shard))->groups_, groupIDX);
      if (groupValue == nil) {
        if (((OrgApacheLuceneSearchGroupingGroupDocs *) nil_chk(shardGroupDocs))->groupValue_ != nil) {
          @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"group values differ across shards; you must pass same top groups to all shards' second-pass collector");
        }
      }
      else if (![groupValue isEqual:((OrgApacheLuceneSearchGroupingGroupDocs *) nil_chk(shardGroupDocs))->groupValue_]) {
        @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"group values differ across shards; you must pass same top groups to all shards' second-pass collector");
      }
      (void) IOSObjectArray_SetAndConsume(shardTopDocs, shardIDX, new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(shardGroupDocs->totalHits_, shardGroupDocs->scoreDocs_, shardGroupDocs->maxScore_));
      maxScore = JavaLangMath_maxWithFloat_withFloat_(maxScore, shardGroupDocs->maxScore_);
      totalHits += shardGroupDocs->totalHits_;
    }
    OrgApacheLuceneSearchTopDocs *mergedTopDocs = OrgApacheLuceneSearchTopDocs_mergeWithOrgApacheLuceneSearchSort_withInt_withOrgApacheLuceneSearchTopDocsArray_(docSort, docOffset + docTopN, shardTopDocs);
    IOSObjectArray *mergedScoreDocs;
    if (docOffset == 0) {
      mergedScoreDocs = ((OrgApacheLuceneSearchTopDocs *) nil_chk(mergedTopDocs))->scoreDocs_;
    }
    else if (docOffset >= ((IOSObjectArray *) nil_chk(((OrgApacheLuceneSearchTopDocs *) nil_chk(mergedTopDocs))->scoreDocs_))->size_) {
      mergedScoreDocs = [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneSearchScoreDoc_class_()];
    }
    else {
      mergedScoreDocs = [IOSObjectArray newArrayWithLength:mergedTopDocs->scoreDocs_->size_ - docOffset type:OrgApacheLuceneSearchScoreDoc_class_()];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(mergedTopDocs->scoreDocs_, docOffset, mergedScoreDocs, 0, mergedTopDocs->scoreDocs_->size_ - docOffset);
    }
    (void) IOSObjectArray_SetAndConsume(mergedGroupDocs, groupIDX, new_OrgApacheLuceneSearchGroupingGroupDocs_initWithFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_(maxScore, totalHits, mergedScoreDocs, groupValue, ((OrgApacheLuceneSearchGroupingGroupDocs *) nil_chk(IOSObjectArray_Get(((OrgApacheLuceneSearchGroupingTopGroups *) nil_chk(IOSObjectArray_Get(shardGroups, 0)))->groups_, groupIDX)))->groupSortValues_));
  }
  if (totalGroupCount != nil) {
    OrgApacheLuceneSearchGroupingTopGroups *result = new_OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchSortFieldArray_withOrgApacheLuceneSearchSortFieldArray_withInt_withInt_withOrgApacheLuceneSearchGroupingGroupDocsArray_([((OrgApacheLuceneSearchSort *) nil_chk(groupSort)) getSort], docSort == nil ? nil : [docSort getSort], totalHitCount, totalGroupedHitCount, mergedGroupDocs);
    return new_OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchGroupingTopGroups_withJavaLangInteger_(result, totalGroupCount);
  }
  else {
    return new_OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchSortFieldArray_withOrgApacheLuceneSearchSortFieldArray_withInt_withInt_withOrgApacheLuceneSearchGroupingGroupDocsArray_([((OrgApacheLuceneSearchSort *) nil_chk(groupSort)) getSort], docSort == nil ? nil : [docSort getSort], totalHitCount, totalGroupedHitCount, mergedGroupDocs);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingTopGroups)
