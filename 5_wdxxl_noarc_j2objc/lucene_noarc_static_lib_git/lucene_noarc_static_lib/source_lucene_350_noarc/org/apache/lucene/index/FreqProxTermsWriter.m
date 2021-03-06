//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/FreqProxTermsWriter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/BufferedDeletes.h"
#include "org/apache/lucene/index/ByteSliceReader.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/FormatPostingsDocsConsumer.h"
#include "org/apache/lucene/index/FormatPostingsFieldsConsumer.h"
#include "org/apache/lucene/index/FormatPostingsFieldsWriter.h"
#include "org/apache/lucene/index/FormatPostingsPositionsConsumer.h"
#include "org/apache/lucene/index/FormatPostingsTermsConsumer.h"
#include "org/apache/lucene/index/FreqProxFieldMergeState.h"
#include "org/apache/lucene/index/FreqProxTermsWriter.h"
#include "org/apache/lucene/index/FreqProxTermsWriterPerField.h"
#include "org/apache/lucene/index/FreqProxTermsWriterPerThread.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/TermsHashConsumer.h"
#include "org/apache/lucene/index/TermsHashConsumerPerField.h"
#include "org/apache/lucene/index/TermsHashConsumerPerThread.h"
#include "org/apache/lucene/index/TermsHashPerField.h"
#include "org/apache/lucene/index/TermsHashPerThread.h"
#include "org/apache/lucene/util/BitVector.h"
#include "org/apache/lucene/util/CollectionUtil.h"
#include "org/apache/lucene/util/UnicodeUtil.h"

@interface OrgApacheLuceneIndexFreqProxTermsWriter () {
 @public
  IOSByteArray *payloadBuffer_;
}

+ (jint)compareTextWithCharArray:(IOSCharArray *)text1
                         withInt:(jint)pos1
                   withCharArray:(IOSCharArray *)text2
                         withInt:(jint)pos2;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxTermsWriter, payloadBuffer_, IOSByteArray *)

__attribute__((unused)) static jint OrgApacheLuceneIndexFreqProxTermsWriter_compareTextWithCharArray_withInt_withCharArray_withInt_(IOSCharArray *text1, jint pos1, IOSCharArray *text2, jint pos2);

@implementation OrgApacheLuceneIndexFreqProxTermsWriter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexFreqProxTermsWriter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneIndexTermsHashConsumerPerThread *)addThreadWithOrgApacheLuceneIndexTermsHashPerThread:(OrgApacheLuceneIndexTermsHashPerThread *)perThread {
  return create_OrgApacheLuceneIndexFreqProxTermsWriterPerThread_initWithOrgApacheLuceneIndexTermsHashPerThread_(perThread);
}

+ (jint)compareTextWithCharArray:(IOSCharArray *)text1
                         withInt:(jint)pos1
                   withCharArray:(IOSCharArray *)text2
                         withInt:(jint)pos2 {
  return OrgApacheLuceneIndexFreqProxTermsWriter_compareTextWithCharArray_withInt_withCharArray_withInt_(text1, pos1, text2, pos2);
}

- (void)abort {
}

- (void)flushWithJavaUtilMap:(id<JavaUtilMap>)threadsAndFields
withOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state {
  id<JavaUtilList> allFields = create_JavaUtilArrayList_init();
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((id<JavaUtilMap>) nil_chk(threadsAndFields)) entrySet])) {
    id<JavaUtilCollection> fields = [((id<JavaUtilMap_Entry>) nil_chk(entry_)) getValue];
    for (OrgApacheLuceneIndexTermsHashConsumerPerField * __strong i in nil_chk(fields)) {
      OrgApacheLuceneIndexFreqProxTermsWriterPerField *perField = (OrgApacheLuceneIndexFreqProxTermsWriterPerField *) cast_chk(i, [OrgApacheLuceneIndexFreqProxTermsWriterPerField class]);
      if (((OrgApacheLuceneIndexTermsHashPerField *) nil_chk(((OrgApacheLuceneIndexFreqProxTermsWriterPerField *) nil_chk(perField))->termsHashPerField_))->numPostings_ > 0) [allFields addWithId:perField];
    }
  }
  OrgApacheLuceneUtilCollectionUtil_quickSortWithJavaUtilList_(allFields);
  jint numAllFields = [allFields size];
  OrgApacheLuceneIndexFormatPostingsFieldsConsumer *consumer = create_OrgApacheLuceneIndexFormatPostingsFieldsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFieldInfos_(state, fieldInfos_);
  @try {
    jint start = 0;
    while (start < numAllFields) {
      OrgApacheLuceneIndexFieldInfo *fieldInfo = ((OrgApacheLuceneIndexFreqProxTermsWriterPerField *) nil_chk([allFields getWithInt:start]))->fieldInfo_;
      NSString *fieldName = ((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo))->name_;
      jint end = start + 1;
      while (end < numAllFields && [((NSString *) nil_chk(((OrgApacheLuceneIndexFieldInfo *) nil_chk(((OrgApacheLuceneIndexFreqProxTermsWriterPerField *) nil_chk([allFields getWithInt:end]))->fieldInfo_))->name_)) isEqual:fieldName]) end++;
      IOSObjectArray *fields = [IOSObjectArray arrayWithLength:end - start type:OrgApacheLuceneIndexFreqProxTermsWriterPerField_class_()];
      for (jint i = start; i < end; i++) {
        IOSObjectArray_Set(fields, i - start, [allFields getWithInt:i]);
        if (fieldInfo->indexOptions_ == JreLoadEnum(OrgApacheLuceneIndexFieldInfo_IndexOptions, DOCS_AND_FREQS_AND_POSITIONS)) {
          fieldInfo->storePayloads_ |= ((OrgApacheLuceneIndexFreqProxTermsWriterPerField *) nil_chk(IOSObjectArray_Get(fields, i - start)))->hasPayloads_;
        }
      }
      [self appendPostingsWithNSString:fieldName withOrgApacheLuceneIndexSegmentWriteState:state withOrgApacheLuceneIndexFreqProxTermsWriterPerFieldArray:fields withOrgApacheLuceneIndexFormatPostingsFieldsConsumer:consumer];
      for (jint i = 0; i < fields->size_; i++) {
        OrgApacheLuceneIndexTermsHashPerField *perField = ((OrgApacheLuceneIndexFreqProxTermsWriterPerField *) nil_chk(IOSObjectArray_Get(fields, i)))->termsHashPerField_;
        jint numPostings = ((OrgApacheLuceneIndexTermsHashPerField *) nil_chk(perField))->numPostings_;
        [perField reset];
        [perField shrinkHashWithInt:numPostings];
        [((OrgApacheLuceneIndexFreqProxTermsWriterPerField *) nil_chk(IOSObjectArray_Get(fields, i))) reset];
      }
      start = end;
    }
    for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([threadsAndFields entrySet])) {
      OrgApacheLuceneIndexFreqProxTermsWriterPerThread *perThread = (OrgApacheLuceneIndexFreqProxTermsWriterPerThread *) cast_chk([((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey], [OrgApacheLuceneIndexFreqProxTermsWriterPerThread class]);
      [((OrgApacheLuceneIndexTermsHashPerThread *) nil_chk(((OrgApacheLuceneIndexFreqProxTermsWriterPerThread *) nil_chk(perThread))->termsHashPerThread_)) resetWithBoolean:true];
    }
  }
  @finally {
    [consumer finish];
  }
}

