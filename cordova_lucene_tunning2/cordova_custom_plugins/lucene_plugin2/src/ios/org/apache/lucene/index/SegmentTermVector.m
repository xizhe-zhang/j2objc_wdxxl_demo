//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/SegmentTermVector.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/index/SegmentTermVector.h"

@interface OrgApacheLuceneIndexSegmentTermVector () {
 @public
  NSString *field_;
  IOSObjectArray *terms_;
  IOSIntArray *termFreqs_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentTermVector, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentTermVector, terms_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentTermVector, termFreqs_, IOSIntArray *)

@implementation OrgApacheLuceneIndexSegmentTermVector

- (instancetype)initWithNSString:(NSString *)field
               withNSStringArray:(IOSObjectArray *)terms
                    withIntArray:(IOSIntArray *)termFreqs {
  OrgApacheLuceneIndexSegmentTermVector_initWithNSString_withNSStringArray_withIntArray_(self, field, terms, termFreqs);
  return self;
}

- (NSString *)getField {
  return field_;
}

- (NSString *)description {
  JavaLangStringBuilder *sb = new_JavaLangStringBuilder_init();
  (void) [sb appendWithChar:'{'];
  (void) [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:field_])) appendWithNSString:@": "];
  if (terms_ != nil) {
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(terms_))->size_; i++) {
      if (i > 0) (void) [sb appendWithNSString:@", "];
      (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:IOSObjectArray_Get(nil_chk(terms_), i)])) appendWithChar:'/'])) appendWithInt:IOSIntArray_Get(nil_chk(termFreqs_), i)];
    }
  }
  (void) [sb appendWithChar:'}'];
  return [sb description];
}

- (jint)size {
  return terms_ == nil ? 0 : terms_->size_;
}

- (IOSObjectArray *)getTerms {
  return terms_;
}

- (IOSIntArray *)getTermFrequencies {
  return termFreqs_;
}

- (jint)indexOfWithNSString:(NSString *)termText {
  if (terms_ == nil) return -1;
  jint res = JavaUtilArrays_binarySearchWithNSObjectArray_withId_(terms_, termText);
  return res >= 0 ? res : -1;
}

- (IOSIntArray *)indexesOfWithNSStringArray:(IOSObjectArray *)termNumbers
                                    withInt:(jint)start
                                    withInt:(jint)len {
  IOSIntArray *res = [IOSIntArray newArrayWithLength:len];
  for (jint i = 0; i < len; i++) {
    *IOSIntArray_GetRef(res, i) = [self indexOfWithNSString:IOSObjectArray_Get(nil_chk(termNumbers), start + i)];
  }
  return res;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "[I", 0x1, 4, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:withNSStringArray:withIntArray:);
  methods[1].selector = @selector(getField);
  methods[2].selector = @selector(description);
  methods[3].selector = @selector(size);
  methods[4].selector = @selector(getTerms);
  methods[5].selector = @selector(getTermFrequencies);
  methods[6].selector = @selector(indexOfWithNSString:);
  methods[7].selector = @selector(indexesOfWithNSStringArray:withInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "field_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "terms_", "[LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "termFreqs_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;[LNSString;[I", "toString", "indexOf", "LNSString;", "indexesOf", "[LNSString;II" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSegmentTermVector = { "SegmentTermVector", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x0, 8, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexSegmentTermVector;
}

@end

void OrgApacheLuceneIndexSegmentTermVector_initWithNSString_withNSStringArray_withIntArray_(OrgApacheLuceneIndexSegmentTermVector *self, NSString *field, IOSObjectArray *terms, IOSIntArray *termFreqs) {
  NSObject_init(self);
  self->field_ = field;
  self->terms_ = terms;
  self->termFreqs_ = termFreqs;
}

OrgApacheLuceneIndexSegmentTermVector *new_OrgApacheLuceneIndexSegmentTermVector_initWithNSString_withNSStringArray_withIntArray_(NSString *field, IOSObjectArray *terms, IOSIntArray *termFreqs) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexSegmentTermVector, initWithNSString_withNSStringArray_withIntArray_, field, terms, termFreqs)
}

OrgApacheLuceneIndexSegmentTermVector *create_OrgApacheLuceneIndexSegmentTermVector_initWithNSString_withNSStringArray_withIntArray_(NSString *field, IOSObjectArray *terms, IOSIntArray *termFreqs) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexSegmentTermVector, initWithNSString_withNSStringArray_withIntArray_, field, terms, termFreqs)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSegmentTermVector)