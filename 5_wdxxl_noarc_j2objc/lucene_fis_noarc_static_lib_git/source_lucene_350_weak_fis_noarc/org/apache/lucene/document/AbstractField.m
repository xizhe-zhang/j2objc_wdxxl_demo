//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/document/AbstractField.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/document/AbstractField.h"
#include "org/apache/lucene/document/Field.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/util/StringHelper.h"

#pragma clang diagnostic ignored "-Wprotocol"

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneDocumentAbstractField__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneDocumentAbstractField__Annotations$1(void);

@implementation OrgApacheLuceneDocumentAbstractField

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneDocumentAbstractField_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)name
withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)store
withOrgApacheLuceneDocumentField_Index:(OrgApacheLuceneDocumentField_Index *)index
withOrgApacheLuceneDocumentField_TermVector:(OrgApacheLuceneDocumentField_TermVector *)termVector {
  OrgApacheLuceneDocumentAbstractField_initWithNSString_withOrgApacheLuceneDocumentField_Store_withOrgApacheLuceneDocumentField_Index_withOrgApacheLuceneDocumentField_TermVector_(self, name, store, index, termVector);
  return self;
}

- (void)setBoostWithFloat:(jfloat)boost {
  self->boost_ = boost;
}

- (jfloat)getBoost {
  return boost_;
}

- (NSString *)name {
  return name_;
}

- (void)setStoreTermVectorWithOrgApacheLuceneDocumentField_TermVector:(OrgApacheLuceneDocumentField_TermVector *)termVector {
  self->storeTermVector_ = [((OrgApacheLuceneDocumentField_TermVector *) nil_chk(termVector)) isStored];
  self->storePositionWithTermVector_ = [termVector withPositions];
  self->storeOffsetWithTermVector_ = [termVector withOffsets];
}

- (jboolean)isStored {
  return isStored_;
}

- (jboolean)isIndexed {
  return isIndexed_;
}

- (jboolean)isTokenized {
  return isTokenized_;
}

- (jboolean)isTermVectorStored {
  return storeTermVector_;
}

- (jboolean)isStoreOffsetWithTermVector {
  return storeOffsetWithTermVector_;
}

- (jboolean)isStorePositionWithTermVector {
  return storePositionWithTermVector_;
}

- (jboolean)isBinary {
  return isBinary_;
}

- (IOSByteArray *)getBinaryValue {
  return [self getBinaryValueWithByteArray:nil];
}

- (IOSByteArray *)getBinaryValueWithByteArray:(IOSByteArray *)result {
  if (isBinary_ || [fieldsData_ isKindOfClass:[IOSByteArray class]]) return (IOSByteArray *) cast_chk(fieldsData_, [IOSByteArray class]);
  else return nil;
}

- (jint)getBinaryLength {
  if (isBinary_) {
    return binaryLength_;
  }
  else if ([fieldsData_ isKindOfClass:[IOSByteArray class]]) return ((IOSByteArray *) nil_chk(((IOSByteArray *) cast_chk(fieldsData_, [IOSByteArray class]))))->size_;
  else return 0;
}

- (jint)getBinaryOffset {
  return binaryOffset_;
}

- (jboolean)getOmitNorms {
  return omitNorms_;
}

- (jboolean)getOmitTermFreqAndPositions {
  return indexOptions_ == JreLoadEnum(OrgApacheLuceneIndexFieldInfo_IndexOptions, DOCS_ONLY);
}

- (OrgApacheLuceneIndexFieldInfo_IndexOptions *)getIndexOptions {
  return indexOptions_;
}

- (void)setOmitNormsWithBoolean:(jboolean)omitNorms {
  self->omitNorms_ = omitNorms;
}

- (void)setOmitTermFreqAndPositionsWithBoolean:(jboolean)omitTermFreqAndPositions {
  if (omitTermFreqAndPositions) {
    JreStrongAssign(&indexOptions_, JreLoadEnum(OrgApacheLuceneIndexFieldInfo_IndexOptions, DOCS_ONLY));
  }
  else {
    JreStrongAssign(&indexOptions_, JreLoadEnum(OrgApacheLuceneIndexFieldInfo_IndexOptions, DOCS_AND_FREQS_AND_POSITIONS));
  }
}

