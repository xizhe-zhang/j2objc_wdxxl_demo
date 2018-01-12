//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/spans/NearSpansOrdered.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Comparator.h"
#include "java/util/HashSet.h"
#include "java/util/LinkedList.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "java/util/function/Function.h"
#include "java/util/function/ToDoubleFunction.h"
#include "java/util/function/ToIntFunction.h"
#include "java/util/function/ToLongFunction.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/spans/NearSpansOrdered.h"
#include "org/apache/lucene/search/spans/SpanNearQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/apache/lucene/search/spans/Spans.h"
#include "org/apache/lucene/util/ArrayUtil.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheLuceneSearchSpansNearSpansOrdered () {
 @public
  jint allowedSlop_;
  jboolean firstTime_;
  jboolean more_;
  IOSObjectArray *subSpans_;
  jboolean inSameDoc_;
  jint matchDoc_;
  jint matchStart_;
  jint matchEnd_;
  id<JavaUtilList> matchPayload_;
  IOSObjectArray *subSpansByDoc_;
  id<JavaUtilComparator> spanDocComparator_;
  OrgApacheLuceneSearchSpansSpanNearQuery *query_;
  jboolean collectPayloads_;
}

- (jboolean)advanceAfterOrdered;

- (jboolean)toSameDoc;

+ (jboolean)docSpansOrderedWithInt:(jint)start1
                           withInt:(jint)end1
                           withInt:(jint)start2
                           withInt:(jint)end2;

- (jboolean)stretchToOrder;

- (jboolean)shrinkToAfterShortestMatch;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansNearSpansOrdered, subSpans_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansNearSpansOrdered, matchPayload_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansNearSpansOrdered, subSpansByDoc_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansNearSpansOrdered, spanDocComparator_, id<JavaUtilComparator>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansNearSpansOrdered, query_, OrgApacheLuceneSearchSpansSpanNearQuery *)

__attribute__((unused)) static jboolean OrgApacheLuceneSearchSpansNearSpansOrdered_advanceAfterOrdered(OrgApacheLuceneSearchSpansNearSpansOrdered *self);

__attribute__((unused)) static jboolean OrgApacheLuceneSearchSpansNearSpansOrdered_toSameDoc(OrgApacheLuceneSearchSpansNearSpansOrdered *self);

__attribute__((unused)) static jboolean OrgApacheLuceneSearchSpansNearSpansOrdered_docSpansOrderedWithInt_withInt_withInt_withInt_(jint start1, jint end1, jint start2, jint end2);

__attribute__((unused)) static jboolean OrgApacheLuceneSearchSpansNearSpansOrdered_stretchToOrder(OrgApacheLuceneSearchSpansNearSpansOrdered *self);

__attribute__((unused)) static jboolean OrgApacheLuceneSearchSpansNearSpansOrdered_shrinkToAfterShortestMatch(OrgApacheLuceneSearchSpansNearSpansOrdered *self);

@interface OrgApacheLuceneSearchSpansNearSpansOrdered_1 : NSObject < JavaUtilComparator >

- (instancetype)init;

- (jint)compareWithId:(OrgApacheLuceneSearchSpansSpans *)o1
               withId:(OrgApacheLuceneSearchSpansSpans *)o2;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansNearSpansOrdered_1)

__attribute__((unused)) static void OrgApacheLuceneSearchSpansNearSpansOrdered_1_init(OrgApacheLuceneSearchSpansNearSpansOrdered_1 *self);

__attribute__((unused)) static OrgApacheLuceneSearchSpansNearSpansOrdered_1 *new_OrgApacheLuceneSearchSpansNearSpansOrdered_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSpansNearSpansOrdered_1 *create_OrgApacheLuceneSearchSpansNearSpansOrdered_1_init(void);

@implementation OrgApacheLuceneSearchSpansNearSpansOrdered

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanNearQuery:(OrgApacheLuceneSearchSpansSpanNearQuery *)spanNearQuery
                            withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_(self, spanNearQuery, reader);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanNearQuery:(OrgApacheLuceneSearchSpansSpanNearQuery *)spanNearQuery
                            withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                    withBoolean:(jboolean)collectPayloads {
  OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_withBoolean_(self, spanNearQuery, reader, collectPayloads);
  return self;
}

- (jint)doc {
  return matchDoc_;
}

- (jint)start {
  return matchStart_;
}

- (jint)end {
  return matchEnd_;
}

- (IOSObjectArray *)getSubSpans {
  return subSpans_;
}

- (id<JavaUtilCollection>)getPayload {
  return matchPayload_;
}

- (jboolean)isPayloadAvailable {
  return [((id<JavaUtilList>) nil_chk(matchPayload_)) isEmpty] == false;
}

- (jboolean)next {
  if (firstTime_) {
    firstTime_ = false;
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(subSpans_))->size_; i++) {
      if (![((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(subSpans_, i))) next]) {
        more_ = false;
        return false;
      }
    }
    more_ = true;
  }
  if (collectPayloads_) {
    [((id<JavaUtilList>) nil_chk(matchPayload_)) clear];
  }
  return OrgApacheLuceneSearchSpansNearSpansOrdered_advanceAfterOrdered(self);
}

- (jboolean)skipToWithInt:(jint)target {
  if (firstTime_) {
    firstTime_ = false;
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(subSpans_))->size_; i++) {
      if (![((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(subSpans_, i))) skipToWithInt:target]) {
        more_ = false;
        return false;
      }
    }
    more_ = true;
  }
  else if (more_ && ([((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(nil_chk(subSpans_), 0))) doc] < target)) {
    if ([((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(nil_chk(subSpans_), 0))) skipToWithInt:target]) {
      inSameDoc_ = false;
    }
    else {
      more_ = false;
      return false;
    }
  }
  if (collectPayloads_) {
    [((id<JavaUtilList>) nil_chk(matchPayload_)) clear];
  }
  return OrgApacheLuceneSearchSpansNearSpansOrdered_advanceAfterOrdered(self);
}

- (jboolean)advanceAfterOrdered {
  return OrgApacheLuceneSearchSpansNearSpansOrdered_advanceAfterOrdered(self);
}

- (jboolean)toSameDoc {
  return OrgApacheLuceneSearchSpansNearSpansOrdered_toSameDoc(self);
}

+ (jboolean)docSpansOrderedWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans1
                           withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans2 {
  return OrgApacheLuceneSearchSpansNearSpansOrdered_docSpansOrderedWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_(spans1, spans2);
}

+ (jboolean)docSpansOrderedWithInt:(jint)start1
                           withInt:(jint)end1
                           withInt:(jint)start2
                           withInt:(jint)end2 {
  return OrgApacheLuceneSearchSpansNearSpansOrdered_docSpansOrderedWithInt_withInt_withInt_withInt_(start1, end1, start2, end2);
}

- (jboolean)stretchToOrder {
  return OrgApacheLuceneSearchSpansNearSpansOrdered_stretchToOrder(self);
}

- (jboolean)shrinkToAfterShortestMatch {
  return OrgApacheLuceneSearchSpansNearSpansOrdered_shrinkToAfterShortestMatch(self);
}

- (NSString *)description {
  return JreStrcat("$C$$$", [[self java_getClass] getName], '(', [((OrgApacheLuceneSearchSpansSpanNearQuery *) nil_chk(query_)) description], @")@", (firstTime_ ? @"START" : (more_ ? (JreStrcat("ICICI", [self doc], ':', [self start], '-', [self end])) : @"END")));
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LOrgApacheLuceneSearchSpansSpans;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x1, -1, -1, 1, 3, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 5, 1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x18, 6, 7, -1, -1, -1, -1 },
    { NULL, "Z", 0x1a, 6, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 9, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSpansSpanNearQuery:withOrgApacheLuceneIndexIndexReader:);
  methods[1].selector = @selector(initWithOrgApacheLuceneSearchSpansSpanNearQuery:withOrgApacheLuceneIndexIndexReader:withBoolean:);
  methods[2].selector = @selector(doc);
  methods[3].selector = @selector(start);
  methods[4].selector = @selector(end);
  methods[5].selector = @selector(getSubSpans);
  methods[6].selector = @selector(getPayload);
  methods[7].selector = @selector(isPayloadAvailable);
  methods[8].selector = @selector(next);
  methods[9].selector = @selector(skipToWithInt:);
  methods[10].selector = @selector(advanceAfterOrdered);
  methods[11].selector = @selector(toSameDoc);
  methods[12].selector = @selector(docSpansOrderedWithOrgApacheLuceneSearchSpansSpans:withOrgApacheLuceneSearchSpansSpans:);
  methods[13].selector = @selector(docSpansOrderedWithInt:withInt:withInt:withInt:);
  methods[14].selector = @selector(stretchToOrder);
  methods[15].selector = @selector(shrinkToAfterShortestMatch);
  methods[16].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "allowedSlop_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "firstTime_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "more_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "subSpans_", "[LOrgApacheLuceneSearchSpansSpans;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "inSameDoc_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "matchDoc_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "matchStart_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "matchEnd_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "matchPayload_", "LJavaUtilList;", .constantValue.asLong = 0, 0x2, -1, -1, 10, -1 },
    { "subSpansByDoc_", "[LOrgApacheLuceneSearchSpansSpans;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "spanDocComparator_", "LJavaUtilComparator;", .constantValue.asLong = 0, 0x12, -1, -1, 11, -1 },
    { "query_", "LOrgApacheLuceneSearchSpansSpanNearQuery;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "collectPayloads_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSpansSpanNearQuery;LOrgApacheLuceneIndexIndexReader;", "LJavaIoIOException;", "LOrgApacheLuceneSearchSpansSpanNearQuery;LOrgApacheLuceneIndexIndexReader;Z", "()Ljava/util/Collection<[B>;", "skipTo", "I", "docSpansOrdered", "LOrgApacheLuceneSearchSpansSpans;LOrgApacheLuceneSearchSpansSpans;", "IIII", "toString", "Ljava/util/List<[B>;", "Ljava/util/Comparator<Lorg/apache/lucene/search/spans/Spans;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansNearSpansOrdered = { "NearSpansOrdered", "org.apache.lucene.search.spans", ptrTable, methods, fields, 7, 0x1, 17, 13, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSpansNearSpansOrdered;
}

@end

void OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchSpansNearSpansOrdered *self, OrgApacheLuceneSearchSpansSpanNearQuery *spanNearQuery, OrgApacheLuceneIndexIndexReader *reader) {
  OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_withBoolean_(self, spanNearQuery, reader, true);
}

OrgApacheLuceneSearchSpansNearSpansOrdered *new_OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchSpansSpanNearQuery *spanNearQuery, OrgApacheLuceneIndexIndexReader *reader) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansNearSpansOrdered, initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_, spanNearQuery, reader)
}

OrgApacheLuceneSearchSpansNearSpansOrdered *create_OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchSpansSpanNearQuery *spanNearQuery, OrgApacheLuceneIndexIndexReader *reader) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansNearSpansOrdered, initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_, spanNearQuery, reader)
}

void OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_withBoolean_(OrgApacheLuceneSearchSpansNearSpansOrdered *self, OrgApacheLuceneSearchSpansSpanNearQuery *spanNearQuery, OrgApacheLuceneIndexIndexReader *reader, jboolean collectPayloads) {
  OrgApacheLuceneSearchSpansSpans_init(self);
  self->firstTime_ = true;
  self->more_ = false;
  self->inSameDoc_ = false;
  self->matchDoc_ = -1;
  self->matchStart_ = -1;
  self->matchEnd_ = -1;
  self->spanDocComparator_ = new_OrgApacheLuceneSearchSpansNearSpansOrdered_1_init();
  self->collectPayloads_ = true;
  if (((IOSObjectArray *) nil_chk([((OrgApacheLuceneSearchSpansSpanNearQuery *) nil_chk(spanNearQuery)) getClauses]))->size_ < 2) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Less than 2 clauses: ", spanNearQuery));
  }
  self->collectPayloads_ = collectPayloads;
  self->allowedSlop_ = [spanNearQuery getSlop];
  IOSObjectArray *clauses = [spanNearQuery getClauses];
  self->subSpans_ = [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(clauses))->size_ type:OrgApacheLuceneSearchSpansSpans_class_()];
  self->matchPayload_ = new_JavaUtilLinkedList_init();
  self->subSpansByDoc_ = [IOSObjectArray newArrayWithLength:clauses->size_ type:OrgApacheLuceneSearchSpansSpans_class_()];
  for (jint i = 0; i < clauses->size_; i++) {
    (void) IOSObjectArray_Set(self->subSpans_, i, [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(IOSObjectArray_Get(clauses, i))) getSpansWithOrgApacheLuceneIndexIndexReader:reader]);
    (void) IOSObjectArray_Set(self->subSpansByDoc_, i, IOSObjectArray_Get(self->subSpans_, i));
  }
  self->query_ = spanNearQuery;
}

OrgApacheLuceneSearchSpansNearSpansOrdered *new_OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_withBoolean_(OrgApacheLuceneSearchSpansSpanNearQuery *spanNearQuery, OrgApacheLuceneIndexIndexReader *reader, jboolean collectPayloads) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansNearSpansOrdered, initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_withBoolean_, spanNearQuery, reader, collectPayloads)
}

OrgApacheLuceneSearchSpansNearSpansOrdered *create_OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_withBoolean_(OrgApacheLuceneSearchSpansSpanNearQuery *spanNearQuery, OrgApacheLuceneIndexIndexReader *reader, jboolean collectPayloads) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansNearSpansOrdered, initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_withBoolean_, spanNearQuery, reader, collectPayloads)
}

jboolean OrgApacheLuceneSearchSpansNearSpansOrdered_advanceAfterOrdered(OrgApacheLuceneSearchSpansNearSpansOrdered *self) {
  while (self->more_ && (self->inSameDoc_ || OrgApacheLuceneSearchSpansNearSpansOrdered_toSameDoc(self))) {
    if (OrgApacheLuceneSearchSpansNearSpansOrdered_stretchToOrder(self) && OrgApacheLuceneSearchSpansNearSpansOrdered_shrinkToAfterShortestMatch(self)) {
      return true;
    }
  }
  return false;
}

jboolean OrgApacheLuceneSearchSpansNearSpansOrdered_toSameDoc(OrgApacheLuceneSearchSpansNearSpansOrdered *self) {
  OrgApacheLuceneUtilArrayUtil_mergeSortWithNSObjectArray_withJavaUtilComparator_(self->subSpansByDoc_, self->spanDocComparator_);
  jint firstIndex = 0;
  jint maxDoc = [((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(self->subSpansByDoc_, ((IOSObjectArray *) nil_chk(self->subSpansByDoc_))->size_ - 1))) doc];
  while ([((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(self->subSpansByDoc_, firstIndex))) doc] != maxDoc) {
    if (![((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(self->subSpansByDoc_, firstIndex))) skipToWithInt:maxDoc]) {
      self->more_ = false;
      self->inSameDoc_ = false;
      return false;
    }
    maxDoc = [((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(self->subSpansByDoc_, firstIndex))) doc];
    if (++firstIndex == self->subSpansByDoc_->size_) {
      firstIndex = 0;
    }
  }
  for (jint i = 0; i < self->subSpansByDoc_->size_; i++) {
    JreAssert([((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(self->subSpansByDoc_, i))) doc] == maxDoc, JreStrcat("$@$I$I", @" NearSpansOrdered.toSameDoc() spans ", IOSObjectArray_Get(self->subSpansByDoc_, 0), @"\n at doc ", [((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(self->subSpansByDoc_, i))) doc], @", but should be at ", maxDoc));
  }
  self->inSameDoc_ = true;
  return true;
}

