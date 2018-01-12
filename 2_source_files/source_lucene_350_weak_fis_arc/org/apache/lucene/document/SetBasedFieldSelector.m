//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/document/SetBasedFieldSelector.java
//

#include "J2ObjC_source.h"
#include "java/util/Set.h"
#include "org/apache/lucene/document/FieldSelectorResult.h"
#include "org/apache/lucene/document/SetBasedFieldSelector.h"

@interface OrgApacheLuceneDocumentSetBasedFieldSelector () {
 @public
  id<JavaUtilSet> fieldsToLoad_;
  id<JavaUtilSet> lazyFieldsToLoad_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneDocumentSetBasedFieldSelector, fieldsToLoad_, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneDocumentSetBasedFieldSelector, lazyFieldsToLoad_, id<JavaUtilSet>)

@implementation OrgApacheLuceneDocumentSetBasedFieldSelector

- (instancetype)initWithJavaUtilSet:(id<JavaUtilSet>)fieldsToLoad
                    withJavaUtilSet:(id<JavaUtilSet>)lazyFieldsToLoad {
  OrgApacheLuceneDocumentSetBasedFieldSelector_initWithJavaUtilSet_withJavaUtilSet_(self, fieldsToLoad, lazyFieldsToLoad);
  return self;
}

- (OrgApacheLuceneDocumentFieldSelectorResult *)acceptWithNSString:(NSString *)fieldName {
  OrgApacheLuceneDocumentFieldSelectorResult *result = JreLoadEnum(OrgApacheLuceneDocumentFieldSelectorResult, NO_LOAD);
  if ([((id<JavaUtilSet>) nil_chk(fieldsToLoad_)) containsWithId:fieldName] == true) {
    result = JreLoadEnum(OrgApacheLuceneDocumentFieldSelectorResult, LOAD);
  }
  if ([((id<JavaUtilSet>) nil_chk(lazyFieldsToLoad_)) containsWithId:fieldName] == true) {
    result = JreLoadEnum(OrgApacheLuceneDocumentFieldSelectorResult, LAZY_LOAD);
  }
  return result;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LOrgApacheLuceneDocumentFieldSelectorResult;", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaUtilSet:withJavaUtilSet:);
  methods[1].selector = @selector(acceptWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "fieldsToLoad_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x2, -1, -1, 4, -1 },
    { "lazyFieldsToLoad_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x2, -1, -1, 4, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilSet;LJavaUtilSet;", "(Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;)V", "accept", "LNSString;", "Ljava/util/Set<Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentSetBasedFieldSelector = { "SetBasedFieldSelector", "org.apache.lucene.document", ptrTable, methods, fields, 7, 0x1, 2, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneDocumentSetBasedFieldSelector;
}

@end

void OrgApacheLuceneDocumentSetBasedFieldSelector_initWithJavaUtilSet_withJavaUtilSet_(OrgApacheLuceneDocumentSetBasedFieldSelector *self, id<JavaUtilSet> fieldsToLoad, id<JavaUtilSet> lazyFieldsToLoad) {
  NSObject_init(self);
  self->fieldsToLoad_ = fieldsToLoad;
  self->lazyFieldsToLoad_ = lazyFieldsToLoad;
}

OrgApacheLuceneDocumentSetBasedFieldSelector *new_OrgApacheLuceneDocumentSetBasedFieldSelector_initWithJavaUtilSet_withJavaUtilSet_(id<JavaUtilSet> fieldsToLoad, id<JavaUtilSet> lazyFieldsToLoad) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentSetBasedFieldSelector, initWithJavaUtilSet_withJavaUtilSet_, fieldsToLoad, lazyFieldsToLoad)
}

OrgApacheLuceneDocumentSetBasedFieldSelector *create_OrgApacheLuceneDocumentSetBasedFieldSelector_initWithJavaUtilSet_withJavaUtilSet_(id<JavaUtilSet> fieldsToLoad, id<JavaUtilSet> lazyFieldsToLoad) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentSetBasedFieldSelector, initWithJavaUtilSet_withJavaUtilSet_, fieldsToLoad, lazyFieldsToLoad)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentSetBasedFieldSelector)
