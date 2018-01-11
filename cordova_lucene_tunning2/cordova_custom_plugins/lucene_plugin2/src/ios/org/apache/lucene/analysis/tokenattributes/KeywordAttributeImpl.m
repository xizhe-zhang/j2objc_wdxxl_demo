//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/tokenattributes/KeywordAttributeImpl.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/tokenattributes/KeywordAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/KeywordAttributeImpl.h"
#include "org/apache/lucene/util/AttributeImpl.h"

@interface OrgApacheLuceneAnalysisTokenattributesKeywordAttributeImpl () {
 @public
  jboolean keyword_;
}

@end

@implementation OrgApacheLuceneAnalysisTokenattributesKeywordAttributeImpl

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisTokenattributesKeywordAttributeImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)clear {
  keyword_ = false;
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target {
  id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute> attr = (id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>) cast_check(target, OrgApacheLuceneAnalysisTokenattributesKeywordAttribute_class_());
  [((id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>) nil_chk(attr)) setKeywordWithBoolean:keyword_];
}

- (NSUInteger)hash {
  return keyword_ ? 31 : 37;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return true;
  if ([self java_getClass] != [nil_chk(obj) java_getClass]) return false;
  OrgApacheLuceneAnalysisTokenattributesKeywordAttributeImpl *other = (OrgApacheLuceneAnalysisTokenattributesKeywordAttributeImpl *) cast_chk(obj, [OrgApacheLuceneAnalysisTokenattributesKeywordAttributeImpl class]);
  return keyword_ == other->keyword_;
}

- (jboolean)isKeyword {
  return keyword_;
}

- (void)setKeywordWithBoolean:(jboolean)isKeyword {
  keyword_ = isKeyword;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(clear);
  methods[2].selector = @selector(copyToWithOrgApacheLuceneUtilAttributeImpl:);
  methods[3].selector = @selector(hash);
  methods[4].selector = @selector(isEqual:);
  methods[5].selector = @selector(isKeyword);
  methods[6].selector = @selector(setKeywordWithBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "keyword_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "copyTo", "LOrgApacheLuceneUtilAttributeImpl;", "hashCode", "equals", "LNSObject;", "setKeyword", "Z" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenattributesKeywordAttributeImpl = { "KeywordAttributeImpl", "org.apache.lucene.analysis.tokenattributes", ptrTable, methods, fields, 7, 0x11, 7, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisTokenattributesKeywordAttributeImpl;
}

@end

void OrgApacheLuceneAnalysisTokenattributesKeywordAttributeImpl_init(OrgApacheLuceneAnalysisTokenattributesKeywordAttributeImpl *self) {
  OrgApacheLuceneUtilAttributeImpl_init(self);
}

OrgApacheLuceneAnalysisTokenattributesKeywordAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesKeywordAttributeImpl_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisTokenattributesKeywordAttributeImpl, init)
}

OrgApacheLuceneAnalysisTokenattributesKeywordAttributeImpl *create_OrgApacheLuceneAnalysisTokenattributesKeywordAttributeImpl_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisTokenattributesKeywordAttributeImpl, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenattributesKeywordAttributeImpl)