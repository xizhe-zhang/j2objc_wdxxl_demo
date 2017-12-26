//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/analysis/LengthFilter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/analysis/FilteringTokenFilter.h"
#include "org/apache/lucene/analysis/LengthFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"

@interface OrgApacheLuceneAnalysisLengthFilter () {
 @public
  jint min_;
  jint max_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisLengthFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisLengthFilter__Annotations$0(void);

@implementation OrgApacheLuceneAnalysisLengthFilter

- (instancetype)initWithBoolean:(jboolean)enablePositionIncrements
withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                        withInt:(jint)min
                        withInt:(jint)max {
  OrgApacheLuceneAnalysisLengthFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(self, enablePositionIncrements, inArg, min, max);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                                   withInt:(jint)min
                                                   withInt:(jint)max {
  OrgApacheLuceneAnalysisLengthFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(self, inArg, min, max);
  return self;
}

- (jboolean)accept {
  jint len = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) java_length];
  return (len >= min_ && len <= max_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, 2, -1 },
    { NULL, "Z", 0x1, -1, -1, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithBoolean:withOrgApacheLuceneAnalysisTokenStream:withInt:withInt:);
  methods[1].selector = @selector(initWithOrgApacheLuceneAnalysisTokenStream:withInt:withInt:);
  methods[2].selector = @selector(accept);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "min_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "max_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "ZLOrgApacheLuceneAnalysisTokenStream;II", "LOrgApacheLuceneAnalysisTokenStream;II", (void *)&OrgApacheLuceneAnalysisLengthFilter__Annotations$0, "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisLengthFilter = { "LengthFilter", "org.apache.lucene.analysis", ptrTable, methods, fields, 7, 0x11, 3, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisLengthFilter;
}

@end

void OrgApacheLuceneAnalysisLengthFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisLengthFilter *self, jboolean enablePositionIncrements, OrgApacheLuceneAnalysisTokenStream *inArg, jint min, jint max) {
  OrgApacheLuceneAnalysisFilteringTokenFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_(self, enablePositionIncrements, inArg);
  self->termAtt_ = ((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  self->min_ = min;
  self->max_ = max;
}

OrgApacheLuceneAnalysisLengthFilter *new_OrgApacheLuceneAnalysisLengthFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(jboolean enablePositionIncrements, OrgApacheLuceneAnalysisTokenStream *inArg, jint min, jint max) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisLengthFilter, initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withInt_withInt_, enablePositionIncrements, inArg, min, max)
}

OrgApacheLuceneAnalysisLengthFilter *create_OrgApacheLuceneAnalysisLengthFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(jboolean enablePositionIncrements, OrgApacheLuceneAnalysisTokenStream *inArg, jint min, jint max) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisLengthFilter, initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withInt_withInt_, enablePositionIncrements, inArg, min, max)
}

void OrgApacheLuceneAnalysisLengthFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisLengthFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, jint min, jint max) {
  OrgApacheLuceneAnalysisLengthFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(self, false, inArg, min, max);
}

OrgApacheLuceneAnalysisLengthFilter *new_OrgApacheLuceneAnalysisLengthFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *inArg, jint min, jint max) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisLengthFilter, initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_, inArg, min, max)
}

OrgApacheLuceneAnalysisLengthFilter *create_OrgApacheLuceneAnalysisLengthFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *inArg, jint min, jint max) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisLengthFilter, initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_, inArg, min, max)
}

IOSObjectArray *OrgApacheLuceneAnalysisLengthFilter__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisLengthFilter)
