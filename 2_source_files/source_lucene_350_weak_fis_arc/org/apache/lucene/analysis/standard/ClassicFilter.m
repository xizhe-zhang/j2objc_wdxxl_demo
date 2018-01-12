//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/standard/ClassicFilter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/standard/ClassicFilter.h"
#include "org/apache/lucene/analysis/standard/ClassicTokenizer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/TypeAttribute.h"

@interface OrgApacheLuceneAnalysisStandardClassicFilter () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute> typeAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisStandardClassicFilter, typeAtt_, id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisStandardClassicFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)

inline NSString *OrgApacheLuceneAnalysisStandardClassicFilter_get_APOSTROPHE_TYPE(void);
static NSString *OrgApacheLuceneAnalysisStandardClassicFilter_APOSTROPHE_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisStandardClassicFilter, APOSTROPHE_TYPE, NSString *)

inline NSString *OrgApacheLuceneAnalysisStandardClassicFilter_get_ACRONYM_TYPE(void);
static NSString *OrgApacheLuceneAnalysisStandardClassicFilter_ACRONYM_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisStandardClassicFilter, ACRONYM_TYPE, NSString *)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisStandardClassicFilter)

@implementation OrgApacheLuceneAnalysisStandardClassicFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg {
  OrgApacheLuceneAnalysisStandardClassicFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  return self;
}

- (jboolean)incrementToken {
  if (![((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    return false;
  }
  IOSCharArray *buffer = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer];
  jint bufferLength = [termAtt_ java_length];
  NSString *type = [((id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>) nil_chk(typeAtt_)) type];
  if (type == OrgApacheLuceneAnalysisStandardClassicFilter_APOSTROPHE_TYPE && bufferLength >= 2 && IOSCharArray_Get(nil_chk(buffer), bufferLength - 2) == '\'' && (IOSCharArray_Get(buffer, bufferLength - 1) == 's' || IOSCharArray_Get(buffer, bufferLength - 1) == 'S')) {
    (void) [termAtt_ setLengthWithInt:bufferLength - 2];
  }
  else if (type == OrgApacheLuceneAnalysisStandardClassicFilter_ACRONYM_TYPE) {
    jint upto = 0;
    for (jint i = 0; i < bufferLength; i++) {
      jchar c = IOSCharArray_Get(nil_chk(buffer), i);
      if (c != '.') *IOSCharArray_GetRef(buffer, upto++) = c;
    }
    (void) [termAtt_ setLengthWithInt:upto];
  }
  return true;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisTokenStream:);
  methods[1].selector = @selector(incrementToken);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "APOSTROPHE_TYPE", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 2, -1, -1 },
    { "ACRONYM_TYPE", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 3, -1, -1 },
    { "typeAtt_", "LOrgApacheLuceneAnalysisTokenattributesTypeAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenStream;", "LJavaIoIOException;", &OrgApacheLuceneAnalysisStandardClassicFilter_APOSTROPHE_TYPE, &OrgApacheLuceneAnalysisStandardClassicFilter_ACRONYM_TYPE };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisStandardClassicFilter = { "ClassicFilter", "org.apache.lucene.analysis.standard", ptrTable, methods, fields, 7, 0x1, 2, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisStandardClassicFilter;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisStandardClassicFilter class]) {
    OrgApacheLuceneAnalysisStandardClassicFilter_APOSTROPHE_TYPE = IOSObjectArray_Get(nil_chk(JreLoadStatic(OrgApacheLuceneAnalysisStandardClassicTokenizer, TOKEN_TYPES)), OrgApacheLuceneAnalysisStandardClassicTokenizer_APOSTROPHE);
    OrgApacheLuceneAnalysisStandardClassicFilter_ACRONYM_TYPE = IOSObjectArray_Get(JreLoadStatic(OrgApacheLuceneAnalysisStandardClassicTokenizer, TOKEN_TYPES), OrgApacheLuceneAnalysisStandardClassicTokenizer_ACRONYM);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisStandardClassicFilter)
  }
}

@end

void OrgApacheLuceneAnalysisStandardClassicFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardClassicFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  self->typeAtt_ = ((id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>) [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_()]);
  self->termAtt_ = ((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
}

OrgApacheLuceneAnalysisStandardClassicFilter *new_OrgApacheLuceneAnalysisStandardClassicFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisStandardClassicFilter, initWithOrgApacheLuceneAnalysisTokenStream_, inArg)
}

OrgApacheLuceneAnalysisStandardClassicFilter *create_OrgApacheLuceneAnalysisStandardClassicFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisStandardClassicFilter, initWithOrgApacheLuceneAnalysisTokenStream_, inArg)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisStandardClassicFilter)