- (void)setIndexOptionsWithOrgApacheLuceneIndexFieldInfo_IndexOptions:(OrgApacheLuceneIndexFieldInfo_IndexOptions *)indexOptions {
  JreStrongAssign(&self->indexOptions_, indexOptions);
}

- (jboolean)isLazy {
  return lazy_;
}

- (NSString *)description {
  JavaLangStringBuilder *result = create_JavaLangStringBuilder_init();
  if (isStored_) {
    [result appendWithNSString:@"stored"];
  }
  if (isIndexed_) {
    if ([result java_length] > 0) [result appendWithNSString:@","];
    [result appendWithNSString:@"indexed"];
  }
  if (isTokenized_) {
    if ([result java_length] > 0) [result appendWithNSString:@","];
    [result appendWithNSString:@"tokenized"];
  }
  if (storeTermVector_) {
    if ([result java_length] > 0) [result appendWithNSString:@","];
    [result appendWithNSString:@"termVector"];
  }
  if (storeOffsetWithTermVector_) {
    if ([result java_length] > 0) [result appendWithNSString:@","];
    [result appendWithNSString:@"termVectorOffsets"];
  }
  if (storePositionWithTermVector_) {
    if ([result java_length] > 0) [result appendWithNSString:@","];
    [result appendWithNSString:@"termVectorPosition"];
  }
  if (isBinary_) {
    if ([result java_length] > 0) [result appendWithNSString:@","];
    [result appendWithNSString:@"binary"];
  }
  if (omitNorms_) {
    [result appendWithNSString:@",omitNorms"];
  }
  if (indexOptions_ != JreLoadEnum(OrgApacheLuceneIndexFieldInfo_IndexOptions, DOCS_AND_FREQS_AND_POSITIONS)) {
    [result appendWithNSString:@",indexOptions="];
    [result appendWithId:indexOptions_];
  }
  if (lazy_) {
    [result appendWithNSString:@",lazy"];
  }
  [result appendWithChar:'<'];
  [result appendWithNSString:name_];
  [result appendWithChar:':'];
  if (fieldsData_ != nil && lazy_ == false) {
    [result appendWithId:fieldsData_];
  }
  [result appendWithChar:'>'];
  return [result description];
}

