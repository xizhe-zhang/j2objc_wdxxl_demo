//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/store/NRTCachingDirectory.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Thread.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Collection.h"
#include "java/util/HashSet.h"
#include "java/util/Set.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "org/apache/lucene/index/ConcurrentMergeScheduler.h"
#include "org/apache/lucene/index/IndexFileNames.h"
#include "org/apache/lucene/index/MergePolicy.h"
#include "org/apache/lucene/index/MergeScheduler.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/store/Lock.h"
#include "org/apache/lucene/store/LockFactory.h"
#include "org/apache/lucene/store/NRTCachingDirectory.h"
#include "org/apache/lucene/store/NoSuchDirectoryException.h"
#include "org/apache/lucene/store/RAMDirectory.h"
#include "org/apache/lucene/util/IOUtils.h"

@interface OrgApacheLuceneStoreNRTCachingDirectory () {
 @public
  OrgApacheLuceneStoreRAMDirectory *cache_;
  OrgApacheLuceneStoreDirectory *delegate_;
  jlong maxMergeSizeBytes_;
  jlong maxCachedBytes_;
  JavaUtilConcurrentConcurrentHashMap *merges_;
}

- (void)unCacheWithNSString:(NSString *)fileName;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreNRTCachingDirectory, cache_, OrgApacheLuceneStoreRAMDirectory *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreNRTCachingDirectory, delegate_, OrgApacheLuceneStoreDirectory *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreNRTCachingDirectory, merges_, JavaUtilConcurrentConcurrentHashMap *)

inline jboolean OrgApacheLuceneStoreNRTCachingDirectory_get_VERBOSE(void);
#define OrgApacheLuceneStoreNRTCachingDirectory_VERBOSE false
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneStoreNRTCachingDirectory, VERBOSE, jboolean)

__attribute__((unused)) static void OrgApacheLuceneStoreNRTCachingDirectory_unCacheWithNSString_(OrgApacheLuceneStoreNRTCachingDirectory *self, NSString *fileName);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneStoreNRTCachingDirectory__Annotations$0(void);

@interface OrgApacheLuceneStoreNRTCachingDirectory_1 : OrgApacheLuceneIndexConcurrentMergeScheduler {
 @public
  OrgApacheLuceneStoreNRTCachingDirectory *this$0_;
}

- (instancetype)initWithOrgApacheLuceneStoreNRTCachingDirectory:(OrgApacheLuceneStoreNRTCachingDirectory *)outer$;

- (void)doMergeWithOrgApacheLuceneIndexMergePolicy_OneMerge:(OrgApacheLuceneIndexMergePolicy_OneMerge *)merge;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreNRTCachingDirectory_1)

__attribute__((unused)) static void OrgApacheLuceneStoreNRTCachingDirectory_1_initWithOrgApacheLuceneStoreNRTCachingDirectory_(OrgApacheLuceneStoreNRTCachingDirectory_1 *self, OrgApacheLuceneStoreNRTCachingDirectory *outer$);

__attribute__((unused)) static OrgApacheLuceneStoreNRTCachingDirectory_1 *new_OrgApacheLuceneStoreNRTCachingDirectory_1_initWithOrgApacheLuceneStoreNRTCachingDirectory_(OrgApacheLuceneStoreNRTCachingDirectory *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneStoreNRTCachingDirectory_1 *create_OrgApacheLuceneStoreNRTCachingDirectory_1_initWithOrgApacheLuceneStoreNRTCachingDirectory_(OrgApacheLuceneStoreNRTCachingDirectory *outer$);

@implementation OrgApacheLuceneStoreNRTCachingDirectory

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)delegate
                                           withDouble:(jdouble)maxMergeSizeMB
                                           withDouble:(jdouble)maxCachedMB {
  OrgApacheLuceneStoreNRTCachingDirectory_initWithOrgApacheLuceneStoreDirectory_withDouble_withDouble_(self, delegate, maxMergeSizeMB, maxCachedMB);
  return self;
}

- (OrgApacheLuceneStoreLockFactory *)getLockFactory {
  return [((OrgApacheLuceneStoreDirectory *) nil_chk(delegate_)) getLockFactory];
}

- (void)setLockFactoryWithOrgApacheLuceneStoreLockFactory:(OrgApacheLuceneStoreLockFactory *)lf {
  [((OrgApacheLuceneStoreDirectory *) nil_chk(delegate_)) setLockFactoryWithOrgApacheLuceneStoreLockFactory:lf];
}

