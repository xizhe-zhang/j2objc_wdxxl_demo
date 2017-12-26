//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/store/LockFactory.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/store/Lock.h"
#include "org/apache/lucene/store/LockFactory.h"

@implementation OrgApacheLuceneStoreLockFactory

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreLockFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setLockPrefixWithNSString:(NSString *)lockPrefix {
  JreStrongAssign(&self->lockPrefix_, lockPrefix);
}

- (NSString *)getLockPrefix {
  return self->lockPrefix_;
}

- (OrgApacheLuceneStoreLock *)makeLockWithNSString:(NSString *)lockName {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)clearLockWithNSString:(NSString *)lockName {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)dealloc {
  RELEASE_(lockPrefix_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreLock;", 0x401, 2, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 3, 1, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setLockPrefixWithNSString:);
  methods[2].selector = @selector(getLockPrefix);
  methods[3].selector = @selector(makeLockWithNSString:);
  methods[4].selector = @selector(clearLockWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "lockPrefix_", "LNSString;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setLockPrefix", "LNSString;", "makeLock", "clearLock", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreLockFactory = { "LockFactory", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x401, 5, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreLockFactory;
}

@end

void OrgApacheLuceneStoreLockFactory_init(OrgApacheLuceneStoreLockFactory *self) {
  NSObject_init(self);
  JreStrongAssign(&self->lockPrefix_, nil);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreLockFactory)
