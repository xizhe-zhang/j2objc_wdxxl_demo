//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/FieldsWriter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/List.h"
#include "org/apache/lucene/document/Document.h"
#include "org/apache/lucene/document/Fieldable.h"
#include "org/apache/lucene/document/NumericField.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/FieldsWriter.h"
#include "org/apache/lucene/index/IndexFileNames.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/store/RAMOutputStream.h"
#include "org/apache/lucene/util/IOUtils.h"

@interface OrgApacheLuceneIndexFieldsWriter () {
 @public
  OrgApacheLuceneIndexFieldInfos *fieldInfos_;
  OrgApacheLuceneStoreDirectory *directory_;
  NSString *segment_;
  OrgApacheLuceneStoreIndexOutput *fieldsStream_;
  OrgApacheLuceneStoreIndexOutput *indexStream_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldsWriter, fieldInfos_, OrgApacheLuceneIndexFieldInfos *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldsWriter, directory_, OrgApacheLuceneStoreDirectory *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldsWriter, segment_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldsWriter, fieldsStream_, OrgApacheLuceneStoreIndexOutput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldsWriter, indexStream_, OrgApacheLuceneStoreIndexOutput *)

inline jint OrgApacheLuceneIndexFieldsWriter_get__NUMERIC_BIT_SHIFT(void);
#define OrgApacheLuceneIndexFieldsWriter__NUMERIC_BIT_SHIFT 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexFieldsWriter, _NUMERIC_BIT_SHIFT, jint)

__attribute__((unused)) static void OrgApacheLuceneIndexFieldsWriter_writeFieldWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneDocumentFieldable_(OrgApacheLuceneIndexFieldsWriter *self, OrgApacheLuceneIndexFieldInfo *fi, id<OrgApacheLuceneDocumentFieldable> field);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneIndexFieldsWriter__Annotations$0(void);

@implementation OrgApacheLuceneIndexFieldsWriter

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                         withNSString:(NSString *)segment
                   withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fn {
  OrgApacheLuceneIndexFieldsWriter_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_(self, directory, segment, fn);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)fdx
                    withOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)fdt
                     withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fn {
  OrgApacheLuceneIndexFieldsWriter_initWithOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneIndexFieldInfos_(self, fdx, fdt, fn);
  return self;
}

- (void)setFieldsStreamWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)stream {
  self->fieldsStream_ = stream;
}

- (void)flushDocumentWithInt:(jint)numStoredFields
withOrgApacheLuceneStoreRAMOutputStream:(OrgApacheLuceneStoreRAMOutputStream *)buffer {
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(indexStream_)) writeLongWithLong:[((OrgApacheLuceneStoreIndexOutput *) nil_chk(fieldsStream_)) getFilePointer]];
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(fieldsStream_)) writeVIntWithInt:numStoredFields];
  [((OrgApacheLuceneStoreRAMOutputStream *) nil_chk(buffer)) writeToWithOrgApacheLuceneStoreIndexOutput:fieldsStream_];
}

- (void)skipDocument {
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(indexStream_)) writeLongWithLong:[((OrgApacheLuceneStoreIndexOutput *) nil_chk(fieldsStream_)) getFilePointer]];
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(fieldsStream_)) writeVIntWithInt:0];
}

- (void)close {
  if (directory_ != nil) {
    @try {
      OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray newArrayWithObjects:(id[]){ fieldsStream_, indexStream_ } count:2 type:JavaIoCloseable_class_()]);
    }
    @finally {
      fieldsStream_ = indexStream_ = nil;
    }
  }
}

- (void)abort {
  if (directory_ != nil) {
    @try {
      [self close];
    }
    @catch (JavaIoIOException *ignored) {
    }
    @try {
      [((OrgApacheLuceneStoreDirectory *) nil_chk(directory_)) deleteFileWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_(segment_, OrgApacheLuceneIndexIndexFileNames_FIELDS_EXTENSION)];
    }
    @catch (JavaIoIOException *ignored) {
    }
    @try {
      [((OrgApacheLuceneStoreDirectory *) nil_chk(directory_)) deleteFileWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_(segment_, OrgApacheLuceneIndexIndexFileNames_FIELDS_INDEX_EXTENSION)];
    }
    @catch (JavaIoIOException *ignored) {
    }
  }
}

- (void)writeFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fi
               withOrgApacheLuceneDocumentFieldable:(id<OrgApacheLuceneDocumentFieldable>)field {
  OrgApacheLuceneIndexFieldsWriter_writeFieldWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneDocumentFieldable_(self, fi, field);
}

- (void)addRawDocumentsWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)stream
                                             withIntArray:(IOSIntArray *)lengths
                                                  withInt:(jint)numDocs {
  jlong position = [((OrgApacheLuceneStoreIndexOutput *) nil_chk(fieldsStream_)) getFilePointer];
  jlong start = position;
  for (jint i = 0; i < numDocs; i++) {
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(indexStream_)) writeLongWithLong:position];
    position += IOSIntArray_Get(nil_chk(lengths), i);
  }
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(fieldsStream_)) copyBytesWithOrgApacheLuceneStoreDataInput:stream withLong:position - start];
  JreAssert([((OrgApacheLuceneStoreIndexOutput *) nil_chk(fieldsStream_)) getFilePointer] == position, @"org/apache/lucene/index/FieldsWriter.java:217 condition failed: assert fieldsStream.getFilePointer() == position;");
}

