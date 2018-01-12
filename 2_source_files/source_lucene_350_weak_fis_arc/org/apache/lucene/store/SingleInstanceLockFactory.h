//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/store/SingleInstanceLockFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreSingleInstanceLockFactory")
#ifdef RESTRICT_OrgApacheLuceneStoreSingleInstanceLockFactory
#define INCLUDE_ALL_OrgApacheLuceneStoreSingleInstanceLockFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreSingleInstanceLockFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreSingleInstanceLockFactory

#if !defined (OrgApacheLuceneStoreSingleInstanceLockFactory_) && (INCLUDE_ALL_OrgApacheLuceneStoreSingleInstanceLockFactory || defined(INCLUDE_OrgApacheLuceneStoreSingleInstanceLockFactory))
#define OrgApacheLuceneStoreSingleInstanceLockFactory_

#define RESTRICT_OrgApacheLuceneStoreLockFactory 1
#define INCLUDE_OrgApacheLuceneStoreLockFactory 1
#include "org/apache/lucene/store/LockFactory.h"

@class OrgApacheLuceneStoreLock;

@interface OrgApacheLuceneStoreSingleInstanceLockFactory : OrgApacheLuceneStoreLockFactory

#pragma mark Public

- (instancetype)init;

- (void)clearLockWithNSString:(NSString *)lockName;

- (OrgApacheLuceneStoreLock *)makeLockWithNSString:(NSString *)lockName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreSingleInstanceLockFactory)

FOUNDATION_EXPORT void OrgApacheLuceneStoreSingleInstanceLockFactory_init(OrgApacheLuceneStoreSingleInstanceLockFactory *self);

FOUNDATION_EXPORT OrgApacheLuceneStoreSingleInstanceLockFactory *new_OrgApacheLuceneStoreSingleInstanceLockFactory_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreSingleInstanceLockFactory *create_OrgApacheLuceneStoreSingleInstanceLockFactory_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreSingleInstanceLockFactory)

#endif

#if !defined (OrgApacheLuceneStoreSingleInstanceLock_) && (INCLUDE_ALL_OrgApacheLuceneStoreSingleInstanceLockFactory || defined(INCLUDE_OrgApacheLuceneStoreSingleInstanceLock))
#define OrgApacheLuceneStoreSingleInstanceLock_

#define RESTRICT_OrgApacheLuceneStoreLock 1
#define INCLUDE_OrgApacheLuceneStoreLock 1
#include "org/apache/lucene/store/Lock.h"

@class JavaUtilHashSet;

@interface OrgApacheLuceneStoreSingleInstanceLock : OrgApacheLuceneStoreLock {
 @public
  NSString *lockName_;
}

#pragma mark Public

- (instancetype)initWithJavaUtilHashSet:(JavaUtilHashSet *)locks
                           withNSString:(NSString *)lockName;

- (jboolean)isLocked;

- (jboolean)obtain;

- (void)release__;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreSingleInstanceLock)

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreSingleInstanceLock, lockName_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneStoreSingleInstanceLock_initWithJavaUtilHashSet_withNSString_(OrgApacheLuceneStoreSingleInstanceLock *self, JavaUtilHashSet *locks, NSString *lockName);

FOUNDATION_EXPORT OrgApacheLuceneStoreSingleInstanceLock *new_OrgApacheLuceneStoreSingleInstanceLock_initWithJavaUtilHashSet_withNSString_(JavaUtilHashSet *locks, NSString *lockName) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreSingleInstanceLock *create_OrgApacheLuceneStoreSingleInstanceLock_initWithJavaUtilHashSet_withNSString_(JavaUtilHashSet *locks, NSString *lockName);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreSingleInstanceLock)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreSingleInstanceLockFactory")
