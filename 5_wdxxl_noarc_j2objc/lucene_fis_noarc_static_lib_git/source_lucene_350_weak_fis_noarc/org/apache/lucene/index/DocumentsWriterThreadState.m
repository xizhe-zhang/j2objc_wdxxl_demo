//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/DocumentsWriterThreadState.java
//

#include "J2ObjC_source.h"
#include "java/io/PrintStream.h"
#include "org/apache/lucene/index/DocConsumer.h"
#include "org/apache/lucene/index/DocConsumerPerThread.h"
#include "org/apache/lucene/index/DocumentsWriter.h"
#include "org/apache/lucene/index/DocumentsWriterThreadState.h"
#include "org/apache/lucene/search/Similarity.h"

@implementation OrgApacheLuceneIndexDocumentsWriterThreadState

- (instancetype)initWithOrgApacheLuceneIndexDocumentsWriter:(OrgApacheLuceneIndexDocumentsWriter *)docWriter {
  OrgApacheLuceneIndexDocumentsWriterThreadState_initWithOrgApacheLuceneIndexDocumentsWriter_(self, docWriter);
  return self;
}

- (void)doAfterFlush {
  numThreads_ = 0;
}

- (void)dealloc {
  RELEASE_(consumer_);
  RELEASE_(docState_);
  RELEASE_(docWriter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexDocumentsWriter:);
  methods[1].selector = @selector(doAfterFlush);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "isIdle_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "numThreads_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "consumer_", "LOrgApacheLuceneIndexDocConsumerPerThread;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "docState_", "LOrgApacheLuceneIndexDocumentsWriter_DocState;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "docWriter_", "LOrgApacheLuceneIndexDocumentsWriter;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexDocumentsWriter;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexDocumentsWriterThreadState = { "DocumentsWriterThreadState", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 2, 5, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexDocumentsWriterThreadState;
}

@end

void OrgApacheLuceneIndexDocumentsWriterThreadState_initWithOrgApacheLuceneIndexDocumentsWriter_(OrgApacheLuceneIndexDocumentsWriterThreadState *self, OrgApacheLuceneIndexDocumentsWriter *docWriter) {
  NSObject_init(self);
  self->isIdle_ = true;
  self->numThreads_ = 1;
  JreStrongAssign(&self->docWriter_, docWriter);
  JreStrongAssignAndConsume(&self->docState_, new_OrgApacheLuceneIndexDocumentsWriter_DocState_init());
  self->docState_->maxFieldLength_ = ((OrgApacheLuceneIndexDocumentsWriter *) nil_chk(docWriter))->maxFieldLength_;
  JreStrongAssign(&self->docState_->infoStream_, docWriter->infoStream_);
  JreStrongAssign(&self->docState_->similarity_, docWriter->similarity_);
  JreStrongAssign(&self->docState_->docWriter_, docWriter);
  JreStrongAssign(&self->consumer_, [((OrgApacheLuceneIndexDocConsumer *) nil_chk(docWriter->consumer_)) addThreadWithOrgApacheLuceneIndexDocumentsWriterThreadState:self]);
}

OrgApacheLuceneIndexDocumentsWriterThreadState *new_OrgApacheLuceneIndexDocumentsWriterThreadState_initWithOrgApacheLuceneIndexDocumentsWriter_(OrgApacheLuceneIndexDocumentsWriter *docWriter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexDocumentsWriterThreadState, initWithOrgApacheLuceneIndexDocumentsWriter_, docWriter)
}

OrgApacheLuceneIndexDocumentsWriterThreadState *create_OrgApacheLuceneIndexDocumentsWriterThreadState_initWithOrgApacheLuceneIndexDocumentsWriter_(OrgApacheLuceneIndexDocumentsWriter *docWriter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexDocumentsWriterThreadState, initWithOrgApacheLuceneIndexDocumentsWriter_, docWriter)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexDocumentsWriterThreadState)