//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/SerialMergeScheduler.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/MergePolicy.h"
#include "org/apache/lucene/index/MergeScheduler.h"
#include "org/apache/lucene/index/SerialMergeScheduler.h"

@implementation OrgApacheLuceneIndexSerialMergeScheduler

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexSerialMergeScheduler_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)mergeWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer {
  @synchronized(self) {
    while (true) {
      OrgApacheLuceneIndexMergePolicy_OneMerge *merge = [((OrgApacheLuceneIndexIndexWriter *) nil_chk(writer)) getNextMerge];
      if (merge == nil) break;
      [writer mergeWithOrgApacheLuceneIndexMergePolicy_OneMerge:merge];
    }
  }
}

- (void)close {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x21, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(mergeWithOrgApacheLuceneIndexIndexWriter:);
  methods[2].selector = @selector(close);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "merge", "LOrgApacheLuceneIndexIndexWriter;", "LOrgApacheLuceneIndexCorruptIndexException;LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSerialMergeScheduler = { "SerialMergeScheduler", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexSerialMergeScheduler;
}

@end

void OrgApacheLuceneIndexSerialMergeScheduler_init(OrgApacheLuceneIndexSerialMergeScheduler *self) {
  OrgApacheLuceneIndexMergeScheduler_init(self);
}

OrgApacheLuceneIndexSerialMergeScheduler *new_OrgApacheLuceneIndexSerialMergeScheduler_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexSerialMergeScheduler, init)
}

OrgApacheLuceneIndexSerialMergeScheduler *create_OrgApacheLuceneIndexSerialMergeScheduler_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexSerialMergeScheduler, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSerialMergeScheduler)
