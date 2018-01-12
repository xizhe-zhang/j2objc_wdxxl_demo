//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/FilteredDocIdSet.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/FilteredDocIdSet.h"
#include "org/apache/lucene/search/FilteredDocIdSetIterator.h"

@interface OrgApacheLuceneSearchFilteredDocIdSet () {
 @public
  OrgApacheLuceneSearchDocIdSet *_innerSet_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFilteredDocIdSet, _innerSet_, OrgApacheLuceneSearchDocIdSet *)

@interface OrgApacheLuceneSearchFilteredDocIdSet_1 : OrgApacheLuceneSearchFilteredDocIdSetIterator {
 @public
  OrgApacheLuceneSearchFilteredDocIdSet *this$0_;
}

- (instancetype)initWithOrgApacheLuceneSearchFilteredDocIdSet:(OrgApacheLuceneSearchFilteredDocIdSet *)outer$
                    withOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)innerIter;

- (jboolean)matchWithInt:(jint)docid;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFilteredDocIdSet_1)

__attribute__((unused)) static void OrgApacheLuceneSearchFilteredDocIdSet_1_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchFilteredDocIdSet_1 *self, OrgApacheLuceneSearchFilteredDocIdSet *outer$, OrgApacheLuceneSearchDocIdSetIterator *innerIter);

__attribute__((unused)) static OrgApacheLuceneSearchFilteredDocIdSet_1 *new_OrgApacheLuceneSearchFilteredDocIdSet_1_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchFilteredDocIdSet *outer$, OrgApacheLuceneSearchDocIdSetIterator *innerIter) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchFilteredDocIdSet_1 *create_OrgApacheLuceneSearchFilteredDocIdSet_1_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchFilteredDocIdSet *outer$, OrgApacheLuceneSearchDocIdSetIterator *innerIter);

@implementation OrgApacheLuceneSearchFilteredDocIdSet

- (instancetype)initWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)innerSet {
  OrgApacheLuceneSearchFilteredDocIdSet_initWithOrgApacheLuceneSearchDocIdSet_(self, innerSet);
  return self;
}

- (jboolean)isCacheable {
  return [((OrgApacheLuceneSearchDocIdSet *) nil_chk(_innerSet_)) isCacheable];
}

- (jboolean)matchWithInt:(jint)docid {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneSearchDocIdSetIterator *)iterator {
  return new_OrgApacheLuceneSearchFilteredDocIdSet_1_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(self, [((OrgApacheLuceneSearchDocIdSet *) nil_chk(_innerSet_)) iterator]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x404, 1, 2, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDocIdSetIterator;", 0x1, -1, -1, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchDocIdSet:);
  methods[1].selector = @selector(isCacheable);
  methods[2].selector = @selector(matchWithInt:);
  methods[3].selector = @selector(iterator);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_innerSet_", "LOrgApacheLuceneSearchDocIdSet;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchDocIdSet;", "match", "I", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFilteredDocIdSet = { "FilteredDocIdSet", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x401, 4, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchFilteredDocIdSet;
}

@end

void OrgApacheLuceneSearchFilteredDocIdSet_initWithOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneSearchFilteredDocIdSet *self, OrgApacheLuceneSearchDocIdSet *innerSet) {
  OrgApacheLuceneSearchDocIdSet_init(self);
  self->_innerSet_ = innerSet;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFilteredDocIdSet)

@implementation OrgApacheLuceneSearchFilteredDocIdSet_1

- (instancetype)initWithOrgApacheLuceneSearchFilteredDocIdSet:(OrgApacheLuceneSearchFilteredDocIdSet *)outer$
                    withOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)innerIter {
  OrgApacheLuceneSearchFilteredDocIdSet_1_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(self, outer$, innerIter);
  return self;
}

- (jboolean)matchWithInt:(jint)docid {
  return [this$0_ matchWithInt:docid];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 1, 2, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchFilteredDocIdSet:withOrgApacheLuceneSearchDocIdSetIterator:);
  methods[1].selector = @selector(matchWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchFilteredDocIdSet;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchDocIdSetIterator;", "match", "I", "LJavaIoIOException;", "LOrgApacheLuceneSearchFilteredDocIdSet;", "iterator" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFilteredDocIdSet_1 = { "", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8018, 2, 1, 4, -1, 5, -1, -1 };
  return &_OrgApacheLuceneSearchFilteredDocIdSet_1;
}

@end

void OrgApacheLuceneSearchFilteredDocIdSet_1_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchFilteredDocIdSet_1 *self, OrgApacheLuceneSearchFilteredDocIdSet *outer$, OrgApacheLuceneSearchDocIdSetIterator *innerIter) {
  self->this$0_ = outer$;
  OrgApacheLuceneSearchFilteredDocIdSetIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(self, innerIter);
}

OrgApacheLuceneSearchFilteredDocIdSet_1 *new_OrgApacheLuceneSearchFilteredDocIdSet_1_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchFilteredDocIdSet *outer$, OrgApacheLuceneSearchDocIdSetIterator *innerIter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchFilteredDocIdSet_1, initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_, outer$, innerIter)
}

OrgApacheLuceneSearchFilteredDocIdSet_1 *create_OrgApacheLuceneSearchFilteredDocIdSet_1_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchFilteredDocIdSet *outer$, OrgApacheLuceneSearchDocIdSetIterator *innerIter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchFilteredDocIdSet_1, initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_, outer$, innerIter)
}
