//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/TermPositionVector.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/TermPositionVector.h"

@interface OrgApacheLuceneIndexTermPositionVector : NSObject

@end

@implementation OrgApacheLuceneIndexTermPositionVector

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[I", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "[LOrgApacheLuceneIndexTermVectorOffsetInfo;", 0x401, 2, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getTermPositionsWithInt:);
  methods[1].selector = @selector(getOffsetsWithInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getTermPositions", "I", "getOffsets" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexTermPositionVector = { "TermPositionVector", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexTermPositionVector;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexTermPositionVector)