- (NSString *)getLockID {
  return [((OrgApacheLuceneStoreDirectory *) nil_chk(delegate_)) getLockID];
}

- (OrgApacheLuceneStoreLock *)makeLockWithNSString:(NSString *)name {
  return [((OrgApacheLuceneStoreDirectory *) nil_chk(delegate_)) makeLockWithNSString:name];
}

- (void)clearLockWithNSString:(NSString *)name {
  [((OrgApacheLuceneStoreDirectory *) nil_chk(delegate_)) clearLockWithNSString:name];
}

- (NSString *)description {
  return JreStrcat("$@$D$DC", @"NRTCachingDirectory(", delegate_, @"; maxCacheMB=", (maxCachedBytes_ / 1024 / 1024.), @" maxMergeSizeMB=", (maxMergeSizeBytes_ / 1024 / 1024.), ')');
}

- (IOSObjectArray *)listAll {
  @synchronized(self) {
    id<JavaUtilSet> files = new_JavaUtilHashSet_init();
    {
      IOSObjectArray *a__ = [((OrgApacheLuceneStoreRAMDirectory *) nil_chk(cache_)) listAll];
      NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      NSString * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        NSString *f = *b__++;
        [files addWithId:f];
      }
    }
    @try {
      {
        IOSObjectArray *a__ = [((OrgApacheLuceneStoreDirectory *) nil_chk(delegate_)) listAll];
        NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
        NSString * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          NSString *f = *b__++;
          [files addWithId:f];
        }
      }
    }
    @catch (OrgApacheLuceneStoreNoSuchDirectoryException *ex) {
      if ([files isEmpty]) {
        @throw ex;
      }
    }
    return [files toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[files size] type:NSString_class_()]];
  }
}

- (jlong)sizeInBytes {
  return [((OrgApacheLuceneStoreRAMDirectory *) nil_chk(cache_)) sizeInBytes];
}

- (jboolean)fileExistsWithNSString:(NSString *)name {
  @synchronized(self) {
    return [((OrgApacheLuceneStoreRAMDirectory *) nil_chk(cache_)) fileExistsWithNSString:name] || [((OrgApacheLuceneStoreDirectory *) nil_chk(delegate_)) fileExistsWithNSString:name];
  }
}

- (jlong)fileModifiedWithNSString:(NSString *)name {
  @synchronized(self) {
    if ([((OrgApacheLuceneStoreRAMDirectory *) nil_chk(cache_)) fileExistsWithNSString:name]) {
      return [cache_ fileModifiedWithNSString:name];
    }
    else {
      return [((OrgApacheLuceneStoreDirectory *) nil_chk(delegate_)) fileModifiedWithNSString:name];
    }
  }
}

- (void)touchFileWithNSString:(NSString *)name {
  @synchronized(self) {
    if ([((OrgApacheLuceneStoreRAMDirectory *) nil_chk(cache_)) fileExistsWithNSString:name]) {
      [cache_ touchFileWithNSString:name];
    }
    else {
      [((OrgApacheLuceneStoreDirectory *) nil_chk(delegate_)) touchFileWithNSString:name];
    }
  }
}

- (void)deleteFileWithNSString:(NSString *)name {
  @synchronized(self) {
    if ([((OrgApacheLuceneStoreRAMDirectory *) nil_chk(cache_)) fileExistsWithNSString:name]) {
      JreAssert(![((OrgApacheLuceneStoreDirectory *) nil_chk(delegate_)) fileExistsWithNSString:name], @"org/apache/lucene/store/NRTCachingDirectory.java:199 condition failed: assert !delegate.fileExists(name);");
      [cache_ deleteFileWithNSString:name];
    }
    else {
      [((OrgApacheLuceneStoreDirectory *) nil_chk(delegate_)) deleteFileWithNSString:name];
    }
  }
}

- (jlong)fileLengthWithNSString:(NSString *)name {
  @synchronized(self) {
    if ([((OrgApacheLuceneStoreRAMDirectory *) nil_chk(cache_)) fileExistsWithNSString:name]) {
      return [cache_ fileLengthWithNSString:name];
    }
    else {
      return [((OrgApacheLuceneStoreDirectory *) nil_chk(delegate_)) fileLengthWithNSString:name];
    }
  }
}