jboolean OrgApacheLuceneSearchSpansNearSpansOrdered_docSpansOrderedWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_(OrgApacheLuceneSearchSpansSpans *spans1, OrgApacheLuceneSearchSpansSpans *spans2) {
  OrgApacheLuceneSearchSpansNearSpansOrdered_initialize();
  JreAssert([((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans1)) doc] == [((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans2)) doc], JreStrcat("$I$I", @"doc1 ", [spans1 doc], @" != doc2 ", [spans2 doc]));
  jint start1 = [spans1 start];
  jint start2 = [spans2 start];
  return (start1 == start2) ? ([spans1 end] < [spans2 end]) : (start1 < start2);
}

jboolean OrgApacheLuceneSearchSpansNearSpansOrdered_docSpansOrderedWithInt_withInt_withInt_withInt_(jint start1, jint end1, jint start2, jint end2) {
  OrgApacheLuceneSearchSpansNearSpansOrdered_initialize();
  return (start1 == start2) ? (end1 < end2) : (start1 < start2);
}

jboolean OrgApacheLuceneSearchSpansNearSpansOrdered_stretchToOrder(OrgApacheLuceneSearchSpansNearSpansOrdered *self) {
  self->matchDoc_ = [((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(nil_chk(self->subSpans_), 0))) doc];
  for (jint i = 1; self->inSameDoc_ && (i < self->subSpans_->size_); i++) {
    while (!OrgApacheLuceneSearchSpansNearSpansOrdered_docSpansOrderedWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_(IOSObjectArray_Get(self->subSpans_, i - 1), IOSObjectArray_Get(self->subSpans_, i))) {
      if (![((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(self->subSpans_, i))) next]) {
        self->inSameDoc_ = false;
        self->more_ = false;
        break;
      }
      else if (self->matchDoc_ != [((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(self->subSpans_, i))) doc]) {
        self->inSameDoc_ = false;
        break;
      }
    }
  }
  return self->inSameDoc_;
}