- (void)appendPostingsWithNSString:(NSString *)fieldName
withOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
withOrgApacheLuceneIndexFreqProxTermsWriterPerFieldArray:(IOSObjectArray *)fields
withOrgApacheLuceneIndexFormatPostingsFieldsConsumer:(OrgApacheLuceneIndexFormatPostingsFieldsConsumer *)consumer {
  jint numFields = ((IOSObjectArray *) nil_chk(fields))->size_;
  IOSObjectArray *mergeStates = [IOSObjectArray arrayWithLength:numFields type:OrgApacheLuceneIndexFreqProxFieldMergeState_class_()];
  for (jint i = 0; i < numFields; i++) {
    OrgApacheLuceneIndexFreqProxFieldMergeState *fms = IOSObjectArray_SetAndConsume(mergeStates, i, new_OrgApacheLuceneIndexFreqProxFieldMergeState_initWithOrgApacheLuceneIndexFreqProxTermsWriterPerField_(IOSObjectArray_Get(fields, i)));
    JreAssert(((OrgApacheLuceneIndexFreqProxTermsWriterPerField *) nil_chk(fms->field_))->fieldInfo_ == ((OrgApacheLuceneIndexFreqProxTermsWriterPerField *) nil_chk(IOSObjectArray_Get(fields, 0)))->fieldInfo_, @"org/apache/lucene/index/FreqProxTermsWriter.java:159 condition failed: assert fms.field.fieldInfo == fields[0].fieldInfo;");
    jboolean result = [fms nextTerm];
    JreAssert(result, @"org/apache/lucene/index/FreqProxTermsWriter.java:163 condition failed: assert result;");
  }
  OrgApacheLuceneIndexFormatPostingsTermsConsumer *termsConsumer = [((OrgApacheLuceneIndexFormatPostingsFieldsConsumer *) nil_chk(consumer)) addFieldWithOrgApacheLuceneIndexFieldInfo:((OrgApacheLuceneIndexFreqProxTermsWriterPerField *) nil_chk(IOSObjectArray_Get(fields, 0)))->fieldInfo_];
  OrgApacheLuceneIndexTerm *protoTerm = create_OrgApacheLuceneIndexTerm_initWithNSString_(fieldName);
  IOSObjectArray *termStates = [IOSObjectArray arrayWithLength:numFields type:OrgApacheLuceneIndexFreqProxFieldMergeState_class_()];
  OrgApacheLuceneIndexFieldInfo_IndexOptions *currentFieldIndexOptions = ((OrgApacheLuceneIndexFieldInfo *) nil_chk(((OrgApacheLuceneIndexFreqProxTermsWriterPerField *) nil_chk(IOSObjectArray_Get(fields, 0)))->fieldInfo_))->indexOptions_;
  id<JavaUtilMap> segDeletes;
  if (((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state))->segDeletes_ != nil && [((id<JavaUtilMap>) nil_chk(state->segDeletes_->terms_)) size] > 0) {
    segDeletes = state->segDeletes_->terms_;
  }
  else {
    segDeletes = nil;
  }
  @try {
    while (numFields > 0) {
      IOSObjectArray_Set(termStates, 0, IOSObjectArray_Get(mergeStates, 0));
      jint numToMerge = 1;
      for (jint i = 1; i < numFields; i++) {
        IOSCharArray *text = ((OrgApacheLuceneIndexFreqProxFieldMergeState *) nil_chk(IOSObjectArray_Get(mergeStates, i)))->text_;
        jint textOffset = ((OrgApacheLuceneIndexFreqProxFieldMergeState *) nil_chk(IOSObjectArray_Get(mergeStates, i)))->textOffset_;
        jint cmp = OrgApacheLuceneIndexFreqProxTermsWriter_compareTextWithCharArray_withInt_withCharArray_withInt_(text, textOffset, ((OrgApacheLuceneIndexFreqProxFieldMergeState *) nil_chk(IOSObjectArray_Get(termStates, 0)))->text_, ((OrgApacheLuceneIndexFreqProxFieldMergeState *) nil_chk(IOSObjectArray_Get(termStates, 0)))->textOffset_);
        if (cmp < 0) {
          IOSObjectArray_Set(termStates, 0, IOSObjectArray_Get(mergeStates, i));
          numToMerge = 1;
        }
        else if (cmp == 0) IOSObjectArray_Set(termStates, numToMerge++, IOSObjectArray_Get(mergeStates, i));
      }
      OrgApacheLuceneIndexFormatPostingsDocsConsumer *docConsumer = [((OrgApacheLuceneIndexFormatPostingsTermsConsumer *) nil_chk(termsConsumer)) addTermWithCharArray:((OrgApacheLuceneIndexFreqProxFieldMergeState *) nil_chk(IOSObjectArray_Get(termStates, 0)))->text_ withInt:((OrgApacheLuceneIndexFreqProxFieldMergeState *) nil_chk(IOSObjectArray_Get(termStates, 0)))->textOffset_];
      jint delDocLimit;
      if (segDeletes != nil) {
        JavaLangInteger *docIDUpto = [segDeletes getWithId:[protoTerm createTermWithNSString:[((OrgApacheLuceneIndexFreqProxFieldMergeState *) nil_chk(IOSObjectArray_Get(termStates, 0))) termText]]];
        if (docIDUpto != nil) {
          delDocLimit = [docIDUpto intValue];
        }
        else {
          delDocLimit = 0;
        }
      }
      else {
        delDocLimit = 0;
      }
      @try {
        while (numToMerge > 0) {
          OrgApacheLuceneIndexFreqProxFieldMergeState *minState = IOSObjectArray_Get(termStates, 0);
          for (jint i = 1; i < numToMerge; i++) if (((OrgApacheLuceneIndexFreqProxFieldMergeState *) nil_chk(IOSObjectArray_Get(termStates, i)))->docID_ < ((OrgApacheLuceneIndexFreqProxFieldMergeState *) nil_chk(minState))->docID_) minState = IOSObjectArray_Get(termStates, i);
          jint termDocFreq = ((OrgApacheLuceneIndexFreqProxFieldMergeState *) nil_chk(minState))->termFreq_;
          OrgApacheLuceneIndexFormatPostingsPositionsConsumer *posConsumer = [((OrgApacheLuceneIndexFormatPostingsDocsConsumer *) nil_chk(docConsumer)) addDocWithInt:minState->docID_ withInt:termDocFreq];
          if (minState->docID_ < delDocLimit) {
            if (state->deletedDocs_ == nil) {
              JreStrongAssignAndConsume(&state->deletedDocs_, new_OrgApacheLuceneUtilBitVector_initWithInt_(state->numDocs_));
            }
            [state->deletedDocs_ setWithInt:minState->docID_];
          }
          OrgApacheLuceneIndexByteSliceReader *prox = minState->prox_;
          if (currentFieldIndexOptions == JreLoadEnum(OrgApacheLuceneIndexFieldInfo_IndexOptions, DOCS_AND_FREQS_AND_POSITIONS)) {
            @try {
              jint position = 0;
              for (jint j = 0; j < termDocFreq; j++) {
                jint code = [((OrgApacheLuceneIndexByteSliceReader *) nil_chk(prox)) readVInt];
                position += JreRShift32(code, 1);
                jint payloadLength;
                if ((code & 1) != 0) {
                  payloadLength = [prox readVInt];
                  if (payloadBuffer_ == nil || payloadBuffer_->size_ < payloadLength) JreStrongAssignAndConsume(&payloadBuffer_, [IOSByteArray newArrayWithLength:payloadLength]);
                  [prox readBytesWithByteArray:payloadBuffer_ withInt:0 withInt:payloadLength];
                }
                else payloadLength = 0;
                [((OrgApacheLuceneIndexFormatPostingsPositionsConsumer *) nil_chk(posConsumer)) addPositionWithInt:position withByteArray:payloadBuffer_ withInt:0 withInt:payloadLength];
              }
            }
            @finally {
              [((OrgApacheLuceneIndexFormatPostingsPositionsConsumer *) nil_chk(posConsumer)) finish];
            }
          }
          if (![minState nextDoc]) {
            jint upto = 0;
            for (jint i = 0; i < numToMerge; i++) if (IOSObjectArray_Get(termStates, i) != minState) IOSObjectArray_Set(termStates, upto++, IOSObjectArray_Get(termStates, i));
            numToMerge--;
            JreAssert(upto == numToMerge, @"org/apache/lucene/index/FreqProxTermsWriter.java:298 condition failed: assert upto == numToMerge;");
            if (![minState nextTerm]) {
              upto = 0;
              for (jint i = 0; i < numFields; i++) if (IOSObjectArray_Get(mergeStates, i) != minState) IOSObjectArray_Set(mergeStates, upto++, IOSObjectArray_Get(mergeStates, i));
              numFields--;
              JreAssert(upto == numFields, @"org/apache/lucene/index/FreqProxTermsWriter.java:310 condition failed: assert upto == numFields;");
            }
          }
        }
      }
      @finally {
        [((OrgApacheLuceneIndexFormatPostingsDocsConsumer *) nil_chk(docConsumer)) finish];
      }
    }
  }
  @finally {
    [((OrgApacheLuceneIndexFormatPostingsTermsConsumer *) nil_chk(termsConsumer)) finish];
  }
}

