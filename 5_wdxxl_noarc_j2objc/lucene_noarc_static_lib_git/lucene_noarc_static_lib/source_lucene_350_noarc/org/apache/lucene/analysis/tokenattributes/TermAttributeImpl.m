//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/analysis/tokenattributes/TermAttributeImpl.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttributeImpl.h"
#include "org/apache/lucene/analysis/tokenattributes/TermAttributeImpl.h"

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisTokenattributesTermAttributeImpl__Annotations$0(void);

@implementation OrgApacheLuceneAnalysisTokenattributesTermAttributeImpl

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisTokenattributesTermAttributeImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { (void *)&OrgApacheLuceneAnalysisTokenattributesTermAttributeImpl__Annotations$0 };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenattributesTermAttributeImpl = { "TermAttributeImpl", "org.apache.lucene.analysis.tokenattributes", ptrTable, methods, NULL, 7, 0x1, 1, 0, -1, -1, -1, -1, 0 };
  return &_OrgApacheLuceneAnalysisTokenattributesTermAttributeImpl;
}

@end

void OrgApacheLuceneAnalysisTokenattributesTermAttributeImpl_init(OrgApacheLuceneAnalysisTokenattributesTermAttributeImpl *self) {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_init(self);
}

OrgApacheLuceneAnalysisTokenattributesTermAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesTermAttributeImpl_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisTokenattributesTermAttributeImpl, init)
}

OrgApacheLuceneAnalysisTokenattributesTermAttributeImpl *create_OrgApacheLuceneAnalysisTokenattributesTermAttributeImpl_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisTokenattributesTermAttributeImpl, init)
}

IOSObjectArray *OrgApacheLuceneAnalysisTokenattributesTermAttributeImpl__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenattributesTermAttributeImpl)
