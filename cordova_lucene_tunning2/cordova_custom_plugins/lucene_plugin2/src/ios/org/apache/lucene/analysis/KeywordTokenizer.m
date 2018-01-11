//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/KeywordTokenizer.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "org/apache/lucene/analysis/KeywordTokenizer.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisKeywordTokenizer () {
 @public
  jboolean done_;
  jint finalOffset_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisKeywordTokenizer, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisKeywordTokenizer, offsetAtt_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)

inline jint OrgApacheLuceneAnalysisKeywordTokenizer_get_DEFAULT_BUFFER_SIZE(void);
#define OrgApacheLuceneAnalysisKeywordTokenizer_DEFAULT_BUFFER_SIZE 256
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisKeywordTokenizer, DEFAULT_BUFFER_SIZE, jint)

@implementation OrgApacheLuceneAnalysisKeywordTokenizer

- (instancetype)initWithJavaIoReader:(JavaIoReader *)input {
  OrgApacheLuceneAnalysisKeywordTokenizer_initWithJavaIoReader_(self, input);
  return self;
}

- (instancetype)initWithJavaIoReader:(JavaIoReader *)input
                             withInt:(jint)bufferSize {
  OrgApacheLuceneAnalysisKeywordTokenizer_initWithJavaIoReader_withInt_(self, input, bufferSize);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source
                                          withJavaIoReader:(JavaIoReader *)input
                                                   withInt:(jint)bufferSize {
  OrgApacheLuceneAnalysisKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_withInt_(self, source, input, bufferSize);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)factory
                                                           withJavaIoReader:(JavaIoReader *)input
                                                                    withInt:(jint)bufferSize {
  OrgApacheLuceneAnalysisKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_withInt_(self, factory, input, bufferSize);
  return self;
}

- (jboolean)incrementToken {
  if (!done_) {
    [self clearAttributes];
    done_ = true;
    jint upto = 0;
    IOSCharArray *buffer = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer];
    while (true) {
      jint length = [((JavaIoReader *) nil_chk(input_)) readWithCharArray:buffer withInt:upto withInt:((IOSCharArray *) nil_chk(buffer))->size_ - upto];
      if (length == -1) break;
      upto += length;
      if (upto == buffer->size_) buffer = [termAtt_ resizeBufferWithInt:1 + buffer->size_];
    }
    (void) [termAtt_ setLengthWithInt:upto];
    finalOffset_ = [self correctOffsetWithInt:upto];
    [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:[self correctOffsetWithInt:0] withInt:finalOffset_];
    return true;
  }
  return false;
}

- (void)end {
  [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:finalOffset_ withInt:finalOffset_];
}

- (void)resetWithJavaIoReader:(JavaIoReader *)input {
  [super resetWithJavaIoReader:input];
  self->done_ = false;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, 4, -1, -1, -1 },
    { NULL, "V", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 0, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaIoReader:);
  methods[1].selector = @selector(initWithJavaIoReader:withInt:);
  methods[2].selector = @selector(initWithOrgApacheLuceneUtilAttributeSource:withJavaIoReader:withInt:);
  methods[3].selector = @selector(initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:withJavaIoReader:withInt:);
  methods[4].selector = @selector(incrementToken);
  methods[5].selector = @selector(end);
  methods[6].selector = @selector(resetWithJavaIoReader:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_BUFFER_SIZE", "I", .constantValue.asInt = OrgApacheLuceneAnalysisKeywordTokenizer_DEFAULT_BUFFER_SIZE, 0x1a, -1, -1, -1, -1 },
    { "done_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "finalOffset_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "offsetAtt_", "LOrgApacheLuceneAnalysisTokenattributesOffsetAttribute;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaIoReader;", "LJavaIoReader;I", "LOrgApacheLuceneUtilAttributeSource;LJavaIoReader;I", "LOrgApacheLuceneUtilAttributeSource_AttributeFactory;LJavaIoReader;I", "LJavaIoIOException;", "reset" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisKeywordTokenizer = { "KeywordTokenizer", "org.apache.lucene.analysis", ptrTable, methods, fields, 7, 0x11, 7, 5, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisKeywordTokenizer;
}

@end

void OrgApacheLuceneAnalysisKeywordTokenizer_initWithJavaIoReader_(OrgApacheLuceneAnalysisKeywordTokenizer *self, JavaIoReader *input) {
  OrgApacheLuceneAnalysisKeywordTokenizer_initWithJavaIoReader_withInt_(self, input, OrgApacheLuceneAnalysisKeywordTokenizer_DEFAULT_BUFFER_SIZE);
}

OrgApacheLuceneAnalysisKeywordTokenizer *new_OrgApacheLuceneAnalysisKeywordTokenizer_initWithJavaIoReader_(JavaIoReader *input) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisKeywordTokenizer, initWithJavaIoReader_, input)
}

OrgApacheLuceneAnalysisKeywordTokenizer *create_OrgApacheLuceneAnalysisKeywordTokenizer_initWithJavaIoReader_(JavaIoReader *input) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisKeywordTokenizer, initWithJavaIoReader_, input)
}

void OrgApacheLuceneAnalysisKeywordTokenizer_initWithJavaIoReader_withInt_(OrgApacheLuceneAnalysisKeywordTokenizer *self, JavaIoReader *input, jint bufferSize) {
  OrgApacheLuceneAnalysisTokenizer_initWithJavaIoReader_(self, input);
  self->done_ = false;
  self->termAtt_ = ((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  self->offsetAtt_ = ((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  (void) [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(self->termAtt_)) resizeBufferWithInt:bufferSize];
}

OrgApacheLuceneAnalysisKeywordTokenizer *new_OrgApacheLuceneAnalysisKeywordTokenizer_initWithJavaIoReader_withInt_(JavaIoReader *input, jint bufferSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisKeywordTokenizer, initWithJavaIoReader_withInt_, input, bufferSize)
}

OrgApacheLuceneAnalysisKeywordTokenizer *create_OrgApacheLuceneAnalysisKeywordTokenizer_initWithJavaIoReader_withInt_(JavaIoReader *input, jint bufferSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisKeywordTokenizer, initWithJavaIoReader_withInt_, input, bufferSize)
}

void OrgApacheLuceneAnalysisKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_withInt_(OrgApacheLuceneAnalysisKeywordTokenizer *self, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *input, jint bufferSize) {
  OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(self, source, input);
  self->done_ = false;
  self->termAtt_ = ((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  self->offsetAtt_ = ((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  (void) [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(self->termAtt_)) resizeBufferWithInt:bufferSize];
}

OrgApacheLuceneAnalysisKeywordTokenizer *new_OrgApacheLuceneAnalysisKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_withInt_(OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *input, jint bufferSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisKeywordTokenizer, initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_withInt_, source, input, bufferSize)
}

OrgApacheLuceneAnalysisKeywordTokenizer *create_OrgApacheLuceneAnalysisKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_withInt_(OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *input, jint bufferSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisKeywordTokenizer, initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_withInt_, source, input, bufferSize)
}

void OrgApacheLuceneAnalysisKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_withInt_(OrgApacheLuceneAnalysisKeywordTokenizer *self, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *input, jint bufferSize) {
  OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(self, factory, input);
  self->done_ = false;
  self->termAtt_ = ((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  self->offsetAtt_ = ((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  (void) [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(self->termAtt_)) resizeBufferWithInt:bufferSize];
}

OrgApacheLuceneAnalysisKeywordTokenizer *new_OrgApacheLuceneAnalysisKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_withInt_(OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *input, jint bufferSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisKeywordTokenizer, initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_withInt_, factory, input, bufferSize)
}

OrgApacheLuceneAnalysisKeywordTokenizer *create_OrgApacheLuceneAnalysisKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_withInt_(OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *input, jint bufferSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisKeywordTokenizer, initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_withInt_, factory, input, bufferSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisKeywordTokenizer)
