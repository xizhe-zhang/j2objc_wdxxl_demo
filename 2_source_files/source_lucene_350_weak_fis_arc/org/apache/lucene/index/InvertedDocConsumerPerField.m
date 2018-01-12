//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/InvertedDocConsumerPerField.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/document/Fieldable.h"
#include "org/apache/lucene/index/InvertedDocConsumerPerField.h"

@implementation OrgApacheLuceneIndexInvertedDocConsumerPerField

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexInvertedDocConsumerPerField_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jboolean)startWithOrgApacheLuceneDocumentFieldableArray:(IOSObjectArray *)fields
                                                   withInt:(jint)count {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)startWithOrgApacheLuceneDocumentFieldable:(id<OrgApacheLuceneDocumentFieldable>)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)add {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)finish {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)abort {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x400, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x400, 0, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x400, -1, -1, 2, -1, -1, -1 },
    { NULL, "V", 0x400, -1, -1, 2, -1, -1, -1 },
    { NULL, "V", 0x400, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(startWithOrgApacheLuceneDocumentFieldableArray:withInt:);
  methods[2].selector = @selector(startWithOrgApacheLuceneDocumentFieldable:);
  methods[3].selector = @selector(add);
  methods[4].selector = @selector(finish);
  methods[5].selector = @selector(abort);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "start", "[LOrgApacheLuceneDocumentFieldable;I", "LJavaIoIOException;", "LOrgApacheLuceneDocumentFieldable;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexInvertedDocConsumerPerField = { "InvertedDocConsumerPerField", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x400, 6, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexInvertedDocConsumerPerField;
}

@end

void OrgApacheLuceneIndexInvertedDocConsumerPerField_init(OrgApacheLuceneIndexInvertedDocConsumerPerField *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexInvertedDocConsumerPerField)
