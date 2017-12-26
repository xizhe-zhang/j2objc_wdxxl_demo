//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/tuple/MutablePair.java
//

#include "J2ObjC_source.h"
#include "org/apache/commons/lang3/tuple/MutablePair.h"
#include "org/apache/commons/lang3/tuple/Pair.h"

inline jlong OrgApacheCommonsLang3TupleMutablePair_get_serialVersionUID(void);
#define OrgApacheCommonsLang3TupleMutablePair_serialVersionUID 4954918890077093841LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3TupleMutablePair, serialVersionUID, jlong)

@implementation OrgApacheCommonsLang3TupleMutablePair

+ (OrgApacheCommonsLang3TupleMutablePair *)ofWithId:(id)left
                                             withId:(id)right {
  return OrgApacheCommonsLang3TupleMutablePair_ofWithId_withId_(left, right);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsLang3TupleMutablePair_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithId:(id)left
                    withId:(id)right {
  OrgApacheCommonsLang3TupleMutablePair_initWithId_withId_(self, left, right);
  return self;
}

- (id)getLeft {
  return left_;
}

- (void)setLeftWithId:(id)left {
  self->left_ = left;
}

- (id)getRight {
  return right_;
}

- (void)setRightWithId:(id)right {
  self->right_ = right;
}

- (id)setValueWithId:(id)value {
  id result = [self getRight];
  [self setRightWithId:value];
  return result;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgApacheCommonsLang3TupleMutablePair;", 0x9, 0, 1, -1, 2, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, 3, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 4, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, 7, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 8, -1, -1 },
    { NULL, "V", 0x1, 9, 6, -1, 10, -1, -1 },
    { NULL, "LNSObject;", 0x1, 11, 6, -1, 12, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(ofWithId:withId:);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(initWithId:withId:);
  methods[3].selector = @selector(getLeft);
  methods[4].selector = @selector(setLeftWithId:);
  methods[5].selector = @selector(getRight);
  methods[6].selector = @selector(setRightWithId:);
  methods[7].selector = @selector(setValueWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgApacheCommonsLang3TupleMutablePair_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "left_", "LNSObject;", .constantValue.asLong = 0, 0x1, -1, -1, 13, -1 },
    { "right_", "LNSObject;", .constantValue.asLong = 0, 0x1, -1, -1, 14, -1 },
  };
  static const void *ptrTable[] = { "of", "LNSObject;LNSObject;", "<L:Ljava/lang/Object;R:Ljava/lang/Object;>(TL;TR;)Lorg/apache/commons/lang3/tuple/MutablePair<TL;TR;>;", "(TL;TR;)V", "()TL;", "setLeft", "LNSObject;", "(TL;)V", "()TR;", "setRight", "(TR;)V", "setValue", "(TR;)TR;", "TL;", "TR;", "<L:Ljava/lang/Object;R:Ljava/lang/Object;>Lorg/apache/commons/lang3/tuple/Pair<TL;TR;>;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3TupleMutablePair = { "MutablePair", "org.apache.commons.lang3.tuple", ptrTable, methods, fields, 7, 0x1, 8, 3, -1, -1, -1, 15, -1 };
  return &_OrgApacheCommonsLang3TupleMutablePair;
}

@end

OrgApacheCommonsLang3TupleMutablePair *OrgApacheCommonsLang3TupleMutablePair_ofWithId_withId_(id left, id right) {
  OrgApacheCommonsLang3TupleMutablePair_initialize();
  return new_OrgApacheCommonsLang3TupleMutablePair_initWithId_withId_(left, right);
}

void OrgApacheCommonsLang3TupleMutablePair_init(OrgApacheCommonsLang3TupleMutablePair *self) {
  OrgApacheCommonsLang3TuplePair_init(self);
}

OrgApacheCommonsLang3TupleMutablePair *new_OrgApacheCommonsLang3TupleMutablePair_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3TupleMutablePair, init)
}

OrgApacheCommonsLang3TupleMutablePair *create_OrgApacheCommonsLang3TupleMutablePair_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3TupleMutablePair, init)
}

void OrgApacheCommonsLang3TupleMutablePair_initWithId_withId_(OrgApacheCommonsLang3TupleMutablePair *self, id left, id right) {
  OrgApacheCommonsLang3TuplePair_init(self);
  self->left_ = left;
  self->right_ = right;
}

OrgApacheCommonsLang3TupleMutablePair *new_OrgApacheCommonsLang3TupleMutablePair_initWithId_withId_(id left, id right) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3TupleMutablePair, initWithId_withId_, left, right)
}

OrgApacheCommonsLang3TupleMutablePair *create_OrgApacheCommonsLang3TupleMutablePair_initWithId_withId_(id left, id right) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3TupleMutablePair, initWithId_withId_, left, right)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3TupleMutablePair)
