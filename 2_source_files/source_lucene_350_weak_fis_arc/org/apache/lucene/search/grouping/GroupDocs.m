//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/grouping/GroupDocs.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/search/grouping/GroupDocs.h"

@implementation OrgApacheLuceneSearchGroupingGroupDocs

- (instancetype)initWithFloat:(jfloat)maxScore
                      withInt:(jint)totalHits
withOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)scoreDocs
                       withId:(id)groupValue
            withNSObjectArray:(IOSObjectArray *)groupSortValues {
  OrgApacheLuceneSearchGroupingGroupDocs_initWithFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_(self, maxScore, totalHits, scoreDocs, groupValue, groupSortValues);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithFloat:withInt:withOrgApacheLuceneSearchScoreDocArray:withId:withNSObjectArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "groupValue_", "LNSObject;", .constantValue.asLong = 0, 0x11, -1, -1, 2, -1 },
    { "maxScore_", "F", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "scoreDocs_", "[LOrgApacheLuceneSearchScoreDoc;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "totalHits_", "I", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "groupSortValues_", "[LNSObject;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "FI[LOrgApacheLuceneSearchScoreDoc;LNSObject;[LNSObject;", "(FI[Lorg/apache/lucene/search/ScoreDoc;TGROUP_VALUE_TYPE;[Ljava/lang/Object;)V", "TGROUP_VALUE_TYPE;", "<GROUP_VALUE_TYPE:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingGroupDocs = { "GroupDocs", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0x1, 1, 5, -1, -1, -1, 3, -1 };
  return &_OrgApacheLuceneSearchGroupingGroupDocs;
}

@end

void OrgApacheLuceneSearchGroupingGroupDocs_initWithFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_(OrgApacheLuceneSearchGroupingGroupDocs *self, jfloat maxScore, jint totalHits, IOSObjectArray *scoreDocs, id groupValue, IOSObjectArray *groupSortValues) {
  NSObject_init(self);
  self->maxScore_ = maxScore;
  self->totalHits_ = totalHits;
  self->scoreDocs_ = scoreDocs;
  self->groupValue_ = groupValue;
  self->groupSortValues_ = groupSortValues;
}

OrgApacheLuceneSearchGroupingGroupDocs *new_OrgApacheLuceneSearchGroupingGroupDocs_initWithFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_(jfloat maxScore, jint totalHits, IOSObjectArray *scoreDocs, id groupValue, IOSObjectArray *groupSortValues) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingGroupDocs, initWithFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_, maxScore, totalHits, scoreDocs, groupValue, groupSortValues)
}

OrgApacheLuceneSearchGroupingGroupDocs *create_OrgApacheLuceneSearchGroupingGroupDocs_initWithFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_(jfloat maxScore, jint totalHits, IOSObjectArray *scoreDocs, id groupValue, IOSObjectArray *groupSortValues) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingGroupDocs, initWithFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_, maxScore, totalHits, scoreDocs, groupValue, groupSortValues)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingGroupDocs)