jboolean OrgApacheLuceneSearchSpansNearSpansOrdered_shrinkToAfterShortestMatch(OrgApacheLuceneSearchSpansNearSpansOrdered *self) {
  self->matchStart_ = [((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(self->subSpans_, ((IOSObjectArray *) nil_chk(self->subSpans_))->size_ - 1))) start];
  self->matchEnd_ = [((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(self->subSpans_, self->subSpans_->size_ - 1))) end];
  id<JavaUtilSet> possibleMatchPayloads = new_JavaUtilHashSet_init();
  if ([((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(self->subSpans_, self->subSpans_->size_ - 1))) isPayloadAvailable]) {
    [possibleMatchPayloads addAllWithJavaUtilCollection:[((OrgApacheLuceneSearchSpansSpans *) nil_chk(IOSObjectArray_Get(self->subSpans_, self->subSpans_->size_ - 1))) getPayload]];
  }
  id<JavaUtilCollection> possiblePayload = nil;
  jint matchSlop = 0;
  jint lastStart = self->matchStart_;
  jint lastEnd = self->matchEnd_;
  for (jint i = self->subSpans_->size_ - 2; i >= 0; i--) {
    OrgApacheLuceneSearchSpansSpans *prevSpans = IOSObjectArray_Get(self->subSpans_, i);
    if (self->collectPayloads_ && [((OrgApacheLuceneSearchSpansSpans *) nil_chk(prevSpans)) isPayloadAvailable]) {
      id<JavaUtilCollection> payload = [((OrgApacheLuceneSearchSpansSpans *) nil_chk(prevSpans)) getPayload];
      possiblePayload = new_JavaUtilArrayList_initWithInt_([((id<JavaUtilCollection>) nil_chk(payload)) size]);
      [possiblePayload addAllWithJavaUtilCollection:payload];
    }
    jint prevStart = [((OrgApacheLuceneSearchSpansSpans *) nil_chk(prevSpans)) start];
    jint prevEnd = [prevSpans end];
    while (true) {
      if (![prevSpans next]) {
        self->inSameDoc_ = false;
        self->more_ = false;
        break;
      }
      else if (self->matchDoc_ != [prevSpans doc]) {
        self->inSameDoc_ = false;
        break;
      }
      else {
        jint ppStart = [prevSpans start];
        jint ppEnd = [prevSpans end];
        if (!OrgApacheLuceneSearchSpansNearSpansOrdered_docSpansOrderedWithInt_withInt_withInt_withInt_(ppStart, ppEnd, lastStart, lastEnd)) {
          break;
        }
        else {
          prevStart = ppStart;
          prevEnd = ppEnd;
          if (self->collectPayloads_ && [prevSpans isPayloadAvailable]) {
            id<JavaUtilCollection> payload = [prevSpans getPayload];
            possiblePayload = new_JavaUtilArrayList_initWithInt_([((id<JavaUtilCollection>) nil_chk(payload)) size]);
            [possiblePayload addAllWithJavaUtilCollection:payload];
          }
        }
      }
    }
    if (self->collectPayloads_ && possiblePayload != nil) {
      [possibleMatchPayloads addAllWithJavaUtilCollection:possiblePayload];
    }
    JreAssert(prevStart <= self->matchStart_, @"org/apache/lucene/search/spans/NearSpansOrdered.java:315 condition failed: assert prevStart <= matchStart;");
    if (self->matchStart_ > prevEnd) {
      matchSlop += (self->matchStart_ - prevEnd);
    }
    self->matchStart_ = prevStart;
    lastStart = prevStart;
    lastEnd = prevEnd;
  }
  jboolean match = matchSlop <= self->allowedSlop_;
  if (self->collectPayloads_ && match && [possibleMatchPayloads size] > 0) {
    [((id<JavaUtilList>) nil_chk(self->matchPayload_)) addAllWithJavaUtilCollection:possibleMatchPayloads];
  }
  return match;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansNearSpansOrdered)

@implementation OrgApacheLuceneSearchSpansNearSpansOrdered_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSpansNearSpansOrdered_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)compareWithId:(OrgApacheLuceneSearchSpansSpans *)o1
               withId:(OrgApacheLuceneSearchSpansSpans *)o2 {
  return [((OrgApacheLuceneSearchSpansSpans *) nil_chk(o1)) doc] - [((OrgApacheLuceneSearchSpansSpans *) nil_chk(o2)) doc];
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
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(compareWithId:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "compare", "LOrgApacheLuceneSearchSpansSpans;LOrgApacheLuceneSearchSpansSpans;", "LOrgApacheLuceneSearchSpansNearSpansOrdered;", "Ljava/lang/Object;Ljava/util/Comparator<Lorg/apache/lucene/search/spans/Spans;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansNearSpansOrdered_1 = { "", "org.apache.lucene.search.spans", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 2, -1, -1, 3, -1 };
  return &_OrgApacheLuceneSearchSpansNearSpansOrdered_1;
}

@end

void OrgApacheLuceneSearchSpansNearSpansOrdered_1_init(OrgApacheLuceneSearchSpansNearSpansOrdered_1 *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchSpansNearSpansOrdered_1 *new_OrgApacheLuceneSearchSpansNearSpansOrdered_1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansNearSpansOrdered_1, init)
}

OrgApacheLuceneSearchSpansNearSpansOrdered_1 *create_OrgApacheLuceneSearchSpansNearSpansOrdered_1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansNearSpansOrdered_1, init)
}