- (void)dealloc {
  RELEASE_(name_);
  RELEASE_(indexOptions_);
  RELEASE_(fieldsData_);
  RELEASE_(tokenStream_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 3, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, 7, -1 },
    { NULL, "LOrgApacheLuceneIndexFieldInfo_IndexOptions;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 9, -1, -1, 11, -1 },
    { NULL, "V", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x11, 14, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:withOrgApacheLuceneDocumentField_Store:withOrgApacheLuceneDocumentField_Index:withOrgApacheLuceneDocumentField_TermVector:);
  methods[2].selector = @selector(setBoostWithFloat:);
  methods[3].selector = @selector(getBoost);
  methods[4].selector = @selector(name);
  methods[5].selector = @selector(setStoreTermVectorWithOrgApacheLuceneDocumentField_TermVector:);
  methods[6].selector = @selector(isStored);
  methods[7].selector = @selector(isIndexed);
  methods[8].selector = @selector(isTokenized);
  methods[9].selector = @selector(isTermVectorStored);
  methods[10].selector = @selector(isStoreOffsetWithTermVector);
  methods[11].selector = @selector(isStorePositionWithTermVector);
  methods[12].selector = @selector(isBinary);
  methods[13].selector = @selector(getBinaryValue);
  methods[14].selector = @selector(getBinaryValueWithByteArray:);
  methods[15].selector = @selector(getBinaryLength);
  methods[16].selector = @selector(getBinaryOffset);
  methods[17].selector = @selector(getOmitNorms);
  methods[18].selector = @selector(getOmitTermFreqAndPositions);
  methods[19].selector = @selector(getIndexOptions);
  methods[20].selector = @selector(setOmitNormsWithBoolean:);
  methods[21].selector = @selector(setOmitTermFreqAndPositionsWithBoolean:);
  methods[22].selector = @selector(setIndexOptionsWithOrgApacheLuceneIndexFieldInfo_IndexOptions:);
  methods[23].selector = @selector(isLazy);
  methods[24].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "storeTermVector_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "storeOffsetWithTermVector_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "storePositionWithTermVector_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "omitNorms_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "isStored_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "isIndexed_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "isTokenized_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "isBinary_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "lazy_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "indexOptions_", "LOrgApacheLuceneIndexFieldInfo_IndexOptions;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "boost_", "F", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "fieldsData_", "LNSObject;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "tokenStream_", "LOrgApacheLuceneAnalysisTokenStream;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "binaryLength_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "binaryOffset_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LOrgApacheLuceneDocumentField_Store;LOrgApacheLuceneDocumentField_Index;LOrgApacheLuceneDocumentField_TermVector;", "setBoost", "F", "setStoreTermVector", "LOrgApacheLuceneDocumentField_TermVector;", "getBinaryValue", "[B", (void *)&OrgApacheLuceneDocumentAbstractField__Annotations$0, "setOmitNorms", "Z", "setOmitTermFreqAndPositions", (void *)&OrgApacheLuceneDocumentAbstractField__Annotations$1, "setIndexOptions", "LOrgApacheLuceneIndexFieldInfo_IndexOptions;", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentAbstractField = { "AbstractField", "org.apache.lucene.document", ptrTable, methods, fields, 7, 0x401, 25, 16, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneDocumentAbstractField;
}

@end

void OrgApacheLuceneDocumentAbstractField_init(OrgApacheLuceneDocumentAbstractField *self) {
  NSObject_init(self);
  JreStrongAssign(&self->name_, @"body");
  self->storeTermVector_ = false;
  self->storeOffsetWithTermVector_ = false;
  self->storePositionWithTermVector_ = false;
  self->omitNorms_ = false;
  self->isStored_ = false;
  self->isIndexed_ = true;
  self->isTokenized_ = true;
  self->isBinary_ = false;
  self->lazy_ = false;
  JreStrongAssign(&self->indexOptions_, JreLoadEnum(OrgApacheLuceneIndexFieldInfo_IndexOptions, DOCS_AND_FREQS_AND_POSITIONS));
  self->boost_ = 1.0f;
  JreStrongAssign(&self->fieldsData_, nil);
}

void OrgApacheLuceneDocumentAbstractField_initWithNSString_withOrgApacheLuceneDocumentField_Store_withOrgApacheLuceneDocumentField_Index_withOrgApacheLuceneDocumentField_TermVector_(OrgApacheLuceneDocumentAbstractField *self, NSString *name, OrgApacheLuceneDocumentField_Store *store, OrgApacheLuceneDocumentField_Index *index, OrgApacheLuceneDocumentField_TermVector *termVector) {
  NSObject_init(self);
  JreStrongAssign(&self->name_, @"body");
  self->storeTermVector_ = false;
  self->storeOffsetWithTermVector_ = false;
  self->storePositionWithTermVector_ = false;
  self->omitNorms_ = false;
  self->isStored_ = false;
  self->isIndexed_ = true;
  self->isTokenized_ = true;
  self->isBinary_ = false;
  self->lazy_ = false;
  JreStrongAssign(&self->indexOptions_, JreLoadEnum(OrgApacheLuceneIndexFieldInfo_IndexOptions, DOCS_AND_FREQS_AND_POSITIONS));
  self->boost_ = 1.0f;
  JreStrongAssign(&self->fieldsData_, nil);
  if (name == nil) @throw create_JavaLangNullPointerException_initWithNSString_(@"name cannot be null");
  JreStrongAssign(&self->name_, OrgApacheLuceneUtilStringHelper_internWithNSString_(name));
  self->isStored_ = [((OrgApacheLuceneDocumentField_Store *) nil_chk(store)) isStored];
  self->isIndexed_ = [((OrgApacheLuceneDocumentField_Index *) nil_chk(index)) isIndexed];
  self->isTokenized_ = [index isAnalyzed];
  self->omitNorms_ = [index omitNorms];
  self->isBinary_ = false;
  [self setStoreTermVectorWithOrgApacheLuceneDocumentField_TermVector:termVector];
}

IOSObjectArray *OrgApacheLuceneDocumentAbstractField__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneDocumentAbstractField__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentAbstractField)
