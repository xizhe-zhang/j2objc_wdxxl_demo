//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/analysis/CharFilter.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/CharFilter.h"
#include "org/apache/lucene/analysis/CharStream.h"

@implementation OrgApacheLuceneAnalysisCharFilter

- (instancetype)initWithOrgApacheLuceneAnalysisCharStream:(OrgApacheLuceneAnalysisCharStream *)inArg {
  OrgApacheLuceneAnalysisCharFilter_initWithOrgApacheLuceneAnalysisCharStream_(self, inArg);
  return self;
}

- (jint)correctWithInt:(jint)currentOff {
  return currentOff;
}

- (jint)correctOffsetWithInt:(jint)currentOff {
  return [((OrgApacheLuceneAnalysisCharStream *) nil_chk(input_)) correctOffsetWithInt:[self correctWithInt:currentOff]];
}

- (void)close {
  [((OrgApacheLuceneAnalysisCharStream *) nil_chk(input_)) close];
}

- (jint)readWithCharArray:(IOSCharArray *)cbuf
                  withInt:(jint)off
                  withInt:(jint)len {
  return [((OrgApacheLuceneAnalysisCharStream *) nil_chk(input_)) readWithCharArray:cbuf withInt:off withInt:len];
}

- (jboolean)markSupported {
  return [((OrgApacheLuceneAnalysisCharStream *) nil_chk(input_)) markSupported];
}

- (void)markWithInt:(jint)readAheadLimit {
  [((OrgApacheLuceneAnalysisCharStream *) nil_chk(input_)) markWithInt:readAheadLimit];
}

- (void)reset {
  [((OrgApacheLuceneAnalysisCharStream *) nil_chk(input_)) reset];
}

- (void)dealloc {
  RELEASE_(input_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x11, 3, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 4, -1, -1, -1 },
    { NULL, "I", 0x1, 5, 6, 4, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 2, 4, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisCharStream:);
  methods[1].selector = @selector(correctWithInt:);
  methods[2].selector = @selector(correctOffsetWithInt:);
  methods[3].selector = @selector(close);
  methods[4].selector = @selector(readWithCharArray:withInt:withInt:);
  methods[5].selector = @selector(markSupported);
  methods[6].selector = @selector(markWithInt:);
  methods[7].selector = @selector(reset);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "input_", "LOrgApacheLuceneAnalysisCharStream;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisCharStream;", "correct", "I", "correctOffset", "LJavaIoIOException;", "read", "[CII", "mark" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCharFilter = { "CharFilter", "org.apache.lucene.analysis", ptrTable, methods, fields, 7, 0x401, 8, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisCharFilter;
}

@end

void OrgApacheLuceneAnalysisCharFilter_initWithOrgApacheLuceneAnalysisCharStream_(OrgApacheLuceneAnalysisCharFilter *self, OrgApacheLuceneAnalysisCharStream *inArg) {
  OrgApacheLuceneAnalysisCharStream_init(self);
  JreStrongAssign(&self->input_, inArg);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCharFilter)
