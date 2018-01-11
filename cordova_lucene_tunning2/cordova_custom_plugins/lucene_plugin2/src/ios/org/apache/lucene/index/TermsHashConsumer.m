//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/TermsHashConsumer.java
//

#include "J2ObjC_source.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/index/TermsHashConsumer.h"
#include "org/apache/lucene/index/TermsHashConsumerPerThread.h"
#include "org/apache/lucene/index/TermsHashPerThread.h"

@implementation OrgApacheLuceneIndexTermsHashConsumer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexTermsHashConsumer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneIndexTermsHashConsumerPerThread *)addThreadWithOrgApacheLuceneIndexTermsHashPerThread:(OrgApacheLuceneIndexTermsHashPerThread *)perThread {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)flushWithJavaUtilMap:(id<JavaUtilMap>)threadsAndFields
withOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)abort {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)setFieldInfosWithOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fieldInfos {
  self->fieldInfos_ = fieldInfos;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermsHashConsumerPerThread;", 0x400, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x400, 2, 3, 4, 5, -1, -1 },
    { NULL, "V", 0x400, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addThreadWithOrgApacheLuceneIndexTermsHashPerThread:);
  methods[2].selector = @selector(flushWithJavaUtilMap:withOrgApacheLuceneIndexSegmentWriteState:);
  methods[3].selector = @selector(abort);
  methods[4].selector = @selector(setFieldInfosWithOrgApacheLuceneIndexFieldInfos:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "fieldInfos_", "LOrgApacheLuceneIndexFieldInfos;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "addThread", "LOrgApacheLuceneIndexTermsHashPerThread;", "flush", "LJavaUtilMap;LOrgApacheLuceneIndexSegmentWriteState;", "LJavaIoIOException;", "(Ljava/util/Map<Lorg/apache/lucene/index/TermsHashConsumerPerThread;Ljava/util/Collection<Lorg/apache/lucene/index/TermsHashConsumerPerField;>;>;Lorg/apache/lucene/index/SegmentWriteState;)V", "setFieldInfos", "LOrgApacheLuceneIndexFieldInfos;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexTermsHashConsumer = { "TermsHashConsumer", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x400, 5, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexTermsHashConsumer;
}

@end

void OrgApacheLuceneIndexTermsHashConsumer_init(OrgApacheLuceneIndexTermsHashConsumer *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexTermsHashConsumer)
