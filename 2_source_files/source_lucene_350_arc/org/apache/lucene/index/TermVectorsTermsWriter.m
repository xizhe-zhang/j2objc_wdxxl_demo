//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/TermVectorsTermsWriter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/lang/RuntimeException.h"
#include "java/util/Collection.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/DocumentsWriter.h"
#include "org/apache/lucene/index/IndexFileNames.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/index/TermVectorsReader.h"
#include "org/apache/lucene/index/TermVectorsTermsWriter.h"
#include "org/apache/lucene/index/TermVectorsTermsWriterPerField.h"
#include "org/apache/lucene/index/TermVectorsTermsWriterPerThread.h"
#include "org/apache/lucene/index/TermsHashConsumer.h"
#include "org/apache/lucene/index/TermsHashConsumerPerField.h"
#include "org/apache/lucene/index/TermsHashConsumerPerThread.h"
#include "org/apache/lucene/index/TermsHashPerField.h"
#include "org/apache/lucene/index/TermsHashPerThread.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/store/RAMOutputStream.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@interface OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc () {
 @public
  OrgApacheLuceneIndexTermVectorsTermsWriter *this$0_;
}

@end

@implementation OrgApacheLuceneIndexTermVectorsTermsWriter

- (instancetype)initWithOrgApacheLuceneIndexDocumentsWriter:(OrgApacheLuceneIndexDocumentsWriter *)docWriter {
  OrgApacheLuceneIndexTermVectorsTermsWriter_initWithOrgApacheLuceneIndexDocumentsWriter_(self, docWriter);
  return self;
}

- (OrgApacheLuceneIndexTermsHashConsumerPerThread *)addThreadWithOrgApacheLuceneIndexTermsHashPerThread:(OrgApacheLuceneIndexTermsHashPerThread *)termsHashPerThread {
  return new_OrgApacheLuceneIndexTermVectorsTermsWriterPerThread_initWithOrgApacheLuceneIndexTermsHashPerThread_withOrgApacheLuceneIndexTermVectorsTermsWriter_(termsHashPerThread, self);
}

- (void)flushWithJavaUtilMap:(id<JavaUtilMap>)threadsAndFields
withOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state {
  @synchronized(self) {
    if (tvx_ != nil) {
      [self fillWithInt:((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state))->numDocs_];
      OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray newArrayWithObjects:(id[]){ tvx_, tvf_, tvd_ } count:3 type:JavaIoCloseable_class_()]);
      tvx_ = tvd_ = tvf_ = nil;
      JreAssert(state->segmentName_ != nil, @"org/apache/lucene/index/TermVectorsTermsWriter.java:58 condition failed: assert state.segmentName != null;");
      NSString *idxName = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_(state->segmentName_, OrgApacheLuceneIndexIndexFileNames_VECTORS_INDEX_EXTENSION);
      if (4 + ((jlong) state->numDocs_) * 16 != [((OrgApacheLuceneStoreDirectory *) nil_chk(state->directory_)) fileLengthWithNSString:idxName]) {
        @throw new_JavaLangRuntimeException_initWithNSString_(JreStrcat("$I$J$$$Z", @"after flush: tvx size mismatch: ", state->numDocs_, @" docs vs ", [state->directory_ fileLengthWithNSString:idxName], @" length in bytes of ", idxName, @" file exists?=", [state->directory_ fileExistsWithNSString:idxName]));
      }
      lastDocID_ = 0;
      state->hasVectors_ = hasVectors_;
      hasVectors_ = false;
    }
    for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((id<JavaUtilMap>) nil_chk(threadsAndFields)) entrySet])) {
      for (OrgApacheLuceneIndexTermsHashConsumerPerField * __strong field in nil_chk([((id<JavaUtilMap_Entry>) nil_chk(entry_)) getValue])) {
        OrgApacheLuceneIndexTermVectorsTermsWriterPerField *perField = (OrgApacheLuceneIndexTermVectorsTermsWriterPerField *) cast_chk(field, [OrgApacheLuceneIndexTermVectorsTermsWriterPerField class]);
        [((OrgApacheLuceneIndexTermsHashPerField *) nil_chk(((OrgApacheLuceneIndexTermVectorsTermsWriterPerField *) nil_chk(perField))->termsHashPerField_)) reset];
        [perField shrinkHash];
      }
      OrgApacheLuceneIndexTermVectorsTermsWriterPerThread *perThread = (OrgApacheLuceneIndexTermVectorsTermsWriterPerThread *) cast_chk([entry_ getKey], [OrgApacheLuceneIndexTermVectorsTermsWriterPerThread class]);
      [((OrgApacheLuceneIndexTermsHashPerThread *) nil_chk(((OrgApacheLuceneIndexTermVectorsTermsWriterPerThread *) nil_chk(perThread))->termsHashPerThread_)) resetWithBoolean:true];
    }
  }
}

