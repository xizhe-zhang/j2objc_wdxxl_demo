//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/CharStream.java
//

#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "org/apache/lucene/analysis/CharStream.h"

@implementation OrgApacheLuceneAnalysisCharStream

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisCharStream_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)correctOffsetWithInt:(jint)currentOff {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(correctOffsetWithInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "correctOffset", "I" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCharStream = { "CharStream", "org.apache.lucene.analysis", ptrTable, methods, NULL, 7, 0x401, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisCharStream;
}

@end

void OrgApacheLuceneAnalysisCharStream_init(OrgApacheLuceneAnalysisCharStream *self) {
  JavaIoReader_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCharStream)
