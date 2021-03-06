//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/DefaultSkipListWriter.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/index/DefaultSkipListWriter.h"
#include "org/apache/lucene/index/MultiLevelSkipListWriter.h"
#include "org/apache/lucene/store/IndexOutput.h"

@interface OrgApacheLuceneIndexDefaultSkipListWriter () {
 @public
  IOSIntArray *lastSkipDoc_;
  IOSIntArray *lastSkipPayloadLength_;
  IOSLongArray *lastSkipFreqPointer_;
  IOSLongArray *lastSkipProxPointer_;
  OrgApacheLuceneStoreIndexOutput *freqOutput_;
  OrgApacheLuceneStoreIndexOutput *proxOutput_;
  jint curDoc_;
  jboolean curStorePayloads_;
  jint curPayloadLength_;
  jlong curFreqPointer_;
  jlong curProxPointer_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDefaultSkipListWriter, lastSkipDoc_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDefaultSkipListWriter, lastSkipPayloadLength_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDefaultSkipListWriter, lastSkipFreqPointer_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDefaultSkipListWriter, lastSkipProxPointer_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDefaultSkipListWriter, freqOutput_, OrgApacheLuceneStoreIndexOutput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDefaultSkipListWriter, proxOutput_, OrgApacheLuceneStoreIndexOutput *)

@implementation OrgApacheLuceneIndexDefaultSkipListWriter

- (instancetype)initWithInt:(jint)skipInterval
                    withInt:(jint)numberOfSkipLevels
                    withInt:(jint)docCount
withOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)freqOutput
withOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)proxOutput {
  OrgApacheLuceneIndexDefaultSkipListWriter_initWithInt_withInt_withInt_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_(self, skipInterval, numberOfSkipLevels, docCount, freqOutput, proxOutput);
  return self;
}

- (void)setFreqOutputWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)freqOutput {
  self->freqOutput_ = freqOutput;
}

- (void)setProxOutputWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)proxOutput {
  self->proxOutput_ = proxOutput;
}

- (void)setSkipDataWithInt:(jint)doc
               withBoolean:(jboolean)storePayloads
                   withInt:(jint)payloadLength {
  self->curDoc_ = doc;
  self->curStorePayloads_ = storePayloads;
  self->curPayloadLength_ = payloadLength;
  self->curFreqPointer_ = [((OrgApacheLuceneStoreIndexOutput *) nil_chk(freqOutput_)) getFilePointer];
  if (proxOutput_ != nil) self->curProxPointer_ = [proxOutput_ getFilePointer];
}

- (void)resetSkip {
  [super resetSkip];
  JavaUtilArrays_fillWithIntArray_withInt_(lastSkipDoc_, 0);
  JavaUtilArrays_fillWithIntArray_withInt_(lastSkipPayloadLength_, -1);
  JavaUtilArrays_fillWithLongArray_withLong_(lastSkipFreqPointer_, [((OrgApacheLuceneStoreIndexOutput *) nil_chk(freqOutput_)) getFilePointer]);
  if (proxOutput_ != nil) JavaUtilArrays_fillWithLongArray_withLong_(lastSkipProxPointer_, [proxOutput_ getFilePointer]);
}

