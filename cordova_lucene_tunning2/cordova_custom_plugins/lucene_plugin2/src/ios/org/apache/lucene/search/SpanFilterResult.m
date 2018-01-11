//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/SpanFilterResult.java
//

#include "J2ObjC_source.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/SpanFilterResult.h"

@interface OrgApacheLuceneSearchSpanFilterResult () {
 @public
  OrgApacheLuceneSearchDocIdSet *docIdSet_;
  id<JavaUtilList> positions_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpanFilterResult, docIdSet_, OrgApacheLuceneSearchDocIdSet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpanFilterResult, positions_, id<JavaUtilList>)

@interface OrgApacheLuceneSearchSpanFilterResult_PositionInfo () {
 @public
  jint doc_;
  id<JavaUtilList> positions_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpanFilterResult_PositionInfo, positions_, id<JavaUtilList>)

@interface OrgApacheLuceneSearchSpanFilterResult_StartEnd () {
 @public
  jint start_;
  jint end_;
}

@end

@implementation OrgApacheLuceneSearchSpanFilterResult

- (instancetype)initWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)docIdSet
                                     withJavaUtilList:(id<JavaUtilList>)positions {
  OrgApacheLuceneSearchSpanFilterResult_initWithOrgApacheLuceneSearchDocIdSet_withJavaUtilList_(self, docIdSet, positions);
  return self;
}

- (id<JavaUtilList>)getPositions {
  return positions_;
}

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSet {
  return docIdSet_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDocIdSet;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchDocIdSet:withJavaUtilList:);
  methods[1].selector = @selector(getPositions);
  methods[2].selector = @selector(getDocIdSet);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "docIdSet_", "LOrgApacheLuceneSearchDocIdSet;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "positions_", "LJavaUtilList;", .constantValue.asLong = 0, 0x2, -1, -1, 3, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchDocIdSet;LJavaUtilList;", "(Lorg/apache/lucene/search/DocIdSet;Ljava/util/List<Lorg/apache/lucene/search/SpanFilterResult$PositionInfo;>;)V", "()Ljava/util/List<Lorg/apache/lucene/search/SpanFilterResult$PositionInfo;>;", "Ljava/util/List<Lorg/apache/lucene/search/SpanFilterResult$PositionInfo;>;", "LOrgApacheLuceneSearchSpanFilterResult_PositionInfo;LOrgApacheLuceneSearchSpanFilterResult_StartEnd;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpanFilterResult = { "SpanFilterResult", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 3, 2, -1, 4, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSpanFilterResult;
}

@end

void OrgApacheLuceneSearchSpanFilterResult_initWithOrgApacheLuceneSearchDocIdSet_withJavaUtilList_(OrgApacheLuceneSearchSpanFilterResult *self, OrgApacheLuceneSearchDocIdSet *docIdSet, id<JavaUtilList> positions) {
  NSObject_init(self);
  self->docIdSet_ = docIdSet;
  self->positions_ = positions;
}

OrgApacheLuceneSearchSpanFilterResult *new_OrgApacheLuceneSearchSpanFilterResult_initWithOrgApacheLuceneSearchDocIdSet_withJavaUtilList_(OrgApacheLuceneSearchDocIdSet *docIdSet, id<JavaUtilList> positions) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpanFilterResult, initWithOrgApacheLuceneSearchDocIdSet_withJavaUtilList_, docIdSet, positions)
}

OrgApacheLuceneSearchSpanFilterResult *create_OrgApacheLuceneSearchSpanFilterResult_initWithOrgApacheLuceneSearchDocIdSet_withJavaUtilList_(OrgApacheLuceneSearchDocIdSet *docIdSet, id<JavaUtilList> positions) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpanFilterResult, initWithOrgApacheLuceneSearchDocIdSet_withJavaUtilList_, docIdSet, positions)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpanFilterResult)

@implementation OrgApacheLuceneSearchSpanFilterResult_PositionInfo

- (instancetype)initWithInt:(jint)doc {
  OrgApacheLuceneSearchSpanFilterResult_PositionInfo_initWithInt_(self, doc);
  return self;
}

- (void)addPositionWithInt:(jint)start
                   withInt:(jint)end {
  [((id<JavaUtilList>) nil_chk(positions_)) addWithId:new_OrgApacheLuceneSearchSpanFilterResult_StartEnd_initWithInt_withInt_(start, end)];
}

- (jint)getDoc {
  return doc_;
}

- (id<JavaUtilList>)getPositions {
  return positions_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(addPositionWithInt:withInt:);
  methods[2].selector = @selector(getDoc);
  methods[3].selector = @selector(getPositions);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "doc_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "positions_", "LJavaUtilList;", .constantValue.asLong = 0, 0x2, -1, -1, 4, -1 },
  };
  static const void *ptrTable[] = { "I", "addPosition", "II", "()Ljava/util/List<Lorg/apache/lucene/search/SpanFilterResult$StartEnd;>;", "Ljava/util/List<Lorg/apache/lucene/search/SpanFilterResult$StartEnd;>;", "LOrgApacheLuceneSearchSpanFilterResult;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpanFilterResult_PositionInfo = { "PositionInfo", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x9, 4, 2, 5, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSpanFilterResult_PositionInfo;
}

@end

void OrgApacheLuceneSearchSpanFilterResult_PositionInfo_initWithInt_(OrgApacheLuceneSearchSpanFilterResult_PositionInfo *self, jint doc) {
  NSObject_init(self);
  self->doc_ = doc;
  self->positions_ = new_JavaUtilArrayList_init();
}

OrgApacheLuceneSearchSpanFilterResult_PositionInfo *new_OrgApacheLuceneSearchSpanFilterResult_PositionInfo_initWithInt_(jint doc) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpanFilterResult_PositionInfo, initWithInt_, doc)
}

OrgApacheLuceneSearchSpanFilterResult_PositionInfo *create_OrgApacheLuceneSearchSpanFilterResult_PositionInfo_initWithInt_(jint doc) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpanFilterResult_PositionInfo, initWithInt_, doc)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpanFilterResult_PositionInfo)

@implementation OrgApacheLuceneSearchSpanFilterResult_StartEnd

- (instancetype)initWithInt:(jint)start
                    withInt:(jint)end {
  OrgApacheLuceneSearchSpanFilterResult_StartEnd_initWithInt_withInt_(self, start, end);
  return self;
}

- (jint)getEnd {
  return end_;
}

- (jint)getStart {
  return start_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:withInt:);
  methods[1].selector = @selector(getEnd);
  methods[2].selector = @selector(getStart);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "start_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "end_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "II", "LOrgApacheLuceneSearchSpanFilterResult;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpanFilterResult_StartEnd = { "StartEnd", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x9, 3, 2, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSpanFilterResult_StartEnd;
}

@end

void OrgApacheLuceneSearchSpanFilterResult_StartEnd_initWithInt_withInt_(OrgApacheLuceneSearchSpanFilterResult_StartEnd *self, jint start, jint end) {
  NSObject_init(self);
  self->start_ = start;
  self->end_ = end;
}

OrgApacheLuceneSearchSpanFilterResult_StartEnd *new_OrgApacheLuceneSearchSpanFilterResult_StartEnd_initWithInt_withInt_(jint start, jint end) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpanFilterResult_StartEnd, initWithInt_withInt_, start, end)
}

OrgApacheLuceneSearchSpanFilterResult_StartEnd *create_OrgApacheLuceneSearchSpanFilterResult_StartEnd_initWithInt_withInt_(jint start, jint end) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpanFilterResult_StartEnd, initWithInt_withInt_, start, end)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpanFilterResult_StartEnd)