- (void)dealloc {
  RELEASE_(payloadBuffer_);
  RELEASE_(termsUTF8_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermsHashConsumerPerThread;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 6, 7, -1, -1 },
    { NULL, "V", 0x0, 8, 9, 10, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addThreadWithOrgApacheLuceneIndexTermsHashPerThread:);
  methods[2].selector = @selector(compareTextWithCharArray:withInt:withCharArray:withInt:);
  methods[3].selector = @selector(abort);
  methods[4].selector = @selector(flushWithJavaUtilMap:withOrgApacheLuceneIndexSegmentWriteState:);
  methods[5].selector = @selector(appendPostingsWithNSString:withOrgApacheLuceneIndexSegmentWriteState:withOrgApacheLuceneIndexFreqProxTermsWriterPerFieldArray:withOrgApacheLuceneIndexFormatPostingsFieldsConsumer:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "payloadBuffer_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "termsUTF8_", "LOrgApacheLuceneUtilUnicodeUtil_UTF8Result;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "addThread", "LOrgApacheLuceneIndexTermsHashPerThread;", "compareText", "[CI[CI", "flush", "LJavaUtilMap;LOrgApacheLuceneIndexSegmentWriteState;", "LJavaIoIOException;", "(Ljava/util/Map<Lorg/apache/lucene/index/TermsHashConsumerPerThread;Ljava/util/Collection<Lorg/apache/lucene/index/TermsHashConsumerPerField;>;>;Lorg/apache/lucene/index/SegmentWriteState;)V", "appendPostings", "LNSString;LOrgApacheLuceneIndexSegmentWriteState;[LOrgApacheLuceneIndexFreqProxTermsWriterPerField;LOrgApacheLuceneIndexFormatPostingsFieldsConsumer;", "LOrgApacheLuceneIndexCorruptIndexException;LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFreqProxTermsWriter = { "FreqProxTermsWriter", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 6, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexFreqProxTermsWriter;
}

@end

void OrgApacheLuceneIndexFreqProxTermsWriter_init(OrgApacheLuceneIndexFreqProxTermsWriter *self) {
  OrgApacheLuceneIndexTermsHashConsumer_init(self);
  JreStrongAssignAndConsume(&self->termsUTF8_, new_OrgApacheLuceneUtilUnicodeUtil_UTF8Result_init());
}

OrgApacheLuceneIndexFreqProxTermsWriter *new_OrgApacheLuceneIndexFreqProxTermsWriter_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFreqProxTermsWriter, init)
}

OrgApacheLuceneIndexFreqProxTermsWriter *create_OrgApacheLuceneIndexFreqProxTermsWriter_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFreqProxTermsWriter, init)
}

jint OrgApacheLuceneIndexFreqProxTermsWriter_compareTextWithCharArray_withInt_withCharArray_withInt_(IOSCharArray *text1, jint pos1, IOSCharArray *text2, jint pos2) {
  OrgApacheLuceneIndexFreqProxTermsWriter_initialize();
  while (true) {
    jchar c1 = IOSCharArray_Get(nil_chk(text1), pos1++);
    jchar c2 = IOSCharArray_Get(nil_chk(text2), pos2++);
    if (c1 != c2) {
      if ((jint) 0xffff == c2) return 1;
      else if ((jint) 0xffff == c1) return -1;
      else return c1 - c2;
    }
    else if ((jint) 0xffff == c1) return 0;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFreqProxTermsWriter)
