//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/SingleTermEnum.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/TermEnum.h"
#include "org/apache/lucene/search/FilteredTermEnum.h"
#include "org/apache/lucene/search/SingleTermEnum.h"

@interface OrgApacheLuceneSearchSingleTermEnum () {
 @public
  OrgApacheLuceneIndexTerm *singleTerm_;
  jboolean endEnum_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSingleTermEnum, singleTerm_, OrgApacheLuceneIndexTerm *)

@implementation OrgApacheLuceneSearchSingleTermEnum

- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)singleTerm {
  OrgApacheLuceneSearchSingleTermEnum_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexTerm_(self, reader, singleTerm);
  return self;
}

- (jfloat)difference {
  return 1.0f;
}

- (jboolean)endEnum {
  return endEnum_;
}

- (jboolean)termCompareWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  if ([((OrgApacheLuceneIndexTerm *) nil_chk(term)) isEqual:singleTerm_]) {
    return true;
  }
  else {
    endEnum_ = true;
    return false;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneIndexTerm:);
  methods[1].selector = @selector(difference);
  methods[2].selector = @selector(endEnum);
  methods[3].selector = @selector(termCompareWithOrgApacheLuceneIndexTerm:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "singleTerm_", "LOrgApacheLuceneIndexTerm;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "endEnum_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexIndexReader;LOrgApacheLuceneIndexTerm;", "LJavaIoIOException;", "termCompare", "LOrgApacheLuceneIndexTerm;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSingleTermEnum = { "SingleTermEnum", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 4, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSingleTermEnum;
}

@end

void OrgApacheLuceneSearchSingleTermEnum_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchSingleTermEnum *self, OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneIndexTerm *singleTerm) {
  OrgApacheLuceneSearchFilteredTermEnum_init(self);
  self->endEnum_ = false;
  self->singleTerm_ = singleTerm;
  [self setEnumWithOrgApacheLuceneIndexTermEnum:[((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) termsWithOrgApacheLuceneIndexTerm:singleTerm]];
}

OrgApacheLuceneSearchSingleTermEnum *new_OrgApacheLuceneSearchSingleTermEnum_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneIndexTerm *singleTerm) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSingleTermEnum, initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexTerm_, reader, singleTerm)
}

OrgApacheLuceneSearchSingleTermEnum *create_OrgApacheLuceneSearchSingleTermEnum_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneIndexTerm *singleTerm) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSingleTermEnum, initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexTerm_, reader, singleTerm)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSingleTermEnum)