- (void)addDocumentWithOrgApacheLuceneDocumentDocument:(OrgApacheLuceneDocumentDocument *)doc {
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(indexStream_)) writeLongWithLong:[((OrgApacheLuceneStoreIndexOutput *) nil_chk(fieldsStream_)) getFilePointer]];
  jint storedCount = 0;
  id<JavaUtilList> fields = [((OrgApacheLuceneDocumentDocument *) nil_chk(doc)) getFields];
  for (id<OrgApacheLuceneDocumentFieldable> __strong field in nil_chk(fields)) {
    if ([((id<OrgApacheLuceneDocumentFieldable>) nil_chk(field)) isStored]) storedCount++;
  }
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(fieldsStream_)) writeVIntWithInt:storedCount];
  for (id<OrgApacheLuceneDocumentFieldable> __strong field in fields) {
    if ([((id<OrgApacheLuceneDocumentFieldable>) nil_chk(field)) isStored]) OrgApacheLuceneIndexFieldsWriter_writeFieldWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneDocumentFieldable_(self, [((OrgApacheLuceneIndexFieldInfos *) nil_chk(fieldInfos_)) fieldInfoWithNSString:[field name]], field);
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, 1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 5, 6, 1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x10, 7, 8, 1, -1, -1, -1 },
    { NULL, "V", 0x10, 9, 10, 1, -1, -1, -1 },
    { NULL, "V", 0x10, 11, 12, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneStoreDirectory:withNSString:withOrgApacheLuceneIndexFieldInfos:);
  methods[1].selector = @selector(initWithOrgApacheLuceneStoreIndexOutput:withOrgApacheLuceneStoreIndexOutput:withOrgApacheLuceneIndexFieldInfos:);
  methods[2].selector = @selector(setFieldsStreamWithOrgApacheLuceneStoreIndexOutput:);
  methods[3].selector = @selector(flushDocumentWithInt:withOrgApacheLuceneStoreRAMOutputStream:);
  methods[4].selector = @selector(skipDocument);
  methods[5].selector = @selector(close);
  methods[6].selector = @selector(abort);
  methods[7].selector = @selector(writeFieldWithOrgApacheLuceneIndexFieldInfo:withOrgApacheLuceneDocumentFieldable:);
  methods[8].selector = @selector(addRawDocumentsWithOrgApacheLuceneStoreIndexInput:withIntArray:withInt:);
  methods[9].selector = @selector(addDocumentWithOrgApacheLuceneDocumentDocument:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "FIELD_IS_TOKENIZED", "I", .constantValue.asInt = OrgApacheLuceneIndexFieldsWriter_FIELD_IS_TOKENIZED, 0x18, -1, -1, -1, -1 },
    { "FIELD_IS_BINARY", "I", .constantValue.asInt = OrgApacheLuceneIndexFieldsWriter_FIELD_IS_BINARY, 0x18, -1, -1, -1, -1 },
    { "FIELD_IS_COMPRESSED", "I", .constantValue.asInt = OrgApacheLuceneIndexFieldsWriter_FIELD_IS_COMPRESSED, 0x18, -1, -1, -1, 13 },
    { "_NUMERIC_BIT_SHIFT", "I", .constantValue.asInt = OrgApacheLuceneIndexFieldsWriter__NUMERIC_BIT_SHIFT, 0x1a, -1, -1, -1, -1 },
    { "FIELD_IS_NUMERIC_MASK", "I", .constantValue.asInt = OrgApacheLuceneIndexFieldsWriter_FIELD_IS_NUMERIC_MASK, 0x18, -1, -1, -1, -1 },
    { "FIELD_IS_NUMERIC_INT", "I", .constantValue.asInt = OrgApacheLuceneIndexFieldsWriter_FIELD_IS_NUMERIC_INT, 0x18, -1, -1, -1, -1 },
    { "FIELD_IS_NUMERIC_LONG", "I", .constantValue.asInt = OrgApacheLuceneIndexFieldsWriter_FIELD_IS_NUMERIC_LONG, 0x18, -1, -1, -1, -1 },
    { "FIELD_IS_NUMERIC_FLOAT", "I", .constantValue.asInt = OrgApacheLuceneIndexFieldsWriter_FIELD_IS_NUMERIC_FLOAT, 0x18, -1, -1, -1, -1 },
    { "FIELD_IS_NUMERIC_DOUBLE", "I", .constantValue.asInt = OrgApacheLuceneIndexFieldsWriter_FIELD_IS_NUMERIC_DOUBLE, 0x18, -1, -1, -1, -1 },
    { "FORMAT", "I", .constantValue.asInt = OrgApacheLuceneIndexFieldsWriter_FORMAT, 0x18, -1, -1, -1, -1 },
    { "FORMAT_VERSION_UTF8_LENGTH_IN_BYTES", "I", .constantValue.asInt = OrgApacheLuceneIndexFieldsWriter_FORMAT_VERSION_UTF8_LENGTH_IN_BYTES, 0x18, -1, -1, -1, -1 },
    { "FORMAT_LUCENE_3_0_NO_COMPRESSED_FIELDS", "I", .constantValue.asInt = OrgApacheLuceneIndexFieldsWriter_FORMAT_LUCENE_3_0_NO_COMPRESSED_FIELDS, 0x18, -1, -1, -1, -1 },
    { "FORMAT_LUCENE_3_2_NUMERIC_FIELDS", "I", .constantValue.asInt = OrgApacheLuceneIndexFieldsWriter_FORMAT_LUCENE_3_2_NUMERIC_FIELDS, 0x18, -1, -1, -1, -1 },
    { "FORMAT_CURRENT", "I", .constantValue.asInt = OrgApacheLuceneIndexFieldsWriter_FORMAT_CURRENT, 0x18, -1, -1, -1, -1 },
    { "fieldInfos_", "LOrgApacheLuceneIndexFieldInfos;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "directory_", "LOrgApacheLuceneStoreDirectory;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "segment_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "fieldsStream_", "LOrgApacheLuceneStoreIndexOutput;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "indexStream_", "LOrgApacheLuceneStoreIndexOutput;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneStoreDirectory;LNSString;LOrgApacheLuceneIndexFieldInfos;", "LJavaIoIOException;", "LOrgApacheLuceneStoreIndexOutput;LOrgApacheLuceneStoreIndexOutput;LOrgApacheLuceneIndexFieldInfos;", "setFieldsStream", "LOrgApacheLuceneStoreIndexOutput;", "flushDocument", "ILOrgApacheLuceneStoreRAMOutputStream;", "writeField", "LOrgApacheLuceneIndexFieldInfo;LOrgApacheLuceneDocumentFieldable;", "addRawDocuments", "LOrgApacheLuceneStoreIndexInput;[II", "addDocument", "LOrgApacheLuceneDocumentDocument;", (void *)&OrgApacheLuceneIndexFieldsWriter__Annotations$0 };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFieldsWriter = { "FieldsWriter", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 10, 19, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexFieldsWriter;
}

