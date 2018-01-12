//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/store/SingleInstanceLockFactory.java
//

#include "J2ObjC_source.h"
#include "java/util/HashSet.h"
#include "org/apache/lucene/store/Lock.h"
#include "org/apache/lucene/store/LockFactory.h"
#include "org/apache/lucene/store/SingleInstanceLockFactory.h"

@interface OrgApacheLuceneStoreSingleInstanceLockFactory () {
 @public
  JavaUtilHashSet *locks_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreSingleInstanceLockFactory, locks_, JavaUtilHashSet *)

@interface OrgApacheLuceneStoreSingleInstanceLock () {
 @public
  JavaUtilHashSet *locks_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreSingleInstanceLock, locks_, JavaUtilHashSet *)

@implementation OrgApacheLuceneStoreSingleInstanceLockFactory

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreSingleInstanceLockFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneStoreLock *)makeLockWithNSString:(NSString *)lockName {
  return new_OrgApacheLuceneStoreSingleInstanceLock_initWithJavaUtilHashSet_withNSString_(locks_, lockName);
}

- (void)clearLockWithNSString:(NSString *)lockName {
  @synchronized(locks_) {
    if ([((JavaUtilHashSet *) nil_chk(locks_)) containsWithId:lockName]) {
      [((JavaUtilHashSet *) nil_chk(locks_)) removeWithId:lockName];
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreLock;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(makeLockWithNSString:);
  methods[2].selector = @selector(clearLockWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "locks_", "LJavaUtilHashSet;", .constantValue.asLong = 0, 0x2, -1, -1, 4, -1 },
  };
  static const void *ptrTable[] = { "makeLock", "LNSString;", "clearLock", "LJavaIoIOException;", "Ljava/util/HashSet<Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreSingleInstanceLockFactory = { "SingleInstanceLockFactory", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x1, 3, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreSingleInstanceLockFactory;
}

@end

void OrgApacheLuceneStoreSingleInstanceLockFactory_init(OrgApacheLuceneStoreSingleInstanceLockFactory *self) {
  OrgApacheLuceneStoreLockFactory_init(self);
  self->locks_ = new_JavaUtilHashSet_init();
}

OrgApacheLuceneStoreSingleInstanceLockFactory *new_OrgApacheLuceneStoreSingleInstanceLockFactory_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreSingleInstanceLockFactory, init)
}

OrgApacheLuceneStoreSingleInstanceLockFactory *create_OrgApacheLuceneStoreSingleInstanceLockFactory_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreSingleInstanceLockFactory, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreSingleInstanceLockFactory)

@implementation OrgApacheLuceneStoreSingleInstanceLock

- (instancetype)initWithJavaUtilHashSet:(JavaUtilHashSet *)locks
                           withNSString:(NSString *)lockName {
  OrgApacheLuceneStoreSingleInstanceLock_initWithJavaUtilHashSet_withNSString_(self, locks, lockName);
  return self;
}

- (jboolean)obtain {
  @synchronized(locks_) {
    return [((JavaUtilHashSet *) nil_chk(locks_)) addWithId:lockName_];
  }
}

- (void)release__ {
  @synchronized(locks_) {
    [((JavaUtilHashSet *) nil_chk(locks_)) removeWithId:lockName_];
  }
}

- (jboolean)isLocked {
  @synchronized(locks_) {
    return [((JavaUtilHashSet *) nil_chk(locks_)) containsWithId:lockName_];
  }
}

- (NSString *)description {
  return JreStrcat("$$$", [super description], @": ", lockName_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "V", 0x1, 3, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaUtilHashSet:withNSString:);
  methods[1].selector = @selector(obtain);
  methods[2].selector = @selector(release__);
  methods[3].selector = @selector(isLocked);
  methods[4].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "lockName_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "locks_", "LJavaUtilHashSet;", .constantValue.asLong = 0, 0x2, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilHashSet;LNSString;", "(Ljava/util/HashSet<Ljava/lang/String;>;Ljava/lang/String;)V", "LJavaIoIOException;", "release", "toString", "Ljava/util/HashSet<Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreSingleInstanceLock = { "SingleInstanceLock", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x0, 5, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreSingleInstanceLock;
}

@end

void OrgApacheLuceneStoreSingleInstanceLock_initWithJavaUtilHashSet_withNSString_(OrgApacheLuceneStoreSingleInstanceLock *self, JavaUtilHashSet *locks, NSString *lockName) {
  OrgApacheLuceneStoreLock_init(self);
  self->locks_ = locks;
  self->lockName_ = lockName;
}

OrgApacheLuceneStoreSingleInstanceLock *new_OrgApacheLuceneStoreSingleInstanceLock_initWithJavaUtilHashSet_withNSString_(JavaUtilHashSet *locks, NSString *lockName) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreSingleInstanceLock, initWithJavaUtilHashSet_withNSString_, locks, lockName)
}

OrgApacheLuceneStoreSingleInstanceLock *create_OrgApacheLuceneStoreSingleInstanceLock_initWithJavaUtilHashSet_withNSString_(JavaUtilHashSet *locks, NSString *lockName) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreSingleInstanceLock, initWithJavaUtilHashSet_withNSString_, locks, lockName)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreSingleInstanceLock)
