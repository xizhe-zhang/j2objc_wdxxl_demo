//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/spans/SpanNearQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/spans/NearSpansOrdered.h"
#include "org/apache/lucene/search/spans/NearSpansUnordered.h"
#include "org/apache/lucene/search/spans/SpanNearQuery.h"
#include "org/apache/lucene/search/spans/SpanOrQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/apache/lucene/search/spans/Spans.h"
#include "org/apache/lucene/util/ToStringUtils.h"

@interface OrgApacheLuceneSearchSpansSpanNearQuery () {
 @public
  jboolean collectPayloads_;
}

@end

@implementation OrgApacheLuceneSearchSpansSpanNearQuery

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQueryArray:(IOSObjectArray *)clauses
                                                         withInt:(jint)slop
                                                     withBoolean:(jboolean)inOrder {
  OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(self, clauses, slop, inOrder);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQueryArray:(IOSObjectArray *)clauses
                                                         withInt:(jint)slop
                                                     withBoolean:(jboolean)inOrder
                                                     withBoolean:(jboolean)collectPayloads {
  OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withBoolean_(self, clauses, slop, inOrder, collectPayloads);
  return self;
}

- (IOSObjectArray *)getClauses {
  return [((id<JavaUtilList>) nil_chk(clauses_)) toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[clauses_ size] type:OrgApacheLuceneSearchSpansSpanQuery_class_()]];
}

- (jint)getSlop {
  return slop_;
}

- (jboolean)isInOrder {
  return inOrder_;
}

- (NSString *)getField {
  return field_;
}

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms {
  for (OrgApacheLuceneSearchSpansSpanQuery * __strong clause in nil_chk(clauses_)) {
    [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(clause)) extractTermsWithJavaUtilSet:terms];
  }
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = new_JavaLangStringBuilder_init();
  (void) [buffer appendWithNSString:@"spanNear(["];
  id<JavaUtilIterator> i = [((id<JavaUtilList>) nil_chk(clauses_)) iterator];
  while ([((id<JavaUtilIterator>) nil_chk(i)) hasNext]) {
    OrgApacheLuceneSearchSpansSpanQuery *clause = [i next];
    (void) [buffer appendWithNSString:[((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(clause)) toStringWithNSString:field]];
    if ([i hasNext]) {
      (void) [buffer appendWithNSString:@", "];
    }
  }
  (void) [buffer appendWithNSString:@"], "];
  (void) [buffer appendWithInt:slop_];
  (void) [buffer appendWithNSString:@", "];
  (void) [buffer appendWithBoolean:inOrder_];
  (void) [buffer appendWithNSString:@")"];
  (void) [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [buffer description];
}

- (OrgApacheLuceneSearchSpansSpans *)getSpansWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  if ([((id<JavaUtilList>) nil_chk(clauses_)) size] == 0) return [new_OrgApacheLuceneSearchSpansSpanOrQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_([self getClauses]) getSpansWithOrgApacheLuceneIndexIndexReader:reader];
  if ([((id<JavaUtilList>) nil_chk(clauses_)) size] == 1) return [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk([((id<JavaUtilList>) nil_chk(clauses_)) getWithInt:0])) getSpansWithOrgApacheLuceneIndexIndexReader:reader];
  return inOrder_ ? new_OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_withBoolean_(self, reader, collectPayloads_) : (id) new_OrgApacheLuceneSearchSpansNearSpansUnordered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withOrgApacheLuceneIndexIndexReader_(self, reader);
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  OrgApacheLuceneSearchSpansSpanNearQuery *clone = nil;
  for (jint i = 0; i < [((id<JavaUtilList>) nil_chk(clauses_)) size]; i++) {
    OrgApacheLuceneSearchSpansSpanQuery *c = [((id<JavaUtilList>) nil_chk(clauses_)) getWithInt:i];
    OrgApacheLuceneSearchSpansSpanQuery *query = (OrgApacheLuceneSearchSpansSpanQuery *) cast_chk([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(c)) rewriteWithOrgApacheLuceneIndexIndexReader:reader], [OrgApacheLuceneSearchSpansSpanQuery class]);
    if (query != c) {
      if (clone == nil) clone = (OrgApacheLuceneSearchSpansSpanNearQuery *) cast_chk([self java_clone], [OrgApacheLuceneSearchSpansSpanNearQuery class]);
      (void) [((id<JavaUtilList>) nil_chk(((OrgApacheLuceneSearchSpansSpanNearQuery *) nil_chk(clone))->clauses_)) setWithInt:i withId:query];
    }
  }
  if (clone != nil) {
    return clone;
  }
  else {
    return self;
  }
}

- (id)java_clone {
  jint sz = [((id<JavaUtilList>) nil_chk(clauses_)) size];
  IOSObjectArray *newClauses = [IOSObjectArray newArrayWithLength:sz type:OrgApacheLuceneSearchSpansSpanQuery_class_()];
  for (jint i = 0; i < sz; i++) {
    (void) IOSObjectArray_Set(newClauses, i, (OrgApacheLuceneSearchSpansSpanQuery *) cast_chk([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk([((id<JavaUtilList>) nil_chk(clauses_)) getWithInt:i])) java_clone], [OrgApacheLuceneSearchSpansSpanQuery class]));
  }
  OrgApacheLuceneSearchSpansSpanNearQuery *spanNearQuery = new_OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(newClauses, slop_, inOrder_);
  [spanNearQuery setBoostWithFloat:[self getBoost]];
  return spanNearQuery;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (!([o isKindOfClass:[OrgApacheLuceneSearchSpansSpanNearQuery class]])) return false;
  OrgApacheLuceneSearchSpansSpanNearQuery *spanNearQuery = (OrgApacheLuceneSearchSpansSpanNearQuery *) cast_chk(o, [OrgApacheLuceneSearchSpansSpanNearQuery class]);
  if (inOrder_ != ((OrgApacheLuceneSearchSpansSpanNearQuery *) nil_chk(spanNearQuery))->inOrder_) return false;
  if (slop_ != spanNearQuery->slop_) return false;
  if (![((id<JavaUtilList>) nil_chk(clauses_)) isEqual:spanNearQuery->clauses_]) return false;
  return [self getBoost] == [spanNearQuery getBoost];
}

