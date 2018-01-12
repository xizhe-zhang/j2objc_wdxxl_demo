//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/ISOLatin1AccentFilter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/analysis/ISOLatin1AccentFilter.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"

@interface OrgApacheLuceneAnalysisISOLatin1AccentFilter () {
 @public
  IOSCharArray *output_;
  jint outputPos_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisISOLatin1AccentFilter, output_, IOSCharArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisISOLatin1AccentFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)

__attribute__((unused)) static void OrgApacheLuceneAnalysisISOLatin1AccentFilter_removeAccentsWithCharArray_withInt_(OrgApacheLuceneAnalysisISOLatin1AccentFilter *self, IOSCharArray *input, jint length);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisISOLatin1AccentFilter__Annotations$0(void);

@implementation OrgApacheLuceneAnalysisISOLatin1AccentFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisISOLatin1AccentFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    IOSCharArray *buffer = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer];
    jint length = [termAtt_ java_length];
    for (jint i = 0; i < length; i++) {
      jchar c = IOSCharArray_Get(nil_chk(buffer), i);
      if (c >= 0x00c0 && c <= 0xfb06) {
        OrgApacheLuceneAnalysisISOLatin1AccentFilter_removeAccentsWithCharArray_withInt_(self, buffer, length);
        [termAtt_ copyBufferWithCharArray:output_ withInt:0 withInt:outputPos_];
        break;
      }
    }
    return true;
  }
  else return false;
}

- (void)removeAccentsWithCharArray:(IOSCharArray *)input
                           withInt:(jint)length {
  OrgApacheLuceneAnalysisISOLatin1AccentFilter_removeAccentsWithCharArray_withInt_(self, input, length);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x11, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisTokenStream:);
  methods[1].selector = @selector(incrementToken);
  methods[2].selector = @selector(removeAccentsWithCharArray:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "output_", "[C", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "outputPos_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenStream;", "LJavaIoIOException;", "removeAccents", "[CI", (void *)&OrgApacheLuceneAnalysisISOLatin1AccentFilter__Annotations$0 };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisISOLatin1AccentFilter = { "ISOLatin1AccentFilter", "org.apache.lucene.analysis", ptrTable, methods, fields, 7, 0x11, 3, 3, -1, -1, -1, -1, 4 };
  return &_OrgApacheLuceneAnalysisISOLatin1AccentFilter;
}

@end

void OrgApacheLuceneAnalysisISOLatin1AccentFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisISOLatin1AccentFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  self->output_ = [IOSCharArray newArrayWithLength:256];
  self->termAtt_ = ((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
}

OrgApacheLuceneAnalysisISOLatin1AccentFilter *new_OrgApacheLuceneAnalysisISOLatin1AccentFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisISOLatin1AccentFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

OrgApacheLuceneAnalysisISOLatin1AccentFilter *create_OrgApacheLuceneAnalysisISOLatin1AccentFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisISOLatin1AccentFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

void OrgApacheLuceneAnalysisISOLatin1AccentFilter_removeAccentsWithCharArray_withInt_(OrgApacheLuceneAnalysisISOLatin1AccentFilter *self, IOSCharArray *input, jint length) {
  jint maxSizeNeeded = 2 * length;
  jint size = ((IOSCharArray *) nil_chk(self->output_))->size_;
  while (size < maxSizeNeeded) size *= 2;
  if (size != self->output_->size_) self->output_ = [IOSCharArray newArrayWithLength:size];
  self->outputPos_ = 0;
  jint pos = 0;
  for (jint i = 0; i < length; i++, pos++) {
    jchar c = IOSCharArray_Get(nil_chk(input), pos);
    if (c < 0x00c0 || c > 0xfb06) *IOSCharArray_GetRef(self->output_, self->outputPos_++) = c;
    else {
      switch (c) {
        case 0x00c0:
        case 0x00c1:
        case 0x00c2:
        case 0x00c3:
        case 0x00c4:
        case 0x00c5:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'A';
        break;
        case 0x00c6:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'A';
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'E';
        break;
        case 0x00c7:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'C';
        break;
        case 0x00c8:
        case 0x00c9:
        case 0x00ca:
        case 0x00cb:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'E';
        break;
        case 0x00cc:
        case 0x00cd:
        case 0x00ce:
        case 0x00cf:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'I';
        break;
        case 0x0132:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'I';
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'J';
        break;
        case 0x00d0:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'D';
        break;
        case 0x00d1:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'N';
        break;
        case 0x00d2:
        case 0x00d3:
        case 0x00d4:
        case 0x00d5:
        case 0x00d6:
        case 0x00d8:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'O';
        break;
        case 0x0152:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'O';
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'E';
        break;
        case 0x00de:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'T';
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'H';
        break;
        case 0x00d9:
        case 0x00da:
        case 0x00db:
        case 0x00dc:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'U';
        break;
        case 0x00dd:
        case 0x0178:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'Y';
        break;
        case 0x00e0:
        case 0x00e1:
        case 0x00e2:
        case 0x00e3:
        case 0x00e4:
        case 0x00e5:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'a';
        break;
        case 0x00e6:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'a';
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'e';
        break;
        case 0x00e7:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'c';
        break;
        case 0x00e8:
        case 0x00e9:
        case 0x00ea:
        case 0x00eb:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'e';
        break;
        case 0x00ec:
        case 0x00ed:
        case 0x00ee:
        case 0x00ef:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'i';
        break;
        case 0x0133:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'i';
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'j';
        break;
        case 0x00f0:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'd';
        break;
        case 0x00f1:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'n';
        break;
        case 0x00f2:
        case 0x00f3:
        case 0x00f4:
        case 0x00f5:
        case 0x00f6:
        case 0x00f8:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'o';
        break;
        case 0x0153:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'o';
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'e';
        break;
        case 0x00df:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 's';
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 's';
        break;
        case 0x00fe:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 't';
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'h';
        break;
        case 0x00f9:
        case 0x00fa:
        case 0x00fb:
        case 0x00fc:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'u';
        break;
        case 0x00fd:
        case 0x00ff:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'y';
        break;
        case 0xfb00:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'f';
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'f';
        break;
        case 0xfb01:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'f';
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'i';
        break;
        case 0xfb02:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'f';
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'l';
        break;
        case 0xfb05:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 'f';
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 't';
        break;
        case 0xfb06:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 's';
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = 't';
        break;
        default:
        *IOSCharArray_GetRef(self->output_, self->outputPos_++) = c;
        break;
      }
    }
  }
}

IOSObjectArray *OrgApacheLuceneAnalysisISOLatin1AccentFilter__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisISOLatin1AccentFilter)
