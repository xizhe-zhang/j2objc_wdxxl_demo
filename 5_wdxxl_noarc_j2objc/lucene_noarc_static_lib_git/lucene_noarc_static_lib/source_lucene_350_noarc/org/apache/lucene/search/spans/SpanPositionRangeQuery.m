//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/spans/SpanPositionRangeQuery.java
//

#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/search/spans/SpanPositionCheckQuery.h"
#include "org/apache/lucene/search/spans/SpanPositionRangeQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/apache/lucene/search/spans/Spans.h"
#include "org/apache/lucene/util/ToStringUtils.h"

@implementation OrgApacheLuceneSearchSpansSpanPositionRangeQuery

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)match
                                                    withInt:(jint)start
                                                    withInt:(jint)end {
  OrgApacheLuceneSearchSpansSpanPositionRangeQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_(self, match, start, end);
  return self;
}

- (OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *)acceptPositionWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans {
  JreAssert([((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans)) start] != [spans end], @"org/apache/lucene/search/spans/SpanPositionRangeQuery.java:43 condition failed: assert spans.start() != spans.end();");
  if ([spans start] >= end_) return JreLoadEnum(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus, NO_AND_ADVANCE);
  else if ([spans start] >= start_ && [spans end] <= end_) return JreLoadEnum(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus, YES);
  else return JreLoadEnum(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus, NO);
}

- (jint)getStart {
  return start_;
}

- (jint)getEnd {
  return end_;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  [buffer appendWithNSString:@"spanPosRange("];
  [buffer appendWithNSString:[((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(match_)) toStringWithNSString:field]];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@", "])) appendWithInt:start_])) appendWithNSString:@", "];
  [buffer appendWithInt:end_];
  [buffer appendWithNSString:@")"];
  [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [buffer description];
}

- (id)java_clone {
  OrgApacheLuceneSearchSpansSpanPositionRangeQuery *result = create_OrgApacheLuceneSearchSpansSpanPositionRangeQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_((OrgApacheLuceneSearchSpansSpanQuery *) cast_chk([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(match_)) java_clone], [OrgApacheLuceneSearchSpansSpanQuery class]), start_, end_);
  [result setBoostWithFloat:[self getBoost]];
  return result;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (!([o isKindOfClass:[OrgApacheLuceneSearchSpansSpanPositionRangeQuery class]])) return false;
  OrgApacheLuceneSearchSpansSpanPositionRangeQuery *other = (OrgApacheLuceneSearchSpansSpanPositionRangeQuery *) cast_chk(o, [OrgApacheLuceneSearchSpansSpanPositionRangeQuery class]);
  return self->end_ == ((OrgApacheLuceneSearchSpansSpanPositionRangeQuery *) nil_chk(other))->end_ && self->start_ == other->start_ && [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(self->match_)) isEqual:other->match_] && [self getBoost] == [other getBoost];
}

- (NSUInteger)hash {
  jint h = ((jint) [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(match_)) hash]);
  h ^= (JreLShift32(h, 8)) | (JreURShift32(h, 25));
  h ^= JavaLangFloat_floatToRawIntBitsWithFloat_([self getBoost]) ^ end_ ^ start_;
  return h;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus;", 0x4, 1, 2, 3, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 6, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 9, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSpansSpanQuery:withInt:withInt:);
  methods[1].selector = @selector(acceptPositionWithOrgApacheLuceneSearchSpansSpans:);
  methods[2].selector = @selector(getStart);
  methods[3].selector = @selector(getEnd);
  methods[4].selector = @selector(toStringWithNSString:);
  methods[5].selector = @selector(java_clone);
  methods[6].selector = @selector(isEqual:);
  methods[7].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "start_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "end_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSpansSpanQuery;II", "acceptPosition", "LOrgApacheLuceneSearchSpansSpans;", "LJavaIoIOException;", "toString", "LNSString;", "clone", "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanPositionRangeQuery = { "SpanPositionRangeQuery", "org.apache.lucene.search.spans", ptrTable, methods, fields, 7, 0x1, 8, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSpansSpanPositionRangeQuery;
}

@end

void OrgApacheLuceneSearchSpansSpanPositionRangeQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_(OrgApacheLuceneSearchSpansSpanPositionRangeQuery *self, OrgApacheLuceneSearchSpansSpanQuery *match, jint start, jint end) {
  OrgApacheLuceneSearchSpansSpanPositionCheckQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_(self, match);
  self->start_ = 0;
  self->start_ = start;
  self->end_ = end;
}

OrgApacheLuceneSearchSpansSpanPositionRangeQuery *new_OrgApacheLuceneSearchSpansSpanPositionRangeQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_(OrgApacheLuceneSearchSpansSpanQuery *match, jint start, jint end) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanPositionRangeQuery, initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_, match, start, end)
}

OrgApacheLuceneSearchSpansSpanPositionRangeQuery *create_OrgApacheLuceneSearchSpansSpanPositionRangeQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_(OrgApacheLuceneSearchSpansSpanQuery *match, jint start, jint end) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansSpanPositionRangeQuery, initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_, match, start, end)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanPositionRangeQuery)
