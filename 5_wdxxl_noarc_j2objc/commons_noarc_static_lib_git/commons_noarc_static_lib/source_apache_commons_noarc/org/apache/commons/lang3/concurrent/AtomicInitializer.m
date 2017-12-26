//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/concurrent/AtomicInitializer.java
//

#include "J2ObjC_source.h"
#include "java/util/concurrent/atomic/AtomicReference.h"
#include "org/apache/commons/lang3/concurrent/AtomicInitializer.h"

@interface OrgApacheCommonsLang3ConcurrentAtomicInitializer () {
 @public
  JavaUtilConcurrentAtomicAtomicReference *reference_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3ConcurrentAtomicInitializer, reference_, JavaUtilConcurrentAtomicAtomicReference *)

@implementation OrgApacheCommonsLang3ConcurrentAtomicInitializer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsLang3ConcurrentAtomicInitializer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id)get {
  id result = [((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(reference_)) get];
  if (result == nil) {
    result = [self initialize__];
    if (![reference_ compareAndSetWithId:nil withId:result]) {
      result = [reference_ get];
    }
  }
  return result;
}

- (id)initialize__ {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)dealloc {
  RELEASE_(reference_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, 0, 1, -1, -1 },
    { NULL, "LNSObject;", 0x404, 2, -1, 0, 1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(get);
  methods[2].selector = @selector(initialize__);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "reference_", "LJavaUtilConcurrentAtomicAtomicReference;", .constantValue.asLong = 0, 0x12, -1, -1, 3, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheCommonsLang3ConcurrentConcurrentException;", "()TT;", "initialize", "Ljava/util/concurrent/atomic/AtomicReference<TT;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer<TT;>;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3ConcurrentAtomicInitializer = { "AtomicInitializer", "org.apache.commons.lang3.concurrent", ptrTable, methods, fields, 7, 0x401, 3, 1, -1, -1, -1, 4, -1 };
  return &_OrgApacheCommonsLang3ConcurrentAtomicInitializer;
}

@end

void OrgApacheCommonsLang3ConcurrentAtomicInitializer_init(OrgApacheCommonsLang3ConcurrentAtomicInitializer *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->reference_, new_JavaUtilConcurrentAtomicAtomicReference_init());
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3ConcurrentAtomicInitializer)