- (NSUInteger)hash {
  jint result;
  result = ((jint) [((id<JavaUtilList>) nil_chk(clauses_)) hash]);
  result ^= (JreLShift32(result, 14)) | (JreURShift32(result, 19));
  result += JavaLangFloat_floatToRawIntBitsWithFloat_([self getBoost]);
  result += slop_;
  result ^= (inOrder_ ? (jint) 0x99AFD3BD : 0);
  return result;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "[LOrgApacheLuceneSearchSpansSpanQuery;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpans;", 0x1, 7, 8, 9, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 10, 8, 9, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 11, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 14, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSpansSpanQueryArray:withInt:withBoolean:);
  methods[1].selector = @selector(initWithOrgApacheLuceneSearchSpansSpanQueryArray:withInt:withBoolean:withBoolean:);
  methods[2].selector = @selector(getClauses);
  methods[3].selector = @selector(getSlop);
  methods[4].selector = @selector(isInOrder);
  methods[5].selector = @selector(getField);
  methods[6].selector = @selector(extractTermsWithJavaUtilSet:);
  methods[7].selector = @selector(toStringWithNSString:);
  methods[8].selector = @selector(getSpansWithOrgApacheLuceneIndexIndexReader:);
  methods[9].selector = @selector(rewriteWithOrgApacheLuceneIndexIndexReader:);
  methods[10].selector = @selector(java_clone);
  methods[11].selector = @selector(isEqual:);
  methods[12].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "clauses_", "LJavaUtilList;", .constantValue.asLong = 0, 0x4, -1, -1, 15, -1 },
    { "slop_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "inOrder_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "field_", "LNSString;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "collectPayloads_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[LOrgApacheLuceneSearchSpansSpanQuery;IZ", "[LOrgApacheLuceneSearchSpansSpanQuery;IZZ", "extractTerms", "LJavaUtilSet;", "(Ljava/util/Set<Lorg/apache/lucene/index/Term;>;)V", "toString", "LNSString;", "getSpans", "LOrgApacheLuceneIndexIndexReader;", "LJavaIoIOException;", "rewrite", "clone", "equals", "LNSObject;", "hashCode", "Ljava/util/List<Lorg/apache/lucene/search/spans/SpanQuery;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanNearQuery = { "SpanNearQuery", "org.apache.lucene.search.spans", ptrTable, methods, fields, 7, 0x1, 13, 5, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSpansSpanNearQuery;
}

@end

void OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(OrgApacheLuceneSearchSpansSpanNearQuery *self, IOSObjectArray *clauses, jint slop, jboolean inOrder) {
  OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withBoolean_(self, clauses, slop, inOrder, true);
}

OrgApacheLuceneSearchSpansSpanNearQuery *new_OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(IOSObjectArray *clauses, jint slop, jboolean inOrder) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanNearQuery, initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_, clauses, slop, inOrder)
}

OrgApacheLuceneSearchSpansSpanNearQuery *create_OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(IOSObjectArray *clauses, jint slop, jboolean inOrder) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansSpanNearQuery, initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_, clauses, slop, inOrder)
}

void OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withBoolean_(OrgApacheLuceneSearchSpansSpanNearQuery *self, IOSObjectArray *clauses, jint slop, jboolean inOrder, jboolean collectPayloads) {
  OrgApacheLuceneSearchSpansSpanQuery_init(self);
  self->clauses_ = new_JavaUtilArrayList_initWithInt_(((IOSObjectArray *) nil_chk(clauses))->size_);
  for (jint i = 0; i < clauses->size_; i++) {
    OrgApacheLuceneSearchSpansSpanQuery *clause = IOSObjectArray_Get(clauses, i);
    if (i == 0) {
      self->field_ = [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(clause)) getField];
    }
    else if (![((NSString *) nil_chk([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(clause)) getField])) isEqual:self->field_]) {
      @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Clauses must have same field.");
    }
    [((id<JavaUtilList>) nil_chk(self->clauses_)) addWithId:clause];
  }
  self->collectPayloads_ = collectPayloads;
  self->slop_ = slop;
  self->inOrder_ = inOrder;
}

OrgApacheLuceneSearchSpansSpanNearQuery *new_OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withBoolean_(IOSObjectArray *clauses, jint slop, jboolean inOrder, jboolean collectPayloads) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanNearQuery, initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withBoolean_, clauses, slop, inOrder, collectPayloads)
}

OrgApacheLuceneSearchSpansSpanNearQuery *create_OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withBoolean_(IOSObjectArray *clauses, jint slop, jboolean inOrder, jboolean collectPayloads) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansSpanNearQuery, initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withBoolean_, clauses, slop, inOrder, collectPayloads)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanNearQuery)
