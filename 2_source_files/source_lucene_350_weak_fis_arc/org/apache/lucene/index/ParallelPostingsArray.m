//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/ParallelPostingsArray.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "org/apache/lucene/index/ParallelPostingsArray.h"
#include "org/apache/lucene/util/ArrayUtil.h"

@implementation OrgApacheLuceneIndexParallelPostingsArray

- (instancetype)initWithInt:(jint)size {
  OrgApacheLuceneIndexParallelPostingsArray_initWithInt_(self, size);
  return self;
}

- (jint)bytesPerPosting {
  return OrgApacheLuceneIndexParallelPostingsArray_BYTES_PER_POSTING;
}

- (OrgApacheLuceneIndexParallelPostingsArray *)newInstanceWithInt:(jint)size {
  return new_OrgApacheLuceneIndexParallelPostingsArray_initWithInt_(size);
}

- (OrgApacheLuceneIndexParallelPostingsArray *)grow {
  jint newSize = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(size_ + 1, [self bytesPerPosting]);
  OrgApacheLuceneIndexParallelPostingsArray *newArray = [self newInstanceWithInt:newSize];
  [self copyToWithOrgApacheLuceneIndexParallelPostingsArray:newArray withInt:size_];
  return newArray;
}

- (void)copyToWithOrgApacheLuceneIndexParallelPostingsArray:(OrgApacheLuceneIndexParallelPostingsArray *)toArray
                                                    withInt:(jint)numToCopy {
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(textStarts_, 0, ((OrgApacheLuceneIndexParallelPostingsArray *) nil_chk(toArray))->textStarts_, 0, numToCopy);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(intStarts_, 0, toArray->intStarts_, 0, numToCopy);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(byteStarts_, 0, toArray->byteStarts_, 0, numToCopy);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexParallelPostingsArray;", 0x0, 1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexParallelPostingsArray;", 0x10, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(bytesPerPosting);
  methods[2].selector = @selector(newInstanceWithInt:);
  methods[3].selector = @selector(grow);
  methods[4].selector = @selector(copyToWithOrgApacheLuceneIndexParallelPostingsArray:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "BYTES_PER_POSTING", "I", .constantValue.asInt = OrgApacheLuceneIndexParallelPostingsArray_BYTES_PER_POSTING, 0x18, -1, -1, -1, -1 },
    { "size_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "textStarts_", "[I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "intStarts_", "[I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "byteStarts_", "[I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "newInstance", "copyTo", "LOrgApacheLuceneIndexParallelPostingsArray;I" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexParallelPostingsArray = { "ParallelPostingsArray", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x0, 5, 5, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexParallelPostingsArray;
}

@end

void OrgApacheLuceneIndexParallelPostingsArray_initWithInt_(OrgApacheLuceneIndexParallelPostingsArray *self, jint size) {
  NSObject_init(self);
  self->size_ = size;
  self->textStarts_ = [IOSIntArray newArrayWithLength:size];
  self->intStarts_ = [IOSIntArray newArrayWithLength:size];
  self->byteStarts_ = [IOSIntArray newArrayWithLength:size];
}

OrgApacheLuceneIndexParallelPostingsArray *new_OrgApacheLuceneIndexParallelPostingsArray_initWithInt_(jint size) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexParallelPostingsArray, initWithInt_, size)
}

OrgApacheLuceneIndexParallelPostingsArray *create_OrgApacheLuceneIndexParallelPostingsArray_initWithInt_(jint size) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexParallelPostingsArray, initWithInt_, size)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexParallelPostingsArray)