@end

void OrgApacheLuceneIndexFieldsWriter_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneIndexFieldsWriter *self, OrgApacheLuceneStoreDirectory *directory, NSString *segment, OrgApacheLuceneIndexFieldInfos *fn) {
  NSObject_init(self);
  self->directory_ = directory;
  self->segment_ = segment;
  self->fieldInfos_ = fn;
  jboolean success = false;
  @try {
    self->fieldsStream_ = [((OrgApacheLuceneStoreDirectory *) nil_chk(directory)) createOutputWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_(segment, OrgApacheLuceneIndexIndexFileNames_FIELDS_EXTENSION)];
    self->indexStream_ = [directory createOutputWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_(segment, OrgApacheLuceneIndexIndexFileNames_FIELDS_INDEX_EXTENSION)];
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->fieldsStream_)) writeIntWithInt:OrgApacheLuceneIndexFieldsWriter_FORMAT_CURRENT];
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->indexStream_)) writeIntWithInt:OrgApacheLuceneIndexFieldsWriter_FORMAT_CURRENT];
    success = true;
  }
  @finally {
    if (!success) {
      [self abort];
    }
  }
}

OrgApacheLuceneIndexFieldsWriter *new_OrgApacheLuceneIndexFieldsWriter_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneStoreDirectory *directory, NSString *segment, OrgApacheLuceneIndexFieldInfos *fn) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFieldsWriter, initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_, directory, segment, fn)
}

OrgApacheLuceneIndexFieldsWriter *create_OrgApacheLuceneIndexFieldsWriter_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneStoreDirectory *directory, NSString *segment, OrgApacheLuceneIndexFieldInfos *fn) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFieldsWriter, initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_, directory, segment, fn)
}

void OrgApacheLuceneIndexFieldsWriter_initWithOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneIndexFieldsWriter *self, OrgApacheLuceneStoreIndexOutput *fdx, OrgApacheLuceneStoreIndexOutput *fdt, OrgApacheLuceneIndexFieldInfos *fn) {
  NSObject_init(self);
  self->directory_ = nil;
  self->segment_ = nil;
  self->fieldInfos_ = fn;
  self->fieldsStream_ = fdt;
  self->indexStream_ = fdx;
}

OrgApacheLuceneIndexFieldsWriter *new_OrgApacheLuceneIndexFieldsWriter_initWithOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneStoreIndexOutput *fdx, OrgApacheLuceneStoreIndexOutput *fdt, OrgApacheLuceneIndexFieldInfos *fn) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFieldsWriter, initWithOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneIndexFieldInfos_, fdx, fdt, fn)
}

OrgApacheLuceneIndexFieldsWriter *create_OrgApacheLuceneIndexFieldsWriter_initWithOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneStoreIndexOutput *fdx, OrgApacheLuceneStoreIndexOutput *fdt, OrgApacheLuceneIndexFieldInfos *fn) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFieldsWriter, initWithOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneIndexFieldInfos_, fdx, fdt, fn)
}

