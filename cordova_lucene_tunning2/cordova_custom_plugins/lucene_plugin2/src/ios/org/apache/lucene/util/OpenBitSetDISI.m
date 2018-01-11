//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/util/OpenBitSetDISI.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/util/OpenBitSet.h"
#include "org/apache/lucene/util/OpenBitSetDISI.h"

@implementation OrgApacheLuceneUtilOpenBitSetDISI

- (instancetype)initWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)disi
                                                      withInt:(jint)maxSize {
  OrgApacheLuceneUtilOpenBitSetDISI_initWithOrgApacheLuceneSearchDocIdSetIterator_withInt_(self, disi, maxSize);
  return self;
}

- (instancetype)initWithInt:(jint)maxSize {
  OrgApacheLuceneUtilOpenBitSetDISI_initWithInt_(self, maxSize);
  return self;
}

- (void)inPlaceOrWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)disi {
  jint doc;
  jlong size = [self size];
  while ((doc = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(disi)) nextDoc]) < size) {
    [self fastSetWithInt:doc];
  }
}

- (void)inPlaceAndWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)disi {
  jint bitSetDoc = [self nextSetBitWithInt:0];
  jint disiDoc;
  while (bitSetDoc != -1 && (disiDoc = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(disi)) advanceWithInt:bitSetDoc]) != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
    [self clearWithInt:bitSetDoc withInt:disiDoc];
    bitSetDoc = [self nextSetBitWithInt:disiDoc + 1];
  }
  if (bitSetDoc != -1) {
    [self clearWithLong:bitSetDoc withLong:[self size]];
  }
}

- (void)inPlaceNotWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)disi {
  jint doc;
  jlong size = [self size];
  while ((doc = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(disi)) nextDoc]) < size) {
    [self fastClearWithInt:doc];
  }
}

- (void)inPlaceXorWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)disi {
  jint doc;
  jlong size = [self size];
  while ((doc = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(disi)) nextDoc]) < size) {
    [self fastFlipWithInt:doc];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 4, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 4, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 4, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchDocIdSetIterator:withInt:);
  methods[1].selector = @selector(initWithInt:);
  methods[2].selector = @selector(inPlaceOrWithOrgApacheLuceneSearchDocIdSetIterator:);
  methods[3].selector = @selector(inPlaceAndWithOrgApacheLuceneSearchDocIdSetIterator:);
  methods[4].selector = @selector(inPlaceNotWithOrgApacheLuceneSearchDocIdSetIterator:);
  methods[5].selector = @selector(inPlaceXorWithOrgApacheLuceneSearchDocIdSetIterator:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchDocIdSetIterator;I", "LJavaIoIOException;", "I", "inPlaceOr", "LOrgApacheLuceneSearchDocIdSetIterator;", "inPlaceAnd", "inPlaceNot", "inPlaceXor" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilOpenBitSetDISI = { "OpenBitSetDISI", "org.apache.lucene.util", ptrTable, methods, NULL, 7, 0x1, 6, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilOpenBitSetDISI;
}

@end

void OrgApacheLuceneUtilOpenBitSetDISI_initWithOrgApacheLuceneSearchDocIdSetIterator_withInt_(OrgApacheLuceneUtilOpenBitSetDISI *self, OrgApacheLuceneSearchDocIdSetIterator *disi, jint maxSize) {
  OrgApacheLuceneUtilOpenBitSet_initWithLong_(self, maxSize);
  [self inPlaceOrWithOrgApacheLuceneSearchDocIdSetIterator:disi];
}

OrgApacheLuceneUtilOpenBitSetDISI *new_OrgApacheLuceneUtilOpenBitSetDISI_initWithOrgApacheLuceneSearchDocIdSetIterator_withInt_(OrgApacheLuceneSearchDocIdSetIterator *disi, jint maxSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilOpenBitSetDISI, initWithOrgApacheLuceneSearchDocIdSetIterator_withInt_, disi, maxSize)
}

OrgApacheLuceneUtilOpenBitSetDISI *create_OrgApacheLuceneUtilOpenBitSetDISI_initWithOrgApacheLuceneSearchDocIdSetIterator_withInt_(OrgApacheLuceneSearchDocIdSetIterator *disi, jint maxSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilOpenBitSetDISI, initWithOrgApacheLuceneSearchDocIdSetIterator_withInt_, disi, maxSize)
}

void OrgApacheLuceneUtilOpenBitSetDISI_initWithInt_(OrgApacheLuceneUtilOpenBitSetDISI *self, jint maxSize) {
  OrgApacheLuceneUtilOpenBitSet_initWithLong_(self, maxSize);
}

OrgApacheLuceneUtilOpenBitSetDISI *new_OrgApacheLuceneUtilOpenBitSetDISI_initWithInt_(jint maxSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilOpenBitSetDISI, initWithInt_, maxSize)
}

OrgApacheLuceneUtilOpenBitSetDISI *create_OrgApacheLuceneUtilOpenBitSetDISI_initWithInt_(jint maxSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilOpenBitSetDISI, initWithInt_, maxSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilOpenBitSetDISI)