- (OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc *)getPerDoc {
  @synchronized(self) {
    if (freeCount_ == 0) {
      allocCount_++;
      if (allocCount_ > ((IOSObjectArray *) nil_chk(docFreeList_))->size_) {
        JreAssert(allocCount_ == 1 + docFreeList_->size_, @"org/apache/lucene/index/TermVectorsTermsWriter.java:90 condition failed: assert allocCount == 1+docFreeList.length;");
        docFreeList_ = [IOSObjectArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(allocCount_, JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF)) type:OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc_class_()];
      }
      return new_OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc_initWithOrgApacheLuceneIndexTermVectorsTermsWriter_(self);
    }
    else {
      return IOSObjectArray_Get(nil_chk(docFreeList_), --freeCount_);
    }
  }
}

- (void)fillWithInt:(jint)docID {
  if (lastDocID_ < docID) {
    jlong tvfPosition = [((OrgApacheLuceneStoreIndexOutput *) nil_chk(tvf_)) getFilePointer];
    while (lastDocID_ < docID) {
      [((OrgApacheLuceneStoreIndexOutput *) nil_chk(tvx_)) writeLongWithLong:[((OrgApacheLuceneStoreIndexOutput *) nil_chk(tvd_)) getFilePointer]];
      [((OrgApacheLuceneStoreIndexOutput *) nil_chk(tvd_)) writeVIntWithInt:0];
      [((OrgApacheLuceneStoreIndexOutput *) nil_chk(tvx_)) writeLongWithLong:tvfPosition];
      lastDocID_++;
    }
  }
}

- (void)initTermVectorsWriter {
  @synchronized(self) {
    if (tvx_ == nil) {
      jboolean success = false;
      @try {
        hasVectors_ = true;
        tvx_ = [((OrgApacheLuceneStoreDirectory *) nil_chk(((OrgApacheLuceneIndexDocumentsWriter *) nil_chk(docWriter_))->directory_)) createOutputWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_([docWriter_ getSegment], OrgApacheLuceneIndexIndexFileNames_VECTORS_INDEX_EXTENSION)];
        tvd_ = [((OrgApacheLuceneStoreDirectory *) nil_chk(docWriter_->directory_)) createOutputWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_([docWriter_ getSegment], OrgApacheLuceneIndexIndexFileNames_VECTORS_DOCUMENTS_EXTENSION)];
        tvf_ = [((OrgApacheLuceneStoreDirectory *) nil_chk(docWriter_->directory_)) createOutputWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_([docWriter_ getSegment], OrgApacheLuceneIndexIndexFileNames_VECTORS_FIELDS_EXTENSION)];
        [((OrgApacheLuceneStoreIndexOutput *) nil_chk(tvx_)) writeIntWithInt:OrgApacheLuceneIndexTermVectorsReader_FORMAT_CURRENT];
        [((OrgApacheLuceneStoreIndexOutput *) nil_chk(tvd_)) writeIntWithInt:OrgApacheLuceneIndexTermVectorsReader_FORMAT_CURRENT];
        [((OrgApacheLuceneStoreIndexOutput *) nil_chk(tvf_)) writeIntWithInt:OrgApacheLuceneIndexTermVectorsReader_FORMAT_CURRENT];
        success = true;
      }
      @finally {
        if (!success) {
          OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray newArrayWithObjects:(id[]){ tvx_, tvd_, tvf_ } count:3 type:JavaIoCloseable_class_()]);
        }
      }
      lastDocID_ = 0;
    }
  }
}

- (void)finishDocumentWithOrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc:(OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc *)perDoc {
  @synchronized(self) {
    JreAssert([((OrgApacheLuceneIndexIndexWriter *) nil_chk(((OrgApacheLuceneIndexDocumentsWriter *) nil_chk(docWriter_))->writer_)) testPointWithNSString:@"TermVectorsTermsWriter.finishDocument start"], @"org/apache/lucene/index/TermVectorsTermsWriter.java:141 condition failed: assert docWriter.writer.testPoint(\"TermVectorsTermsWriter.finishDocument start\");");
    [self initTermVectorsWriter];
    [self fillWithInt:((OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc *) nil_chk(perDoc))->docID_];
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(tvx_)) writeLongWithLong:[((OrgApacheLuceneStoreIndexOutput *) nil_chk(tvd_)) getFilePointer]];
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(tvx_)) writeLongWithLong:[((OrgApacheLuceneStoreIndexOutput *) nil_chk(tvf_)) getFilePointer]];
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(tvd_)) writeVIntWithInt:perDoc->numVectorFields_];
    if (perDoc->numVectorFields_ > 0) {
      for (jint i = 0; i < perDoc->numVectorFields_; i++) {
        [((OrgApacheLuceneStoreIndexOutput *) nil_chk(tvd_)) writeVIntWithInt:IOSIntArray_Get(nil_chk(perDoc->fieldNumbers_), i)];
      }
      JreAssert(0 == IOSLongArray_Get(nil_chk(perDoc->fieldPointers_), 0), @"org/apache/lucene/index/TermVectorsTermsWriter.java:155 condition failed: assert 0 == perDoc.fieldPointers[0];");
      jlong lastPos = IOSLongArray_Get(perDoc->fieldPointers_, 0);
      for (jint i = 1; i < perDoc->numVectorFields_; i++) {
        jlong pos = IOSLongArray_Get(nil_chk(perDoc->fieldPointers_), i);
        [((OrgApacheLuceneStoreIndexOutput *) nil_chk(tvd_)) writeVLongWithLong:pos - lastPos];
        lastPos = pos;
      }
      [((OrgApacheLuceneStoreRAMOutputStream *) nil_chk(perDoc->perDocTvf_)) writeToWithOrgApacheLuceneStoreIndexOutput:tvf_];
      perDoc->numVectorFields_ = 0;
    }
    JreAssert(lastDocID_ == perDoc->docID_, JreStrcat("$I$I", @"lastDocID=", lastDocID_, @" perDoc.docID=", perDoc->docID_));
    lastDocID_++;
    [perDoc reset];
    [self freeWithOrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc:perDoc];
    JreAssert([((OrgApacheLuceneIndexIndexWriter *) nil_chk(docWriter_->writer_)) testPointWithNSString:@"TermVectorsTermsWriter.finishDocument end"], @"org/apache/lucene/index/TermVectorsTermsWriter.java:172 condition failed: assert docWriter.writer.testPoint(\"TermVectorsTermsWriter.finishDocument end\");");
  }
}

- (void)abort {
  hasVectors_ = false;
  @try {
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray newArrayWithObjects:(id[]){ tvx_, tvd_, tvf_ } count:3 type:JavaIoCloseable_class_()]);
  }
  @catch (JavaIoIOException *e) {
    @throw new_JavaLangRuntimeException_initWithJavaLangThrowable_(e);
  }
  @try {
    [((OrgApacheLuceneStoreDirectory *) nil_chk(((OrgApacheLuceneIndexDocumentsWriter *) nil_chk(docWriter_))->directory_)) deleteFileWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_([docWriter_ getSegment], OrgApacheLuceneIndexIndexFileNames_VECTORS_INDEX_EXTENSION)];
  }
  @catch (JavaIoIOException *ignored) {
  }
  @try {
    [((OrgApacheLuceneStoreDirectory *) nil_chk(docWriter_->directory_)) deleteFileWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_([docWriter_ getSegment], OrgApacheLuceneIndexIndexFileNames_VECTORS_DOCUMENTS_EXTENSION)];
  }
  @catch (JavaIoIOException *ignored) {
  }
  @try {
    [((OrgApacheLuceneStoreDirectory *) nil_chk(docWriter_->directory_)) deleteFileWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_([docWriter_ getSegment], OrgApacheLuceneIndexIndexFileNames_VECTORS_FIELDS_EXTENSION)];
  }
  @catch (JavaIoIOException *ignored) {
  }
  tvx_ = tvd_ = tvf_ = nil;
  lastDocID_ = 0;
}

- (void)freeWithOrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc:(OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc *)doc {
  @synchronized(self) {
    JreAssert(freeCount_ < ((IOSObjectArray *) nil_chk(docFreeList_))->size_, @"org/apache/lucene/index/TermVectorsTermsWriter.java:205 condition failed: assert freeCount < docFreeList.length;");
    (void) IOSObjectArray_Set(docFreeList_, freeCount_++, doc);
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermsHashConsumerPerThread;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x20, 3, 4, 5, 6, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc;", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 7, 8, 5, -1, -1, -1 },
    { NULL, "V", 0x20, -1, -1, 5, -1, -1, -1 },
    { NULL, "V", 0x20, 9, 10, 5, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x20, 11, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexDocumentsWriter:);
  methods[1].selector = @selector(addThreadWithOrgApacheLuceneIndexTermsHashPerThread:);
  methods[2].selector = @selector(flushWithJavaUtilMap:withOrgApacheLuceneIndexSegmentWriteState:);
  methods[3].selector = @selector(getPerDoc);
  methods[4].selector = @selector(fillWithInt:);
  methods[5].selector = @selector(initTermVectorsWriter);
  methods[6].selector = @selector(finishDocumentWithOrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc:);
  methods[7].selector = @selector(abort);
  methods[8].selector = @selector(freeWithOrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "docWriter_", "LOrgApacheLuceneIndexDocumentsWriter;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "docFreeList_", "[LOrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "freeCount_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "tvx_", "LOrgApacheLuceneStoreIndexOutput;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "tvd_", "LOrgApacheLuceneStoreIndexOutput;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "tvf_", "LOrgApacheLuceneStoreIndexOutput;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "lastDocID_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "hasVectors_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "allocCount_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexDocumentsWriter;", "addThread", "LOrgApacheLuceneIndexTermsHashPerThread;", "flush", "LJavaUtilMap;LOrgApacheLuceneIndexSegmentWriteState;", "LJavaIoIOException;", "(Ljava/util/Map<Lorg/apache/lucene/index/TermsHashConsumerPerThread;Ljava/util/Collection<Lorg/apache/lucene/index/TermsHashConsumerPerField;>;>;Lorg/apache/lucene/index/SegmentWriteState;)V", "fill", "I", "finishDocument", "LOrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc;", "free" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexTermVectorsTermsWriter = { "TermVectorsTermsWriter", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 9, 9, -1, 10, -1, -1, -1 };
  return &_OrgApacheLuceneIndexTermVectorsTermsWriter;
}

@end

void OrgApacheLuceneIndexTermVectorsTermsWriter_initWithOrgApacheLuceneIndexDocumentsWriter_(OrgApacheLuceneIndexTermVectorsTermsWriter *self, OrgApacheLuceneIndexDocumentsWriter *docWriter) {
  OrgApacheLuceneIndexTermsHashConsumer_init(self);
  self->docFreeList_ = [IOSObjectArray newArrayWithLength:1 type:OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc_class_()];
  self->docWriter_ = docWriter;
}

OrgApacheLuceneIndexTermVectorsTermsWriter *new_OrgApacheLuceneIndexTermVectorsTermsWriter_initWithOrgApacheLuceneIndexDocumentsWriter_(OrgApacheLuceneIndexDocumentsWriter *docWriter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexTermVectorsTermsWriter, initWithOrgApacheLuceneIndexDocumentsWriter_, docWriter)
}

OrgApacheLuceneIndexTermVectorsTermsWriter *create_OrgApacheLuceneIndexTermVectorsTermsWriter_initWithOrgApacheLuceneIndexDocumentsWriter_(OrgApacheLuceneIndexDocumentsWriter *docWriter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexTermVectorsTermsWriter, initWithOrgApacheLuceneIndexDocumentsWriter_, docWriter)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexTermVectorsTermsWriter)

@implementation OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc

- (instancetype)initWithOrgApacheLuceneIndexTermVectorsTermsWriter:(OrgApacheLuceneIndexTermVectorsTermsWriter *)outer$ {
  OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc_initWithOrgApacheLuceneIndexTermVectorsTermsWriter_(self, outer$);
  return self;
}

- (void)reset {
  [((OrgApacheLuceneStoreRAMOutputStream *) nil_chk(perDocTvf_)) reset];
  [((OrgApacheLuceneIndexDocumentsWriter_PerDocBuffer *) nil_chk(buffer_)) recycle];
  numVectorFields_ = 0;
}

- (void)abort {
  [self reset];
  [this$0_ freeWithOrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc:self];
}

- (void)addFieldWithInt:(jint)fieldNumber {
  if (numVectorFields_ == ((IOSIntArray *) nil_chk(fieldNumbers_))->size_) {
    fieldNumbers_ = OrgApacheLuceneUtilArrayUtil_growWithIntArray_(fieldNumbers_);
  }
  if (numVectorFields_ == ((IOSLongArray *) nil_chk(fieldPointers_))->size_) {
    fieldPointers_ = OrgApacheLuceneUtilArrayUtil_growWithLongArray_(fieldPointers_);
  }
  *IOSIntArray_GetRef(nil_chk(fieldNumbers_), numVectorFields_) = fieldNumber;
  *IOSLongArray_GetRef(nil_chk(fieldPointers_), numVectorFields_) = [((OrgApacheLuceneStoreRAMOutputStream *) nil_chk(perDocTvf_)) getFilePointer];
  numVectorFields_++;
}

- (jlong)sizeInBytes {
  return [((OrgApacheLuceneIndexDocumentsWriter_PerDocBuffer *) nil_chk(buffer_)) getSizeInBytes];
}

- (void)finish {
  [this$0_ finishDocumentWithOrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc:self];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 0, 1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexTermVectorsTermsWriter:);
  methods[1].selector = @selector(reset);
  methods[2].selector = @selector(abort);
  methods[3].selector = @selector(addFieldWithInt:);
  methods[4].selector = @selector(sizeInBytes);
  methods[5].selector = @selector(finish);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneIndexTermVectorsTermsWriter;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "buffer_", "LOrgApacheLuceneIndexDocumentsWriter_PerDocBuffer;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "perDocTvf_", "LOrgApacheLuceneStoreRAMOutputStream;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "numVectorFields_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "fieldNumbers_", "[I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "fieldPointers_", "[J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "addField", "I", "LJavaIoIOException;", "LOrgApacheLuceneIndexTermVectorsTermsWriter;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc = { "PerDoc", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x0, 6, 6, 3, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc;
}

@end

void OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc_initWithOrgApacheLuceneIndexTermVectorsTermsWriter_(OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc *self, OrgApacheLuceneIndexTermVectorsTermsWriter *outer$) {
  self->this$0_ = outer$;
  OrgApacheLuceneIndexDocumentsWriter_DocWriter_init(self);
  self->buffer_ = [((OrgApacheLuceneIndexDocumentsWriter *) nil_chk(outer$->docWriter_)) newPerDocBuffer];
  self->perDocTvf_ = new_OrgApacheLuceneStoreRAMOutputStream_initWithOrgApacheLuceneStoreRAMFile_(self->buffer_);
  self->fieldNumbers_ = [IOSIntArray newArrayWithLength:1];
  self->fieldPointers_ = [IOSLongArray newArrayWithLength:1];
}

OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc *new_OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc_initWithOrgApacheLuceneIndexTermVectorsTermsWriter_(OrgApacheLuceneIndexTermVectorsTermsWriter *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc, initWithOrgApacheLuceneIndexTermVectorsTermsWriter_, outer$)
}

OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc *create_OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc_initWithOrgApacheLuceneIndexTermVectorsTermsWriter_(OrgApacheLuceneIndexTermVectorsTermsWriter *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc, initWithOrgApacheLuceneIndexTermVectorsTermsWriter_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc)