- (void)writeSkipDataWithInt:(jint)level
withOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)skipBuffer {
  if (curStorePayloads_) {
    jint delta = curDoc_ - IOSIntArray_Get(nil_chk(lastSkipDoc_), level);
    if (curPayloadLength_ == IOSIntArray_Get(nil_chk(lastSkipPayloadLength_), level)) {
      [((OrgApacheLuceneStoreIndexOutput *) nil_chk(skipBuffer)) writeVIntWithInt:delta * 2];
    }
    else {
      [((OrgApacheLuceneStoreIndexOutput *) nil_chk(skipBuffer)) writeVIntWithInt:delta * 2 + 1];
      [skipBuffer writeVIntWithInt:curPayloadLength_];
      *IOSIntArray_GetRef(nil_chk(lastSkipPayloadLength_), level) = curPayloadLength_;
    }
  }
  else {
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(skipBuffer)) writeVIntWithInt:curDoc_ - IOSIntArray_Get(nil_chk(lastSkipDoc_), level)];
  }
  [skipBuffer writeVIntWithInt:(jint) (curFreqPointer_ - IOSLongArray_Get(nil_chk(lastSkipFreqPointer_), level))];
  [skipBuffer writeVIntWithInt:(jint) (curProxPointer_ - IOSLongArray_Get(nil_chk(lastSkipProxPointer_), level))];
  *IOSIntArray_GetRef(nil_chk(lastSkipDoc_), level) = curDoc_;
  *IOSLongArray_GetRef(nil_chk(lastSkipFreqPointer_), level) = curFreqPointer_;
  *IOSLongArray_GetRef(nil_chk(lastSkipProxPointer_), level) = curProxPointer_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 3, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 6, 7, 8, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:withInt:withInt:withOrgApacheLuceneStoreIndexOutput:withOrgApacheLuceneStoreIndexOutput:);
  methods[1].selector = @selector(setFreqOutputWithOrgApacheLuceneStoreIndexOutput:);
  methods[2].selector = @selector(setProxOutputWithOrgApacheLuceneStoreIndexOutput:);
  methods[3].selector = @selector(setSkipDataWithInt:withBoolean:withInt:);
  methods[4].selector = @selector(resetSkip);
  methods[5].selector = @selector(writeSkipDataWithInt:withOrgApacheLuceneStoreIndexOutput:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "lastSkipDoc_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lastSkipPayloadLength_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lastSkipFreqPointer_", "[J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lastSkipProxPointer_", "[J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "freqOutput_", "LOrgApacheLuceneStoreIndexOutput;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "proxOutput_", "LOrgApacheLuceneStoreIndexOutput;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "curDoc_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "curStorePayloads_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "curPayloadLength_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "curFreqPointer_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "curProxPointer_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "IIILOrgApacheLuceneStoreIndexOutput;LOrgApacheLuceneStoreIndexOutput;", "setFreqOutput", "LOrgApacheLuceneStoreIndexOutput;", "setProxOutput", "setSkipData", "IZI", "writeSkipData", "ILOrgApacheLuceneStoreIndexOutput;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexDefaultSkipListWriter = { "DefaultSkipListWriter", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x0, 6, 11, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexDefaultSkipListWriter;
}

@end

void OrgApacheLuceneIndexDefaultSkipListWriter_initWithInt_withInt_withInt_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_(OrgApacheLuceneIndexDefaultSkipListWriter *self, jint skipInterval, jint numberOfSkipLevels, jint docCount, OrgApacheLuceneStoreIndexOutput *freqOutput, OrgApacheLuceneStoreIndexOutput *proxOutput) {
  OrgApacheLuceneIndexMultiLevelSkipListWriter_initWithInt_withInt_withInt_(self, skipInterval, numberOfSkipLevels, docCount);
  self->freqOutput_ = freqOutput;
  self->proxOutput_ = proxOutput;
  self->lastSkipDoc_ = [IOSIntArray newArrayWithLength:numberOfSkipLevels];
  self->lastSkipPayloadLength_ = [IOSIntArray newArrayWithLength:numberOfSkipLevels];
  self->lastSkipFreqPointer_ = [IOSLongArray newArrayWithLength:numberOfSkipLevels];
  self->lastSkipProxPointer_ = [IOSLongArray newArrayWithLength:numberOfSkipLevels];
}

OrgApacheLuceneIndexDefaultSkipListWriter *new_OrgApacheLuceneIndexDefaultSkipListWriter_initWithInt_withInt_withInt_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_(jint skipInterval, jint numberOfSkipLevels, jint docCount, OrgApacheLuceneStoreIndexOutput *freqOutput, OrgApacheLuceneStoreIndexOutput *proxOutput) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexDefaultSkipListWriter, initWithInt_withInt_withInt_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_, skipInterval, numberOfSkipLevels, docCount, freqOutput, proxOutput)
}

OrgApacheLuceneIndexDefaultSkipListWriter *create_OrgApacheLuceneIndexDefaultSkipListWriter_initWithInt_withInt_withInt_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_(jint skipInterval, jint numberOfSkipLevels, jint docCount, OrgApacheLuceneStoreIndexOutput *freqOutput, OrgApacheLuceneStoreIndexOutput *proxOutput) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexDefaultSkipListWriter, initWithInt_withInt_withInt_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_, skipInterval, numberOfSkipLevels, docCount, freqOutput, proxOutput)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexDefaultSkipListWriter)