void OrgApacheLuceneIndexFieldsWriter_writeFieldWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneDocumentFieldable_(OrgApacheLuceneIndexFieldsWriter *self, OrgApacheLuceneIndexFieldInfo *fi, id<OrgApacheLuceneDocumentFieldable> field) {
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->fieldsStream_)) writeVIntWithInt:((OrgApacheLuceneIndexFieldInfo *) nil_chk(fi))->number_];
  jint bits = 0;
  if ([((id<OrgApacheLuceneDocumentFieldable>) nil_chk(field)) isTokenized]) bits |= OrgApacheLuceneIndexFieldsWriter_FIELD_IS_TOKENIZED;
  if ([field isBinary]) bits |= OrgApacheLuceneIndexFieldsWriter_FIELD_IS_BINARY;
  if ([field isKindOfClass:[OrgApacheLuceneDocumentNumericField class]]) {
    switch ([[((OrgApacheLuceneDocumentNumericField *) cast_chk(field, [OrgApacheLuceneDocumentNumericField class])) getDataType] ordinal]) {
      case OrgApacheLuceneDocumentNumericField_DataType_Enum_INT:
      bits |= OrgApacheLuceneIndexFieldsWriter_FIELD_IS_NUMERIC_INT;
      break;
      case OrgApacheLuceneDocumentNumericField_DataType_Enum_LONG:
      bits |= OrgApacheLuceneIndexFieldsWriter_FIELD_IS_NUMERIC_LONG;
      break;
      case OrgApacheLuceneDocumentNumericField_DataType_Enum_FLOAT:
      bits |= OrgApacheLuceneIndexFieldsWriter_FIELD_IS_NUMERIC_FLOAT;
      break;
      case OrgApacheLuceneDocumentNumericField_DataType_Enum_DOUBLE:
      bits |= OrgApacheLuceneIndexFieldsWriter_FIELD_IS_NUMERIC_DOUBLE;
      break;
      default:
      JreAssert(false, @"Should never get here");
    }
  }
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->fieldsStream_)) writeByteWithByte:(jbyte) bits];
  if ([field isBinary]) {
    IOSByteArray *data;
    jint len;
    jint offset;
    data = [field getBinaryValue];
    len = [field getBinaryLength];
    offset = [field getBinaryOffset];
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->fieldsStream_)) writeVIntWithInt:len];
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->fieldsStream_)) writeBytesWithByteArray:data withInt:offset withInt:len];
  }
  else if ([field isKindOfClass:[OrgApacheLuceneDocumentNumericField class]]) {
    OrgApacheLuceneDocumentNumericField *nf = (OrgApacheLuceneDocumentNumericField *) cast_chk(field, [OrgApacheLuceneDocumentNumericField class]);
    NSNumber *n = [nf getNumericValue];
    switch ([[nf getDataType] ordinal]) {
      case OrgApacheLuceneDocumentNumericField_DataType_Enum_INT:
      [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->fieldsStream_)) writeIntWithInt:[((NSNumber *) nil_chk(n)) intValue]];
      break;
      case OrgApacheLuceneDocumentNumericField_DataType_Enum_LONG:
      [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->fieldsStream_)) writeLongWithLong:[((NSNumber *) nil_chk(n)) longLongValue]];
      break;
      case OrgApacheLuceneDocumentNumericField_DataType_Enum_FLOAT:
      [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->fieldsStream_)) writeIntWithInt:JavaLangFloat_floatToIntBitsWithFloat_([((NSNumber *) nil_chk(n)) floatValue])];
      break;
      case OrgApacheLuceneDocumentNumericField_DataType_Enum_DOUBLE:
      [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->fieldsStream_)) writeLongWithLong:JavaLangDouble_doubleToLongBitsWithDouble_([((NSNumber *) nil_chk(n)) doubleValue])];
      break;
      default:
      JreAssert(false, @"Should never get here");
    }
  }
  else {
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->fieldsStream_)) writeStringWithNSString:[field stringValue]];
  }
}

IOSObjectArray *OrgApacheLuceneIndexFieldsWriter__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFieldsWriter)
