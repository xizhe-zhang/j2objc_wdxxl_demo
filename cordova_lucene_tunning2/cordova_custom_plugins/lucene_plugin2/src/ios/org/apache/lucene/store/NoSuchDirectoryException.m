//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/store/NoSuchDirectoryException.java
//

#include "J2ObjC_source.h"
#include "java/io/FileNotFoundException.h"
#include "org/apache/lucene/store/NoSuchDirectoryException.h"

@implementation OrgApacheLuceneStoreNoSuchDirectoryException

- (instancetype)initWithNSString:(NSString *)message {
  OrgApacheLuceneStoreNoSuchDirectoryException_initWithNSString_(self, message);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreNoSuchDirectoryException = { "NoSuchDirectoryException", "org.apache.lucene.store", ptrTable, methods, NULL, 7, 0x1, 1, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreNoSuchDirectoryException;
}

@end

void OrgApacheLuceneStoreNoSuchDirectoryException_initWithNSString_(OrgApacheLuceneStoreNoSuchDirectoryException *self, NSString *message) {
  JavaIoFileNotFoundException_initWithNSString_(self, message);
}

OrgApacheLuceneStoreNoSuchDirectoryException *new_OrgApacheLuceneStoreNoSuchDirectoryException_initWithNSString_(NSString *message) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreNoSuchDirectoryException, initWithNSString_, message)
}

OrgApacheLuceneStoreNoSuchDirectoryException *create_OrgApacheLuceneStoreNoSuchDirectoryException_initWithNSString_(NSString *message) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreNoSuchDirectoryException, initWithNSString_, message)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreNoSuchDirectoryException)
