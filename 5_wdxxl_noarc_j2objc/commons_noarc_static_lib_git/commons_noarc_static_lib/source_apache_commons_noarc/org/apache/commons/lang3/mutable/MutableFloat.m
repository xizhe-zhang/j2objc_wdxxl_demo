//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/mutable/MutableFloat.java
//

#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "org/apache/commons/lang3/mutable/MutableFloat.h"

@interface OrgApacheCommonsLang3MutableMutableFloat () {
 @public
  jfloat value_;
}

@end

inline jlong OrgApacheCommonsLang3MutableMutableFloat_get_serialVersionUID(void);
#define OrgApacheCommonsLang3MutableMutableFloat_serialVersionUID 5787169186LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3MutableMutableFloat, serialVersionUID, jlong)

@implementation OrgApacheCommonsLang3MutableMutableFloat

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsLang3MutableMutableFloat_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)initWithFloat:(jfloat)value {
  OrgApacheCommonsLang3MutableMutableFloat_initWithFloat_(self, value);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSNumber:(NSNumber *)value {
  OrgApacheCommonsLang3MutableMutableFloat_initWithNSNumber_(self, value);
  return self;
}

- (instancetype)initWithNSString:(NSString *)value {
  OrgApacheCommonsLang3MutableMutableFloat_initWithNSString_(self, value);
  return self;
}

- (JavaLangFloat *)getValue {
  return JavaLangFloat_valueOfWithFloat_(self->value_);
}

- (void)setValueWithFloat:(jfloat)value {
  self->value_ = value;
}

- (void)setValueWithId:(NSNumber *)value {
  self->value_ = [((NSNumber *) nil_chk(value)) floatValue];
}

- (jboolean)isNaN {
  return JavaLangFloat_isNaNWithFloat_(value_);
}

- (jboolean)isInfinite {
  return JavaLangFloat_isInfiniteWithFloat_(value_);
}

- (void)increment {
  value_++;
}

- (void)decrement {
  value_--;
}

- (void)addWithFloat:(jfloat)operand {
  JrePlusAssignFloatF(&self->value_, operand);
}

- (void)addWithNSNumber:(NSNumber *)operand {
  JrePlusAssignFloatF(&self->value_, [((NSNumber *) nil_chk(operand)) floatValue]);
}

- (void)subtractWithFloat:(jfloat)operand {
  JreMinusAssignFloatF(&self->value_, operand);
}

- (void)subtractWithNSNumber:(NSNumber *)operand {
  JreMinusAssignFloatF(&self->value_, [((NSNumber *) nil_chk(operand)) floatValue]);
}

- (jint)intValue {
  return JreFpToInt(value_);
}

- (jlong)longLongValue {
  return JreFpToLong(value_);
}

- (jfloat)floatValue {
  return value_;
}

- (jdouble)doubleValue {
  return value_;
}

- (JavaLangFloat *)toFloat {
  return JavaLangFloat_valueOfWithFloat_([self floatValue]);
}

- (jboolean)isEqual:(id)obj {
  return [obj isKindOfClass:[OrgApacheCommonsLang3MutableMutableFloat class]] && JavaLangFloat_floatToIntBitsWithFloat_(((OrgApacheCommonsLang3MutableMutableFloat *) nil_chk(((OrgApacheCommonsLang3MutableMutableFloat *) cast_chk(obj, [OrgApacheCommonsLang3MutableMutableFloat class]))))->value_) == JavaLangFloat_floatToIntBitsWithFloat_(value_);
}

- (NSUInteger)hash {
  return JavaLangFloat_floatToIntBitsWithFloat_(value_);
}

- (jint)compareToWithId:(OrgApacheCommonsLang3MutableMutableFloat *)other {
  cast_chk(other, [OrgApacheCommonsLang3MutableMutableFloat class]);
  return JavaLangFloat_compareWithFloat_withFloat_(self->value_, ((OrgApacheCommonsLang3MutableMutableFloat *) nil_chk(other))->value_);
}

- (NSString *)description {
  return NSString_java_valueOfFloat_(value_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 3, -1, -1, -1 },
    { NULL, "LJavaLangFloat;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 7, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangFloat;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 10, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 13, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithFloat:);
  methods[2].selector = @selector(initWithNSNumber:);
  methods[3].selector = @selector(initWithNSString:);
  methods[4].selector = @selector(getValue);
  methods[5].selector = @selector(setValueWithFloat:);
  methods[6].selector = @selector(setValueWithId:);
  methods[7].selector = @selector(isNaN);
  methods[8].selector = @selector(isInfinite);
  methods[9].selector = @selector(increment);
  methods[10].selector = @selector(decrement);
  methods[11].selector = @selector(addWithFloat:);
  methods[12].selector = @selector(addWithNSNumber:);
  methods[13].selector = @selector(subtractWithFloat:);
  methods[14].selector = @selector(subtractWithNSNumber:);
  methods[15].selector = @selector(intValue);
  methods[16].selector = @selector(longLongValue);
  methods[17].selector = @selector(floatValue);
  methods[18].selector = @selector(doubleValue);
  methods[19].selector = @selector(toFloat);
  methods[20].selector = @selector(isEqual:);
  methods[21].selector = @selector(hash);
  methods[22].selector = @selector(compareToWithId:);
  methods[23].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgApacheCommonsLang3MutableMutableFloat_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "value_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "F", "LNSNumber;", "LNSString;", "LJavaLangNumberFormatException;", "setValue", "add", "subtract", "longValue", "equals", "LNSObject;", "hashCode", "compareTo", "LOrgApacheCommonsLang3MutableMutableFloat;", "toString", "Ljava/lang/Number;Ljava/lang/Comparable<Lorg/apache/commons/lang3/mutable/MutableFloat;>;Lorg/apache/commons/lang3/mutable/Mutable<Ljava/lang/Number;>;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3MutableMutableFloat = { "MutableFloat", "org.apache.commons.lang3.mutable", ptrTable, methods, fields, 7, 0x1, 24, 2, -1, -1, -1, 14, -1 };
  return &_OrgApacheCommonsLang3MutableMutableFloat;
}

@end

void OrgApacheCommonsLang3MutableMutableFloat_init(OrgApacheCommonsLang3MutableMutableFloat *self) {
  NSNumber_init(self);
}

OrgApacheCommonsLang3MutableMutableFloat *new_OrgApacheCommonsLang3MutableMutableFloat_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3MutableMutableFloat, init)
}

OrgApacheCommonsLang3MutableMutableFloat *create_OrgApacheCommonsLang3MutableMutableFloat_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3MutableMutableFloat, init)
}

void OrgApacheCommonsLang3MutableMutableFloat_initWithFloat_(OrgApacheCommonsLang3MutableMutableFloat *self, jfloat value) {
  NSNumber_init(self);
  self->value_ = value;
}

OrgApacheCommonsLang3MutableMutableFloat *new_OrgApacheCommonsLang3MutableMutableFloat_initWithFloat_(jfloat value) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3MutableMutableFloat, initWithFloat_, value)
}

OrgApacheCommonsLang3MutableMutableFloat *create_OrgApacheCommonsLang3MutableMutableFloat_initWithFloat_(jfloat value) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3MutableMutableFloat, initWithFloat_, value)
}

void OrgApacheCommonsLang3MutableMutableFloat_initWithNSNumber_(OrgApacheCommonsLang3MutableMutableFloat *self, NSNumber *value) {
  NSNumber_init(self);
  self->value_ = [((NSNumber *) nil_chk(value)) floatValue];
}

OrgApacheCommonsLang3MutableMutableFloat *new_OrgApacheCommonsLang3MutableMutableFloat_initWithNSNumber_(NSNumber *value) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3MutableMutableFloat, initWithNSNumber_, value)
}

OrgApacheCommonsLang3MutableMutableFloat *create_OrgApacheCommonsLang3MutableMutableFloat_initWithNSNumber_(NSNumber *value) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3MutableMutableFloat, initWithNSNumber_, value)
}

void OrgApacheCommonsLang3MutableMutableFloat_initWithNSString_(OrgApacheCommonsLang3MutableMutableFloat *self, NSString *value) {
  NSNumber_init(self);
  self->value_ = JavaLangFloat_parseFloatWithNSString_(value);
}

OrgApacheCommonsLang3MutableMutableFloat *new_OrgApacheCommonsLang3MutableMutableFloat_initWithNSString_(NSString *value) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3MutableMutableFloat, initWithNSString_, value)
}

OrgApacheCommonsLang3MutableMutableFloat *create_OrgApacheCommonsLang3MutableMutableFloat_initWithNSString_(NSString *value) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3MutableMutableFloat, initWithNSString_, value)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3MutableMutableFloat)
