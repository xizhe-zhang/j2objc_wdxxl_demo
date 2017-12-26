//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/messages/MessageImpl.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Locale.h"
#include "org/apache/lucene/messages/MessageImpl.h"
#include "org/apache/lucene/messages/NLS.h"

@interface OrgApacheLuceneMessagesMessageImpl () {
 @public
  NSString *key_;
  IOSObjectArray *arguments_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneMessagesMessageImpl, key_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneMessagesMessageImpl, arguments_, IOSObjectArray *)

inline jlong OrgApacheLuceneMessagesMessageImpl_get_serialVersionUID(void);
#define OrgApacheLuceneMessagesMessageImpl_serialVersionUID -3077643314630884523LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneMessagesMessageImpl, serialVersionUID, jlong)

@implementation OrgApacheLuceneMessagesMessageImpl

- (instancetype)initWithNSString:(NSString *)key {
  OrgApacheLuceneMessagesMessageImpl_initWithNSString_(self, key);
  return self;
}

- (instancetype)initWithNSString:(NSString *)key
               withNSObjectArray:(IOSObjectArray *)args {
  OrgApacheLuceneMessagesMessageImpl_initWithNSString_withNSObjectArray_(self, key, args);
  return self;
}

- (IOSObjectArray *)getArguments {
  return self->arguments_;
}

- (NSString *)getKey {
  return self->key_;
}

- (NSString *)getLocalizedMessage {
  return [self getLocalizedMessageWithJavaUtilLocale:JavaUtilLocale_getDefault()];
}

- (NSString *)getLocalizedMessageWithJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheLuceneMessagesNLS_getLocalizedMessageWithNSString_withJavaUtilLocale_withNSObjectArray_([self getKey], locale, [self getArguments]);
}

- (NSString *)description {
  IOSObjectArray *args = [self getArguments];
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_initWithNSString_([self getKey]);
  if (args != nil) {
    for (jint i = 0; i < args->size_; i++) {
      [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:i == 0 ? @" " : @", "])) appendWithId:IOSObjectArray_Get(args, i)];
    }
  }
  return [sb description];
}

- (void)dealloc {
  RELEASE_(key_);
  RELEASE_(arguments_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x81, -1, 1, -1, -1, -1, -1 },
    { NULL, "[LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(initWithNSString:withNSObjectArray:);
  methods[2].selector = @selector(getArguments);
  methods[3].selector = @selector(getKey);
  methods[4].selector = @selector(getLocalizedMessage);
  methods[5].selector = @selector(getLocalizedMessageWithJavaUtilLocale:);
  methods[6].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgApacheLuceneMessagesMessageImpl_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "key_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "arguments_", "[LNSObject;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LNSString;[LNSObject;", "getLocalizedMessage", "LJavaUtilLocale;", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneMessagesMessageImpl = { "MessageImpl", "org.apache.lucene.messages", ptrTable, methods, fields, 7, 0x1, 7, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneMessagesMessageImpl;
}

@end

void OrgApacheLuceneMessagesMessageImpl_initWithNSString_(OrgApacheLuceneMessagesMessageImpl *self, NSString *key) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->arguments_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  JreStrongAssign(&self->key_, key);
}

OrgApacheLuceneMessagesMessageImpl *new_OrgApacheLuceneMessagesMessageImpl_initWithNSString_(NSString *key) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneMessagesMessageImpl, initWithNSString_, key)
}

OrgApacheLuceneMessagesMessageImpl *create_OrgApacheLuceneMessagesMessageImpl_initWithNSString_(NSString *key) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneMessagesMessageImpl, initWithNSString_, key)
}

void OrgApacheLuceneMessagesMessageImpl_initWithNSString_withNSObjectArray_(OrgApacheLuceneMessagesMessageImpl *self, NSString *key, IOSObjectArray *args) {
  OrgApacheLuceneMessagesMessageImpl_initWithNSString_(self, key);
  JreStrongAssign(&self->arguments_, args);
}

OrgApacheLuceneMessagesMessageImpl *new_OrgApacheLuceneMessagesMessageImpl_initWithNSString_withNSObjectArray_(NSString *key, IOSObjectArray *args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneMessagesMessageImpl, initWithNSString_withNSObjectArray_, key, args)
}

OrgApacheLuceneMessagesMessageImpl *create_OrgApacheLuceneMessagesMessageImpl_initWithNSString_withNSObjectArray_(NSString *key, IOSObjectArray *args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneMessagesMessageImpl, initWithNSString_withNSObjectArray_, key, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneMessagesMessageImpl)