- (IOSObjectArray *)listCachedFiles {
  return [((OrgApacheLuceneStoreRAMDirectory *) nil_chk(cache_)) listAll];
}

- (OrgApacheLuceneStoreIndexOutput *)createOutputWithNSString:(NSString *)name {
  if ([self doCacheWriteWithNSString:name]) {
    return [((OrgApacheLuceneStoreRAMDirectory *) nil_chk(cache_)) createOutputWithNSString:name];
  }
  else {
    return [((OrgApacheLuceneStoreDirectory *) nil_chk(delegate_)) createOutputWithNSString:name];
  }
}

- (void)syncWithJavaUtilCollection:(id<JavaUtilCollection>)fileNames {
  for (NSString * __strong fileName in nil_chk(fileNames)) {
    OrgApacheLuceneStoreNRTCachingDirectory_unCacheWithNSString_(self, fileName);
  }
  [((OrgApacheLuceneStoreDirectory *) nil_chk(delegate_)) syncWithJavaUtilCollection:fileNames];
}

- (OrgApacheLuceneStoreIndexInput *)openInputWithNSString:(NSString *)name {
  @synchronized(self) {
    if ([((OrgApacheLuceneStoreRAMDirectory *) nil_chk(cache_)) fileExistsWithNSString:name]) {
      return [cache_ openInputWithNSString:name];
    }
    else {
      return [((OrgApacheLuceneStoreDirectory *) nil_chk(delegate_)) openInputWithNSString:name];
    }
  }
}

- (OrgApacheLuceneStoreIndexInput *)openInputWithNSString:(NSString *)name
                                                  withInt:(jint)bufferSize {
  @synchronized(self) {
    if ([((OrgApacheLuceneStoreRAMDirectory *) nil_chk(cache_)) fileExistsWithNSString:name]) {
      return [cache_ openInputWithNSString:name withInt:bufferSize];
    }
    else {
      return [((OrgApacheLuceneStoreDirectory *) nil_chk(delegate_)) openInputWithNSString:name withInt:bufferSize];
    }
  }
}

- (void)close {
  {
    IOSObjectArray *a__ = [((OrgApacheLuceneStoreRAMDirectory *) nil_chk(cache_)) listAll];
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *fileName = *b__++;
      OrgApacheLuceneStoreNRTCachingDirectory_unCacheWithNSString_(self, fileName);
    }
  }
  [cache_ close];
  [((OrgApacheLuceneStoreDirectory *) nil_chk(delegate_)) close];
}

- (OrgApacheLuceneIndexMergeScheduler *)getMergeScheduler {
  return new_OrgApacheLuceneStoreNRTCachingDirectory_1_initWithOrgApacheLuceneStoreNRTCachingDirectory_(self);
}

- (jboolean)doCacheWriteWithNSString:(NSString *)name {
  OrgApacheLuceneIndexMergePolicy_OneMerge *merge = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(merges_)) getWithId:JavaLangThread_currentThread()];
  return ![((NSString *) nil_chk(name)) isEqual:OrgApacheLuceneIndexIndexFileNames_SEGMENTS_GEN] && (merge == nil || merge->estimatedMergeBytes_ <= maxMergeSizeBytes_) && [((OrgApacheLuceneStoreRAMDirectory *) nil_chk(cache_)) sizeInBytes] <= maxCachedBytes_;
}

- (void)unCacheWithNSString:(NSString *)fileName {
  OrgApacheLuceneStoreNRTCachingDirectory_unCacheWithNSString_(self, fileName);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreLockFactory;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreLock;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 5, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, -1, -1, -1, -1, -1 },
    { NULL, "[LNSString;", 0x21, -1, -1, 3, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x21, 8, 5, 3, -1, -1, -1 },
    { NULL, "J", 0x21, 9, 5, 3, -1, -1, -1 },
    { NULL, "V", 0x21, 10, 5, 3, -1, 11, -1 },
    { NULL, "V", 0x21, 12, 5, 3, -1, -1, -1 },
    { NULL, "J", 0x21, 13, 5, 3, -1, -1, -1 },
    { NULL, "[LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreIndexOutput;", 0x1, 14, 5, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 16, 3, 17, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreIndexInput;", 0x21, 18, 5, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreIndexInput;", 0x21, 18, 19, 3, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexMergeScheduler;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 20, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 21, 5, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneStoreDirectory:withDouble:withDouble:);
  methods[1].selector = @selector(getLockFactory);
  methods[2].selector = @selector(setLockFactoryWithOrgApacheLuceneStoreLockFactory:);
  methods[3].selector = @selector(getLockID);
  methods[4].selector = @selector(makeLockWithNSString:);
  methods[5].selector = @selector(clearLockWithNSString:);
  methods[6].selector = @selector(description);
  methods[7].selector = @selector(listAll);
  methods[8].selector = @selector(sizeInBytes);
  methods[9].selector = @selector(fileExistsWithNSString:);
  methods[10].selector = @selector(fileModifiedWithNSString:);
  methods[11].selector = @selector(touchFileWithNSString:);
  methods[12].selector = @selector(deleteFileWithNSString:);
  methods[13].selector = @selector(fileLengthWithNSString:);
  methods[14].selector = @selector(listCachedFiles);
  methods[15].selector = @selector(createOutputWithNSString:);
  methods[16].selector = @selector(syncWithJavaUtilCollection:);
  methods[17].selector = @selector(openInputWithNSString:);
  methods[18].selector = @selector(openInputWithNSString:withInt:);
  methods[19].selector = @selector(close);
  methods[20].selector = @selector(getMergeScheduler);
  methods[21].selector = @selector(doCacheWriteWithNSString:);
  methods[22].selector = @selector(unCacheWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "cache_", "LOrgApacheLuceneStoreRAMDirectory;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "delegate_", "LOrgApacheLuceneStoreDirectory;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "maxMergeSizeBytes_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "maxCachedBytes_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "VERBOSE", "Z", .constantValue.asBOOL = OrgApacheLuceneStoreNRTCachingDirectory_VERBOSE, 0x1a, -1, -1, -1, -1 },
    { "merges_", "LJavaUtilConcurrentConcurrentHashMap;", .constantValue.asLong = 0, 0x12, -1, -1, 22, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneStoreDirectory;DD", "setLockFactory", "LOrgApacheLuceneStoreLockFactory;", "LJavaIoIOException;", "makeLock", "LNSString;", "clearLock", "toString", "fileExists", "fileModified", "touchFile", (void *)&OrgApacheLuceneStoreNRTCachingDirectory__Annotations$0, "deleteFile", "fileLength", "createOutput", "sync", "LJavaUtilCollection;", "(Ljava/util/Collection<Ljava/lang/String;>;)V", "openInput", "LNSString;I", "doCacheWrite", "unCache", "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Thread;Lorg/apache/lucene/index/MergePolicy$OneMerge;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreNRTCachingDirectory = { "NRTCachingDirectory", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x1, 23, 6, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreNRTCachingDirectory;
}

@end

void OrgApacheLuceneStoreNRTCachingDirectory_initWithOrgApacheLuceneStoreDirectory_withDouble_withDouble_(OrgApacheLuceneStoreNRTCachingDirectory *self, OrgApacheLuceneStoreDirectory *delegate, jdouble maxMergeSizeMB, jdouble maxCachedMB) {
  OrgApacheLuceneStoreDirectory_init(self);
  self->cache_ = new_OrgApacheLuceneStoreRAMDirectory_init();
  self->merges_ = new_JavaUtilConcurrentConcurrentHashMap_init();
  self->delegate_ = delegate;
  self->maxMergeSizeBytes_ = JreFpToLong((maxMergeSizeMB * 1024 * 1024));
  self->maxCachedBytes_ = JreFpToLong((maxCachedMB * 1024 * 1024));
}

OrgApacheLuceneStoreNRTCachingDirectory *new_OrgApacheLuceneStoreNRTCachingDirectory_initWithOrgApacheLuceneStoreDirectory_withDouble_withDouble_(OrgApacheLuceneStoreDirectory *delegate, jdouble maxMergeSizeMB, jdouble maxCachedMB) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreNRTCachingDirectory, initWithOrgApacheLuceneStoreDirectory_withDouble_withDouble_, delegate, maxMergeSizeMB, maxCachedMB)
}

OrgApacheLuceneStoreNRTCachingDirectory *create_OrgApacheLuceneStoreNRTCachingDirectory_initWithOrgApacheLuceneStoreDirectory_withDouble_withDouble_(OrgApacheLuceneStoreDirectory *delegate, jdouble maxMergeSizeMB, jdouble maxCachedMB) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreNRTCachingDirectory, initWithOrgApacheLuceneStoreDirectory_withDouble_withDouble_, delegate, maxMergeSizeMB, maxCachedMB)
}

void OrgApacheLuceneStoreNRTCachingDirectory_unCacheWithNSString_(OrgApacheLuceneStoreNRTCachingDirectory *self, NSString *fileName) {
  OrgApacheLuceneStoreIndexOutput *out;
  @synchronized(self) {
    if (![((OrgApacheLuceneStoreDirectory *) nil_chk(self->delegate_)) fileExistsWithNSString:fileName]) {
      JreAssert([((OrgApacheLuceneStoreRAMDirectory *) nil_chk(self->cache_)) fileExistsWithNSString:fileName], @"org/apache/lucene/store/NRTCachingDirectory.java:308 condition failed: assert cache.fileExists(fileName);");
      out = [self->delegate_ createOutputWithNSString:fileName];
    }
    else {
      out = nil;
    }
  }
  if (out != nil) {
    OrgApacheLuceneStoreIndexInput *in = nil;
    @try {
      in = [((OrgApacheLuceneStoreRAMDirectory *) nil_chk(self->cache_)) openInputWithNSString:fileName];
      [((OrgApacheLuceneStoreIndexInput *) nil_chk(in)) copyBytesWithOrgApacheLuceneStoreIndexOutput:out withLong:[in length]];
    }
    @finally {
      OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray newArrayWithObjects:(id[]){ in, out } count:2 type:JavaIoCloseable_class_()]);
    }
    @synchronized(self) {
      [self->cache_ deleteFileWithNSString:fileName];
    }
  }
}

IOSObjectArray *OrgApacheLuceneStoreNRTCachingDirectory__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreNRTCachingDirectory)

@implementation OrgApacheLuceneStoreNRTCachingDirectory_1

- (instancetype)initWithOrgApacheLuceneStoreNRTCachingDirectory:(OrgApacheLuceneStoreNRTCachingDirectory *)outer$ {
  OrgApacheLuceneStoreNRTCachingDirectory_1_initWithOrgApacheLuceneStoreNRTCachingDirectory_(self, outer$);
  return self;
}

- (void)doMergeWithOrgApacheLuceneIndexMergePolicy_OneMerge:(OrgApacheLuceneIndexMergePolicy_OneMerge *)merge {
  @try {
    (void) [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(this$0_->merges_)) putWithId:JavaLangThread_currentThread() withId:merge];
    [super doMergeWithOrgApacheLuceneIndexMergePolicy_OneMerge:merge];
  }
  @finally {
    (void) [this$0_->merges_ removeWithId:JavaLangThread_currentThread()];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneStoreNRTCachingDirectory:);
  methods[1].selector = @selector(doMergeWithOrgApacheLuceneIndexMergePolicy_OneMerge:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneStoreNRTCachingDirectory;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "doMerge", "LOrgApacheLuceneIndexMergePolicy_OneMerge;", "LJavaIoIOException;", "LOrgApacheLuceneStoreNRTCachingDirectory;", "getMergeScheduler" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreNRTCachingDirectory_1 = { "", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x8018, 2, 1, 3, -1, 4, -1, -1 };
  return &_OrgApacheLuceneStoreNRTCachingDirectory_1;
}

@end

void OrgApacheLuceneStoreNRTCachingDirectory_1_initWithOrgApacheLuceneStoreNRTCachingDirectory_(OrgApacheLuceneStoreNRTCachingDirectory_1 *self, OrgApacheLuceneStoreNRTCachingDirectory *outer$) {
  self->this$0_ = outer$;
  OrgApacheLuceneIndexConcurrentMergeScheduler_init(self);
}

OrgApacheLuceneStoreNRTCachingDirectory_1 *new_OrgApacheLuceneStoreNRTCachingDirectory_1_initWithOrgApacheLuceneStoreNRTCachingDirectory_(OrgApacheLuceneStoreNRTCachingDirectory *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreNRTCachingDirectory_1, initWithOrgApacheLuceneStoreNRTCachingDirectory_, outer$)
}

OrgApacheLuceneStoreNRTCachingDirectory_1 *create_OrgApacheLuceneStoreNRTCachingDirectory_1_initWithOrgApacheLuceneStoreNRTCachingDirectory_(OrgApacheLuceneStoreNRTCachingDirectory *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreNRTCachingDirectory_1, initWithOrgApacheLuceneStoreNRTCachingDirectory_, outer$)
}
