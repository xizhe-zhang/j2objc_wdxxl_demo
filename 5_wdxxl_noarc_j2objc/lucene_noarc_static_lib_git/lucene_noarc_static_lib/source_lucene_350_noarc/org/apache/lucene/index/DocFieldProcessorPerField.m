//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/DocFieldProcessorPerField.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/document/Fieldable.h"
#include "org/apache/lucene/index/DocFieldConsumerPerField.h"
#include "org/apache/lucene/index/DocFieldConsumerPerThread.h"
#include "org/apache/lucene/index/DocFieldProcessorPerField.h"
#include "org/apache/lucene/index/DocFieldProcessorPerThread.h"
#include "org/apache/lucene/index/FieldInfo.h"

@implementation OrgApacheLuceneIndexDocFieldProcessorPerField

- (instancetype)initWithOrgApacheLuceneIndexDocFieldProcessorPerThread:(OrgApacheLuceneIndexDocFieldProcessorPerThread *)perThread
                                     withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  OrgApacheLuceneIndexDocFieldProcessorPerField_initWithOrgApacheLuceneIndexDocFieldProcessorPerThread_withOrgApacheLuceneIndexFieldInfo_(self, perThread, fieldInfo);
  return self;
}

- (void)abort {
  [((OrgApacheLuceneIndexDocFieldConsumerPerField *) nil_chk(consumer_)) abort];
}

- (void)dealloc {
  RELEASE_(consumer_);
  RELEASE_(fieldInfo_);
  RELEASE_(next_);
  RELEASE_(fields_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexDocFieldProcessorPerThread:withOrgApacheLuceneIndexFieldInfo:);
  methods[1].selector = @selector(abort);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "consumer_", "LOrgApacheLuceneIndexDocFieldConsumerPerField;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "fieldInfo_", "LOrgApacheLuceneIndexFieldInfo;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "next_", "LOrgApacheLuceneIndexDocFieldProcessorPerField;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "lastGen_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "fieldCount_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "fields_", "[LOrgApacheLuceneDocumentFieldable;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexDocFieldProcessorPerThread;LOrgApacheLuceneIndexFieldInfo;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexDocFieldProcessorPerField = { "DocFieldProcessorPerField", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 2, 6, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexDocFieldProcessorPerField;
}

@end

void OrgApacheLuceneIndexDocFieldProcessorPerField_initWithOrgApacheLuceneIndexDocFieldProcessorPerThread_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneIndexDocFieldProcessorPerField *self, OrgApacheLuceneIndexDocFieldProcessorPerThread *perThread, OrgApacheLuceneIndexFieldInfo *fieldInfo) {
  NSObject_init(self);
  self->lastGen_ = -1;
  JreStrongAssignAndConsume(&self->fields_, [IOSObjectArray newArrayWithLength:1 type:OrgApacheLuceneDocumentFieldable_class_()]);
  JreStrongAssign(&self->consumer_, [((OrgApacheLuceneIndexDocFieldConsumerPerThread *) nil_chk(((OrgApacheLuceneIndexDocFieldProcessorPerThread *) nil_chk(perThread))->consumer_)) addFieldWithOrgApacheLuceneIndexFieldInfo:fieldInfo]);
  JreStrongAssign(&self->fieldInfo_, fieldInfo);
}

OrgApacheLuceneIndexDocFieldProcessorPerField *new_OrgApacheLuceneIndexDocFieldProcessorPerField_initWithOrgApacheLuceneIndexDocFieldProcessorPerThread_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneIndexDocFieldProcessorPerThread *perThread, OrgApacheLuceneIndexFieldInfo *fieldInfo) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexDocFieldProcessorPerField, initWithOrgApacheLuceneIndexDocFieldProcessorPerThread_withOrgApacheLuceneIndexFieldInfo_, perThread, fieldInfo)
}

OrgApacheLuceneIndexDocFieldProcessorPerField *create_OrgApacheLuceneIndexDocFieldProcessorPerField_initWithOrgApacheLuceneIndexDocFieldProcessorPerThread_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneIndexDocFieldProcessorPerThread *perThread, OrgApacheLuceneIndexFieldInfo *fieldInfo) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexDocFieldProcessorPerField, initWithOrgApacheLuceneIndexDocFieldProcessorPerThread_withOrgApacheLuceneIndexFieldInfo_, perThread, fieldInfo)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexDocFieldProcessorPerField)
