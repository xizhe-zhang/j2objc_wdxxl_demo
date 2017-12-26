//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-codec-1.10-sources.jar!org/apache/commons/codec/net/Utils.java
//

#include "J2ObjC_source.h"
#include "java/lang/Character.h"
#include "org/apache/commons/codec/DecoderException.h"
#include "org/apache/commons/codec/net/URLCodec.h"
#include "org/apache/commons/codec/net/Utils.h"

@implementation OrgApacheCommonsCodecNetUtils

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsCodecNetUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jint)digit16WithByte:(jbyte)b {
  return OrgApacheCommonsCodecNetUtils_digit16WithByte_(b);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x8, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(digit16WithByte:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "digit16", "B", "LOrgApacheCommonsCodecDecoderException;" };
  static const J2ObjcClassInfo _OrgApacheCommonsCodecNetUtils = { "Utils", "org.apache.commons.codec.net", ptrTable, methods, NULL, 7, 0x0, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsCodecNetUtils;
}

@end

void OrgApacheCommonsCodecNetUtils_init(OrgApacheCommonsCodecNetUtils *self) {
  NSObject_init(self);
}

OrgApacheCommonsCodecNetUtils *new_OrgApacheCommonsCodecNetUtils_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecNetUtils, init)
}

OrgApacheCommonsCodecNetUtils *create_OrgApacheCommonsCodecNetUtils_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecNetUtils, init)
}

jint OrgApacheCommonsCodecNetUtils_digit16WithByte_(jbyte b) {
  OrgApacheCommonsCodecNetUtils_initialize();
  jint i = JavaLangCharacter_digitWithChar_withInt_((jchar) b, OrgApacheCommonsCodecNetURLCodec_RADIX);
  if (i == -1) {
    @throw create_OrgApacheCommonsCodecDecoderException_initWithNSString_(JreStrcat("$I$B", @"Invalid URL encoding: not a valid digit (radix ", OrgApacheCommonsCodecNetURLCodec_RADIX, @"): ", b));
  }
  return i;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsCodecNetUtils)
