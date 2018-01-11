//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/spans/SpanPositionCheckQuery.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/spans/SpanPositionCheckQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/apache/lucene/search/spans/Spans.h"

__attribute__((unused)) static void OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_initWithNSString_withInt_(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *new_OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@interface OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan () {
 @public
  OrgApacheLuceneSearchSpansSpanPositionCheckQuery *this$0_;
  OrgApacheLuceneSearchSpansSpans *spans_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan, spans_, OrgApacheLuceneSearchSpansSpans *)

@implementation OrgApacheLuceneSearchSpansSpanPositionCheckQuery

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)match {
  OrgApacheLuceneSearchSpansSpanPositionCheckQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_(self, match);
  return self;
}

- (OrgApacheLuceneSearchSpansSpanQuery *)getMatch {
  return match_;
}

- (NSString *)getField {
  return [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(match_)) getField];
}

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms {
  [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(match_)) extractTermsWithJavaUtilSet:terms];
}

- (OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *)acceptPositionWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneSearchSpansSpans *)getSpansWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  return new_OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan_initWithOrgApacheLuceneSearchSpansSpanPositionCheckQuery_withOrgApacheLuceneIndexIndexReader_(self, reader);
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  OrgApacheLuceneSearchSpansSpanPositionCheckQuery *clone = nil;
  OrgApacheLuceneSearchSpansSpanQuery *rewritten = (OrgApacheLuceneSearchSpansSpanQuery *) cast_chk([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(match_)) rewriteWithOrgApacheLuceneIndexIndexReader:reader], [OrgApacheLuceneSearchSpansSpanQuery class]);
  if (rewritten != match_) {
    clone = (OrgApacheLuceneSearchSpansSpanPositionCheckQuery *) cast_chk([self java_clone], [OrgApacheLuceneSearchSpansSpanPositionCheckQuery class]);
    ((OrgApacheLuceneSearchSpansSpanPositionCheckQuery *) nil_chk(clone))->match_ = rewritten;
  }
  if (clone != nil) {
    return clone;
  }
  else {
    return self;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpanQuery;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, 3, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus;", 0x404, 4, 5, 6, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpans;", 0x1, 7, 8, 6, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 9, 8, 6, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSpansSpanQuery:);
  methods[1].selector = @selector(getMatch);
  methods[2].selector = @selector(getField);
  methods[3].selector = @selector(extractTermsWithJavaUtilSet:);
  methods[4].selector = @selector(acceptPositionWithOrgApacheLuceneSearchSpansSpans:);
  methods[5].selector = @selector(getSpansWithOrgApacheLuceneIndexIndexReader:);
  methods[6].selector = @selector(rewriteWithOrgApacheLuceneIndexIndexReader:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "match_", "LOrgApacheLuceneSearchSpansSpanQuery;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSpansSpanQuery;", "extractTerms", "LJavaUtilSet;", "(Ljava/util/Set<Lorg/apache/lucene/index/Term;>;)V", "acceptPosition", "LOrgApacheLuceneSearchSpansSpans;", "LJavaIoIOException;", "getSpans", "LOrgApacheLuceneIndexIndexReader;", "rewrite", "LOrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus;LOrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanPositionCheckQuery = { "SpanPositionCheckQuery", "org.apache.lucene.search.spans", ptrTable, methods, fields, 7, 0x401, 7, 1, -1, 10, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSpansSpanPositionCheckQuery;
}

@end

void OrgApacheLuceneSearchSpansSpanPositionCheckQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_(OrgApacheLuceneSearchSpansSpanPositionCheckQuery *self, OrgApacheLuceneSearchSpansSpanQuery *match) {
  OrgApacheLuceneSearchSpansSpanQuery_init(self);
  self->match_ = match;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanPositionCheckQuery)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus)

OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_values_[3];

@implementation OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus

+ (IOSObjectArray *)values {
  return OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_values();
}

+ (OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_valueOfWithNSString_(name);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LOrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "YES", "LOrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "NO", "LOrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "NO_AND_ADVANCE", "LOrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus, YES), &JreEnum(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus, NO), &JreEnum(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus, NO_AND_ADVANCE), "LOrgApacheLuceneSearchSpansSpanPositionCheckQuery;", "Ljava/lang/Enum<Lorg/apache/lucene/search/spans/SpanPositionCheckQuery$AcceptStatus;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus = { "AcceptStatus", "org.apache.lucene.search.spans", ptrTable, methods, fields, 7, 0x401c, 2, 3, 5, -1, -1, 6, -1 };
  return &_OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus class]) {
    JreEnum(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus, YES) = new_OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_initWithNSString_withInt_(@"", 0);
    JreEnum(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus, NO) = new_OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_initWithNSString_withInt_(@"", 1);
    JreEnum(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus, NO_AND_ADVANCE) = new_OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_initWithNSString_withInt_(@"", 2);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus)
  }
}

@end

void OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_initWithNSString_withInt_(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *new_OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_values() {
  OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_values_ count:3 type:OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_class_()];
}

OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_initialize();
  for (int i = 0; i < 3; i++) {
    OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *e = OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_fromOrdinal(NSUInteger ordinal) {
  OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_initialize();
  if (ordinal >= 3) {
    return nil;
  }
  return OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus)

@implementation OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanPositionCheckQuery:(OrgApacheLuceneSearchSpansSpanPositionCheckQuery *)outer$
                                     withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan_initWithOrgApacheLuceneSearchSpansSpanPositionCheckQuery_withOrgApacheLuceneIndexIndexReader_(self, outer$, reader);
  return self;
}

- (jboolean)next {
  if (![((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) next]) return false;
  return [self doNext];
}

- (jboolean)skipToWithInt:(jint)target {
  if (![((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) skipToWithInt:target]) return false;
  return [self doNext];
}

- (jboolean)doNext {
  for (; ; ) {
    switch ([[this$0_ acceptPositionWithOrgApacheLuceneSearchSpansSpans:self] ordinal]) {
      case OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_Enum_YES:
      return true;
      case OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_Enum_NO:
      if (![((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) next]) return false;
      break;
      case OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_Enum_NO_AND_ADVANCE:
      if (![((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) skipToWithInt:[spans_ doc] + 1]) return false;
      break;
    }
  }
}

- (jint)doc {
  return [((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) doc];
}

- (jint)start {
  return [((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) start];
}

- (jint)end {
  return [((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) end];
}

- (id<JavaUtilCollection>)getPayload {
  JavaUtilArrayList *result = nil;
  if ([((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) isPayloadAvailable]) {
    result = new_JavaUtilArrayList_initWithJavaUtilCollection_([((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) getPayload]);
  }
  return result;
}

- (jboolean)isPayloadAvailable {
  return [((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) isPayloadAvailable];
}

- (NSString *)description {
  return JreStrcat("$$C", @"spans(", [this$0_ description], ')');
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "Z", 0x4, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x1, -1, -1, 1, 4, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSpansSpanPositionCheckQuery:withOrgApacheLuceneIndexIndexReader:);
  methods[1].selector = @selector(next);
  methods[2].selector = @selector(skipToWithInt:);
  methods[3].selector = @selector(doNext);
  methods[4].selector = @selector(doc);
  methods[5].selector = @selector(start);
  methods[6].selector = @selector(end);
  methods[7].selector = @selector(getPayload);
  methods[8].selector = @selector(isPayloadAvailable);
  methods[9].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchSpansSpanPositionCheckQuery;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "spans_", "LOrgApacheLuceneSearchSpansSpans;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexIndexReader;", "LJavaIoIOException;", "skipTo", "I", "()Ljava/util/Collection<[B>;", "toString", "LOrgApacheLuceneSearchSpansSpanPositionCheckQuery;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan = { "PositionCheckSpan", "org.apache.lucene.search.spans", ptrTable, methods, fields, 7, 0x4, 10, 2, 6, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan;
}

@end

void OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan_initWithOrgApacheLuceneSearchSpansSpanPositionCheckQuery_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan *self, OrgApacheLuceneSearchSpansSpanPositionCheckQuery *outer$, OrgApacheLuceneIndexIndexReader *reader) {
  self->this$0_ = outer$;
  OrgApacheLuceneSearchSpansSpans_init(self);
  self->spans_ = [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(outer$->match_)) getSpansWithOrgApacheLuceneIndexIndexReader:reader];
}

OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan *new_OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan_initWithOrgApacheLuceneSearchSpansSpanPositionCheckQuery_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchSpansSpanPositionCheckQuery *outer$, OrgApacheLuceneIndexIndexReader *reader) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan, initWithOrgApacheLuceneSearchSpansSpanPositionCheckQuery_withOrgApacheLuceneIndexIndexReader_, outer$, reader)
}

OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan *create_OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan_initWithOrgApacheLuceneSearchSpansSpanPositionCheckQuery_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchSpansSpanPositionCheckQuery *outer$, OrgApacheLuceneIndexIndexReader *reader) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan, initWithOrgApacheLuceneSearchSpansSpanPositionCheckQuery_withOrgApacheLuceneIndexIndexReader_, outer$, reader)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan)
