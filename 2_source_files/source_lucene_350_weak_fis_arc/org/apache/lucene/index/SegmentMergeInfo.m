//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/SegmentMergeInfo.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/PayloadProcessorProvider.h"
#include "org/apache/lucene/index/SegmentMergeInfo.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/TermEnum.h"
#include "org/apache/lucene/index/TermPositions.h"

@interface OrgApacheLuceneIndexSegmentMergeInfo () {
 @public
  id<OrgApacheLuceneIndexTermPositions> postings_;
  IOSIntArray *docMap_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentMergeInfo, postings_, id<OrgApacheLuceneIndexTermPositions>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentMergeInfo, docMap_, IOSIntArray *)

@implementation OrgApacheLuceneIndexSegmentMergeInfo

- (instancetype)initWithInt:(jint)b
withOrgApacheLuceneIndexTermEnum:(OrgApacheLuceneIndexTermEnum *)te
withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)r {
  OrgApacheLuceneIndexSegmentMergeInfo_initWithInt_withOrgApacheLuceneIndexTermEnum_withOrgApacheLuceneIndexIndexReader_(self, b, te, r);
  return self;
}

- (IOSIntArray *)getDocMap {
  if (docMap_ == nil) {
    delCount_ = 0;
    if ([((OrgApacheLuceneIndexIndexReader *) nil_chk(reader_)) hasDeletions]) {
      jint maxDoc = [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader_)) maxDoc];
      docMap_ = [IOSIntArray newArrayWithLength:maxDoc];
      jint j = 0;
      for (jint i = 0; i < maxDoc; i++) {
        if ([((OrgApacheLuceneIndexIndexReader *) nil_chk(reader_)) isDeletedWithInt:i]) {
          delCount_++;
          *IOSIntArray_GetRef(nil_chk(docMap_), i) = -1;
        }
        else *IOSIntArray_GetRef(nil_chk(docMap_), i) = j++;
      }
    }
  }
  return docMap_;
}

- (id<OrgApacheLuceneIndexTermPositions>)getPositions {
  if (postings_ == nil) {
    postings_ = [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader_)) termPositions];
  }
  return postings_;
}

- (jboolean)next {
  if ([((OrgApacheLuceneIndexTermEnum *) nil_chk(termEnum_)) next]) {
    term_ = [((OrgApacheLuceneIndexTermEnum *) nil_chk(termEnum_)) term];
    return true;
  }
  else {
    term_ = nil;
    return false;
  }
}

- (void)close {
  @try {
    [((OrgApacheLuceneIndexTermEnum *) nil_chk(termEnum_)) close];
  }
  @finally {
    if (postings_ != nil) {
      [postings_ close];
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, 1, -1, -1, -1 },
    { NULL, "[I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermPositions;", 0x0, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x10, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x10, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:withOrgApacheLuceneIndexTermEnum:withOrgApacheLuceneIndexIndexReader:);
  methods[1].selector = @selector(getDocMap);
  methods[2].selector = @selector(getPositions);
  methods[3].selector = @selector(next);
  methods[4].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "term_", "LOrgApacheLuceneIndexTerm;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "base_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "ord_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "termEnum_", "LOrgApacheLuceneIndexTermEnum;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "reader_", "LOrgApacheLuceneIndexIndexReader;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "delCount_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "postings_", "LOrgApacheLuceneIndexTermPositions;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "docMap_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "dirPayloadProcessor_", "LOrgApacheLuceneIndexPayloadProcessorProvider_DirPayloadProcessor;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "ILOrgApacheLuceneIndexTermEnum;LOrgApacheLuceneIndexIndexReader;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSegmentMergeInfo = { "SegmentMergeInfo", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 5, 9, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexSegmentMergeInfo;
}

@end

void OrgApacheLuceneIndexSegmentMergeInfo_initWithInt_withOrgApacheLuceneIndexTermEnum_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneIndexSegmentMergeInfo *self, jint b, OrgApacheLuceneIndexTermEnum *te, OrgApacheLuceneIndexIndexReader *r) {
  NSObject_init(self);
  self->base_ = b;
  self->reader_ = r;
  self->termEnum_ = te;
  self->term_ = [((OrgApacheLuceneIndexTermEnum *) nil_chk(te)) term];
}

OrgApacheLuceneIndexSegmentMergeInfo *new_OrgApacheLuceneIndexSegmentMergeInfo_initWithInt_withOrgApacheLuceneIndexTermEnum_withOrgApacheLuceneIndexIndexReader_(jint b, OrgApacheLuceneIndexTermEnum *te, OrgApacheLuceneIndexIndexReader *r) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexSegmentMergeInfo, initWithInt_withOrgApacheLuceneIndexTermEnum_withOrgApacheLuceneIndexIndexReader_, b, te, r)
}

OrgApacheLuceneIndexSegmentMergeInfo *create_OrgApacheLuceneIndexSegmentMergeInfo_initWithInt_withOrgApacheLuceneIndexTermEnum_withOrgApacheLuceneIndexIndexReader_(jint b, OrgApacheLuceneIndexTermEnum *te, OrgApacheLuceneIndexIndexReader *r) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexSegmentMergeInfo, initWithInt_withOrgApacheLuceneIndexTermEnum_withOrgApacheLuceneIndexIndexReader_, b, te, r)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSegmentMergeInfo)
