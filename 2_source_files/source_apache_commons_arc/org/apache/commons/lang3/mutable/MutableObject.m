//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/mutable/MutableObject.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/commons/lang3/mutable/MutableObject.h"

@interface OrgApacheCommonsLang3MutableMutableObject () {
 @public
  id value_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3MutableMutableObject, value_, id)

inline jlong OrgApacheCommonsLang3MutableMutableObject_get_serialVersionUID(void);
#define OrgApacheCommonsLang3MutableMutableObject_serialVersionUID 86241875189LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3MutableMutableObject, serialVersionUID, jlong)

@implementation OrgApacheCommonsLang3MutableMutableObject

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsLang3MutableMutableObject_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithId:(id)value {
  OrgApacheCommonsLang3MutableMutableObject_initWithId_(self, value);
  return self;
}

- (id)getValue {
  return self->value_;
}

- (void)setValueWithId:(id)value {
  self->value_ = value;
}

- (jboolean)isEqual:(id)obj {
  if (obj == nil) {
    return false;
  }
  if (self == obj) {
    return true;
  }
  if ([self java_getClass] == [obj java_getClass]) {
    OrgApacheCommonsLang3MutableMutableObject *that = (OrgApacheCommonsLang3MutableMutableObject *) cast_chk(obj, [OrgApacheCommonsLang3MutableMutableObject class]);
    return [nil_chk(self->value_) isEqual:that->value_];
  }
  return false;
}

- (NSUInteger)hash {
  return value_ == nil ? 0 : ((jint) [value_ hash]);
}

- (NSString *)description {
  return value_ == nil ? @"null" : [value_ description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "V", 0x1, 3, 0, -1, 1, -1, -1 },
    { NULL, "Z", 0x1, 4, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithId:);
  methods[2].selector = @selector(getValue);
  methods[3].selector = @selector(setValueWithId:);
  methods[4].selector = @selector(isEqual:);
  methods[5].selector = @selector(hash);
  methods[6].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgApacheCommonsLang3MutableMutableObject_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "value_", "LNSObject;", .constantValue.asLong = 0, 0x2, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "LNSObject;", "(TT;)V", "()TT;", "setValue", "equals", "hashCode", "toString", "TT;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lorg/apache/commons/lang3/mutable/Mutable<TT;>;Ljava/io/Serializable;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3MutableMutableObject = { "MutableObject", "org.apache.commons.lang3.mutable", ptrTable, methods, fields, 7, 0x1, 7, 2, -1, -1, -1, 8, -1 };
  return &_OrgApacheCommonsLang3MutableMutableObject;
}

@end

void OrgApacheCommonsLang3MutableMutableObject_init(OrgApacheCommonsLang3MutableMutableObject *self) {
  NSObject_init(self);
}

OrgApacheCommonsLang3MutableMutableObject *new_OrgApacheCommonsLang3MutableMutableObject_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3MutableMutableObject, init)
}

OrgApacheCommonsLang3MutableMutableObject *create_OrgApacheCommonsLang3MutableMutableObject_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3MutableMutableObject, init)
}

void OrgApacheCommonsLang3MutableMutableObject_initWithId_(OrgApacheCommonsLang3MutableMutableObject *self, id value) {
  NSObject_init(self);
  self->value_ = value;
}

OrgApacheCommonsLang3MutableMutableObject *new_OrgApacheCommonsLang3MutableMutableObject_initWithId_(id value) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3MutableMutableObject, initWithId_, value)
}

OrgApacheCommonsLang3MutableMutableObject *create_OrgApacheCommonsLang3MutableMutableObject_initWithId_(id value) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3MutableMutableObject, initWithId_, value)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3MutableMutableObject)
