//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/NRTManagerReopenThread.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Math.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/lang/Throwable.h"
#include "org/apache/lucene/search/NRTManager.h"
#include "org/apache/lucene/search/NRTManagerReopenThread.h"
#include "org/apache/lucene/util/ThreadInterruptedException.h"

@interface OrgApacheLuceneSearchNRTManagerReopenThread () {
 @public
  OrgApacheLuceneSearchNRTManager *manager_;
  jlong targetMaxStaleNS_;
  jlong targetMinStaleNS_;
  jboolean finish_;
  jlong waitingGen_;
  jboolean waitingNeedsDeletes_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchNRTManagerReopenThread, manager_, OrgApacheLuceneSearchNRTManager *)

@implementation OrgApacheLuceneSearchNRTManagerReopenThread

- (instancetype)initWithOrgApacheLuceneSearchNRTManager:(OrgApacheLuceneSearchNRTManager *)manager
                                             withDouble:(jdouble)targetMaxStaleSec
                                             withDouble:(jdouble)targetMinStaleSec {
  OrgApacheLuceneSearchNRTManagerReopenThread_initWithOrgApacheLuceneSearchNRTManager_withDouble_withDouble_(self, manager, targetMaxStaleSec, targetMinStaleSec);
  return self;
}

- (void)close {
  @synchronized(self) {
    [((OrgApacheLuceneSearchNRTManager *) nil_chk(manager_)) removeWaitingListenerWithOrgApacheLuceneSearchNRTManager_WaitingListener:self];
    self->finish_ = true;
    [self java_notify];
    @try {
      [self join];
    }
    @catch (JavaLangInterruptedException *ie) {
      @throw create_OrgApacheLuceneUtilThreadInterruptedException_initWithJavaLangInterruptedException_(ie);
    }
  }
}

- (void)waitingWithBoolean:(jboolean)needsDeletes
                  withLong:(jlong)targetGen {
  @synchronized(self) {
    waitingNeedsDeletes_ |= needsDeletes;
    waitingGen_ = JavaLangMath_maxWithLong_withLong_(waitingGen_, targetGen);
    [self java_notify];
  }
}

- (void)run {
  jlong lastReopenStartNS = JavaLangSystem_nanoTime();
  @try {
    while (true) {
      jboolean hasWaiting = false;
      @synchronized(self) {
        while (!finish_) {
          hasWaiting = (waitingGen_ > [((OrgApacheLuceneSearchNRTManager *) nil_chk(manager_)) getCurrentSearchingGenWithBoolean:waitingNeedsDeletes_]);
          jlong nextReopenStartNS = lastReopenStartNS + (hasWaiting ? targetMinStaleNS_ : targetMaxStaleNS_);
          jlong sleepNS = nextReopenStartNS - JavaLangSystem_nanoTime();
          if (sleepNS > 0) {
            @try {
              [self java_waitWithLong:sleepNS / 1000000 withInt:(jint) (sleepNS % 1000000)];
            }
            @catch (JavaLangInterruptedException *ie) {
              [((JavaLangThread *) nil_chk(JavaLangThread_currentThread())) interrupt];
              finish_ = true;
              break;
            }
          }
          else {
            break;
          }
        }
        if (finish_) {
          return;
        }
      }
      lastReopenStartNS = JavaLangSystem_nanoTime();
      @try {
        [((OrgApacheLuceneSearchNRTManager *) nil_chk(manager_)) maybeReopenWithBoolean:waitingNeedsDeletes_];
      }
      @catch (JavaIoIOException *ioe) {
        @throw create_JavaLangRuntimeException_initWithJavaLangThrowable_(ioe);
      }
    }
  }
  @catch (JavaLangThrowable *t) {
    @throw create_JavaLangRuntimeException_initWithJavaLangThrowable_(t);
  }
}

- (void)dealloc {
  RELEASE_(manager_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x21, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchNRTManager:withDouble:withDouble:);
  methods[1].selector = @selector(close);
  methods[2].selector = @selector(waitingWithBoolean:withLong:);
  methods[3].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "manager_", "LOrgApacheLuceneSearchNRTManager;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "targetMaxStaleNS_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "targetMinStaleNS_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "finish_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "waitingGen_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "waitingNeedsDeletes_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchNRTManager;DD", "waiting", "ZJ" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchNRTManagerReopenThread = { "NRTManagerReopenThread", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 4, 6, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchNRTManagerReopenThread;
}

@end

void OrgApacheLuceneSearchNRTManagerReopenThread_initWithOrgApacheLuceneSearchNRTManager_withDouble_withDouble_(OrgApacheLuceneSearchNRTManagerReopenThread *self, OrgApacheLuceneSearchNRTManager *manager, jdouble targetMaxStaleSec, jdouble targetMinStaleSec) {
  JavaLangThread_init(self);
  if (targetMaxStaleSec < targetMinStaleSec) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$D$DC", @"targetMaxScaleSec (= ", targetMaxStaleSec, @") < targetMinStaleSec (=", targetMinStaleSec, ')'));
  }
  JreStrongAssign(&self->manager_, manager);
  self->targetMaxStaleNS_ = JreFpToLong((1000000000 * targetMaxStaleSec));
  self->targetMinStaleNS_ = JreFpToLong((1000000000 * targetMinStaleSec));
  [((OrgApacheLuceneSearchNRTManager *) nil_chk(manager)) addWaitingListenerWithOrgApacheLuceneSearchNRTManager_WaitingListener:self];
}

OrgApacheLuceneSearchNRTManagerReopenThread *new_OrgApacheLuceneSearchNRTManagerReopenThread_initWithOrgApacheLuceneSearchNRTManager_withDouble_withDouble_(OrgApacheLuceneSearchNRTManager *manager, jdouble targetMaxStaleSec, jdouble targetMinStaleSec) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchNRTManagerReopenThread, initWithOrgApacheLuceneSearchNRTManager_withDouble_withDouble_, manager, targetMaxStaleSec, targetMinStaleSec)
}

OrgApacheLuceneSearchNRTManagerReopenThread *create_OrgApacheLuceneSearchNRTManagerReopenThread_initWithOrgApacheLuceneSearchNRTManager_withDouble_withDouble_(OrgApacheLuceneSearchNRTManager *manager, jdouble targetMaxStaleSec, jdouble targetMinStaleSec) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchNRTManagerReopenThread, initWithOrgApacheLuceneSearchNRTManager_withDouble_withDouble_, manager, targetMaxStaleSec, targetMinStaleSec)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchNRTManagerReopenThread)
