//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/concurrent/BackgroundInitializer.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Thread.h"
#include "java/util/concurrent/Callable.h"
#include "java/util/concurrent/ExecutionException.h"
#include "java/util/concurrent/ExecutorService.h"
#include "java/util/concurrent/Executors.h"
#include "java/util/concurrent/Future.h"
#include "org/apache/commons/lang3/concurrent/BackgroundInitializer.h"
#include "org/apache/commons/lang3/concurrent/ConcurrentException.h"
#include "org/apache/commons/lang3/concurrent/ConcurrentUtils.h"

@interface OrgApacheCommonsLang3ConcurrentBackgroundInitializer () {
 @public
  id<JavaUtilConcurrentExecutorService> externalExecutor_;
  id<JavaUtilConcurrentExecutorService> executor_;
  id<JavaUtilConcurrentFuture> future_;
}

- (id<JavaUtilConcurrentCallable>)createTaskWithJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)execDestroy;

- (id<JavaUtilConcurrentExecutorService>)createExecutor;

@end

J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3ConcurrentBackgroundInitializer, externalExecutor_, id<JavaUtilConcurrentExecutorService>)
J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3ConcurrentBackgroundInitializer, executor_, id<JavaUtilConcurrentExecutorService>)
J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3ConcurrentBackgroundInitializer, future_, id<JavaUtilConcurrentFuture>)

__attribute__((unused)) static id<JavaUtilConcurrentExecutorService> OrgApacheCommonsLang3ConcurrentBackgroundInitializer_getExternalExecutor(OrgApacheCommonsLang3ConcurrentBackgroundInitializer *self);

__attribute__((unused)) static void OrgApacheCommonsLang3ConcurrentBackgroundInitializer_setExternalExecutorWithJavaUtilConcurrentExecutorService_(OrgApacheCommonsLang3ConcurrentBackgroundInitializer *self, id<JavaUtilConcurrentExecutorService> externalExecutor);

__attribute__((unused)) static id<JavaUtilConcurrentCallable> OrgApacheCommonsLang3ConcurrentBackgroundInitializer_createTaskWithJavaUtilConcurrentExecutorService_(OrgApacheCommonsLang3ConcurrentBackgroundInitializer *self, id<JavaUtilConcurrentExecutorService> execDestroy);

__attribute__((unused)) static id<JavaUtilConcurrentExecutorService> OrgApacheCommonsLang3ConcurrentBackgroundInitializer_createExecutor(OrgApacheCommonsLang3ConcurrentBackgroundInitializer *self);

@interface OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask : NSObject < JavaUtilConcurrentCallable > {
 @public
  OrgApacheCommonsLang3ConcurrentBackgroundInitializer *this$0_;
  id<JavaUtilConcurrentExecutorService> execFinally_;
}

- (instancetype)initWithOrgApacheCommonsLang3ConcurrentBackgroundInitializer:(OrgApacheCommonsLang3ConcurrentBackgroundInitializer *)outer$
                                       withJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)exec;

- (id)call;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask)

J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask, execFinally_, id<JavaUtilConcurrentExecutorService>)

__attribute__((unused)) static void OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask_initWithOrgApacheCommonsLang3ConcurrentBackgroundInitializer_withJavaUtilConcurrentExecutorService_(OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask *self, OrgApacheCommonsLang3ConcurrentBackgroundInitializer *outer$, id<JavaUtilConcurrentExecutorService> exec);

__attribute__((unused)) static OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask *new_OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask_initWithOrgApacheCommonsLang3ConcurrentBackgroundInitializer_withJavaUtilConcurrentExecutorService_(OrgApacheCommonsLang3ConcurrentBackgroundInitializer *outer$, id<JavaUtilConcurrentExecutorService> exec) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask *create_OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask_initWithOrgApacheCommonsLang3ConcurrentBackgroundInitializer_withJavaUtilConcurrentExecutorService_(OrgApacheCommonsLang3ConcurrentBackgroundInitializer *outer$, id<JavaUtilConcurrentExecutorService> exec);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask)

@implementation OrgApacheCommonsLang3ConcurrentBackgroundInitializer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsLang3ConcurrentBackgroundInitializer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)exec {
  OrgApacheCommonsLang3ConcurrentBackgroundInitializer_initWithJavaUtilConcurrentExecutorService_(self, exec);
  return self;
}

- (id<JavaUtilConcurrentExecutorService>)getExternalExecutor {
  return OrgApacheCommonsLang3ConcurrentBackgroundInitializer_getExternalExecutor(self);
}

- (jboolean)isStarted {
  @synchronized(self) {
    return future_ != nil;
  }
}

- (void)setExternalExecutorWithJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)externalExecutor {
  OrgApacheCommonsLang3ConcurrentBackgroundInitializer_setExternalExecutorWithJavaUtilConcurrentExecutorService_(self, externalExecutor);
}

- (jboolean)start {
  @synchronized(self) {
    if (![self isStarted]) {
      id<JavaUtilConcurrentExecutorService> tempExec;
      executor_ = OrgApacheCommonsLang3ConcurrentBackgroundInitializer_getExternalExecutor(self);
      if (executor_ == nil) {
        executor_ = tempExec = OrgApacheCommonsLang3ConcurrentBackgroundInitializer_createExecutor(self);
      }
      else {
        tempExec = nil;
      }
      future_ = [executor_ submitWithJavaUtilConcurrentCallable:OrgApacheCommonsLang3ConcurrentBackgroundInitializer_createTaskWithJavaUtilConcurrentExecutorService_(self, tempExec)];
      return true;
    }
    return false;
  }
}

- (id)get {
  @try {
    return [((id<JavaUtilConcurrentFuture>) nil_chk([self getFuture])) get];
  }
  @catch (JavaUtilConcurrentExecutionException *execex) {
    OrgApacheCommonsLang3ConcurrentConcurrentUtils_handleCauseWithJavaUtilConcurrentExecutionException_(execex);
    return nil;
  }
  @catch (JavaLangInterruptedException *iex) {
    [((JavaLangThread *) nil_chk(JavaLangThread_currentThread())) interrupt];
    @throw new_OrgApacheCommonsLang3ConcurrentConcurrentException_initWithJavaLangThrowable_(iex);
  }
}

- (id<JavaUtilConcurrentFuture>)getFuture {
  @synchronized(self) {
    if (future_ == nil) {
      @throw new_JavaLangIllegalStateException_initWithNSString_(@"start() must be called first!");
    }
    return future_;
  }
}

- (id<JavaUtilConcurrentExecutorService>)getActiveExecutor {
  @synchronized(self) {
    return executor_;
  }
}

- (jint)getTaskCount {
  return 1;
}

- (id)initialize__ {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<JavaUtilConcurrentCallable>)createTaskWithJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)execDestroy {
  return OrgApacheCommonsLang3ConcurrentBackgroundInitializer_createTaskWithJavaUtilConcurrentExecutorService_(self, execDestroy);
}

- (id<JavaUtilConcurrentExecutorService>)createExecutor {
  return OrgApacheCommonsLang3ConcurrentBackgroundInitializer_createExecutor(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "LJavaUtilConcurrentExecutorService;", 0x31, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x31, 1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, 2, 3, -1, -1 },
    { NULL, "LJavaUtilConcurrentFuture;", 0x21, -1, -1, -1, 4, -1, -1 },
    { NULL, "LJavaUtilConcurrentExecutorService;", 0x34, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x404, 5, -1, 6, 3, -1, -1 },
    { NULL, "LJavaUtilConcurrentCallable;", 0x2, 7, 0, -1, 8, -1, -1 },
    { NULL, "LJavaUtilConcurrentExecutorService;", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithJavaUtilConcurrentExecutorService:);
  methods[2].selector = @selector(getExternalExecutor);
  methods[3].selector = @selector(isStarted);
  methods[4].selector = @selector(setExternalExecutorWithJavaUtilConcurrentExecutorService:);
  methods[5].selector = @selector(start);
  methods[6].selector = @selector(get);
  methods[7].selector = @selector(getFuture);
  methods[8].selector = @selector(getActiveExecutor);
  methods[9].selector = @selector(getTaskCount);
  methods[10].selector = @selector(initialize__);
  methods[11].selector = @selector(createTaskWithJavaUtilConcurrentExecutorService:);
  methods[12].selector = @selector(createExecutor);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "externalExecutor_", "LJavaUtilConcurrentExecutorService;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "executor_", "LJavaUtilConcurrentExecutorService;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "future_", "LJavaUtilConcurrentFuture;", .constantValue.asLong = 0, 0x2, -1, -1, 9, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilConcurrentExecutorService;", "setExternalExecutor", "LOrgApacheCommonsLang3ConcurrentConcurrentException;", "()TT;", "()Ljava/util/concurrent/Future<TT;>;", "initialize", "LJavaLangException;", "createTask", "(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Callable<TT;>;", "Ljava/util/concurrent/Future<TT;>;", "LOrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer<TT;>;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3ConcurrentBackgroundInitializer = { "BackgroundInitializer", "org.apache.commons.lang3.concurrent", ptrTable, methods, fields, 7, 0x401, 13, 3, -1, 10, -1, 11, -1 };
  return &_OrgApacheCommonsLang3ConcurrentBackgroundInitializer;
}

@end

void OrgApacheCommonsLang3ConcurrentBackgroundInitializer_init(OrgApacheCommonsLang3ConcurrentBackgroundInitializer *self) {
  OrgApacheCommonsLang3ConcurrentBackgroundInitializer_initWithJavaUtilConcurrentExecutorService_(self, nil);
}

void OrgApacheCommonsLang3ConcurrentBackgroundInitializer_initWithJavaUtilConcurrentExecutorService_(OrgApacheCommonsLang3ConcurrentBackgroundInitializer *self, id<JavaUtilConcurrentExecutorService> exec) {
  NSObject_init(self);
  OrgApacheCommonsLang3ConcurrentBackgroundInitializer_setExternalExecutorWithJavaUtilConcurrentExecutorService_(self, exec);
}

id<JavaUtilConcurrentExecutorService> OrgApacheCommonsLang3ConcurrentBackgroundInitializer_getExternalExecutor(OrgApacheCommonsLang3ConcurrentBackgroundInitializer *self) {
  @synchronized(self) {
    return self->externalExecutor_;
  }
}

void OrgApacheCommonsLang3ConcurrentBackgroundInitializer_setExternalExecutorWithJavaUtilConcurrentExecutorService_(OrgApacheCommonsLang3ConcurrentBackgroundInitializer *self, id<JavaUtilConcurrentExecutorService> externalExecutor) {
  @synchronized(self) {
    if ([self isStarted]) {
      @throw new_JavaLangIllegalStateException_initWithNSString_(@"Cannot set ExecutorService after start()!");
    }
    self->externalExecutor_ = externalExecutor;
  }
}

id<JavaUtilConcurrentCallable> OrgApacheCommonsLang3ConcurrentBackgroundInitializer_createTaskWithJavaUtilConcurrentExecutorService_(OrgApacheCommonsLang3ConcurrentBackgroundInitializer *self, id<JavaUtilConcurrentExecutorService> execDestroy) {
  return new_OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask_initWithOrgApacheCommonsLang3ConcurrentBackgroundInitializer_withJavaUtilConcurrentExecutorService_(self, execDestroy);
}

id<JavaUtilConcurrentExecutorService> OrgApacheCommonsLang3ConcurrentBackgroundInitializer_createExecutor(OrgApacheCommonsLang3ConcurrentBackgroundInitializer *self) {
  return JavaUtilConcurrentExecutors_newFixedThreadPoolWithInt_([self getTaskCount]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3ConcurrentBackgroundInitializer)

@implementation OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask

- (instancetype)initWithOrgApacheCommonsLang3ConcurrentBackgroundInitializer:(OrgApacheCommonsLang3ConcurrentBackgroundInitializer *)outer$
                                       withJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)exec {
  OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask_initWithOrgApacheCommonsLang3ConcurrentBackgroundInitializer_withJavaUtilConcurrentExecutorService_(self, outer$, exec);
  return self;
}

- (id)call {
  @try {
    return [this$0_ initialize__];
  }
  @finally {
    if (execFinally_ != nil) {
      [execFinally_ shutdown];
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, 1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheCommonsLang3ConcurrentBackgroundInitializer:withJavaUtilConcurrentExecutorService:);
  methods[1].selector = @selector(call);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheCommonsLang3ConcurrentBackgroundInitializer;", .constantValue.asLong = 0, 0x1012, -1, -1, 3, -1 },
    { "execFinally_", "LJavaUtilConcurrentExecutorService;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilConcurrentExecutorService;", "LJavaLangException;", "()TT;", "Lorg/apache/commons/lang3/concurrent/BackgroundInitializer<TT;>;", "LOrgApacheCommonsLang3ConcurrentBackgroundInitializer;", "Ljava/lang/Object;Ljava/util/concurrent/Callable<TT;>;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask = { "InitializationTask", "org.apache.commons.lang3.concurrent", ptrTable, methods, fields, 7, 0x2, 2, 2, 4, -1, -1, 5, -1 };
  return &_OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask;
}

@end

void OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask_initWithOrgApacheCommonsLang3ConcurrentBackgroundInitializer_withJavaUtilConcurrentExecutorService_(OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask *self, OrgApacheCommonsLang3ConcurrentBackgroundInitializer *outer$, id<JavaUtilConcurrentExecutorService> exec) {
  self->this$0_ = outer$;
  NSObject_init(self);
  self->execFinally_ = exec;
}

OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask *new_OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask_initWithOrgApacheCommonsLang3ConcurrentBackgroundInitializer_withJavaUtilConcurrentExecutorService_(OrgApacheCommonsLang3ConcurrentBackgroundInitializer *outer$, id<JavaUtilConcurrentExecutorService> exec) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask, initWithOrgApacheCommonsLang3ConcurrentBackgroundInitializer_withJavaUtilConcurrentExecutorService_, outer$, exec)
}

OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask *create_OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask_initWithOrgApacheCommonsLang3ConcurrentBackgroundInitializer_withJavaUtilConcurrentExecutorService_(OrgApacheCommonsLang3ConcurrentBackgroundInitializer *outer$, id<JavaUtilConcurrentExecutorService> exec) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask, initWithOrgApacheCommonsLang3ConcurrentBackgroundInitializer_withJavaUtilConcurrentExecutorService_, outer$, exec)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3ConcurrentBackgroundInitializer_InitializationTask)
