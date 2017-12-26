//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-codec-1.10-sources.jar!org/apache/commons/codec/binary/Hex.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Character.h"
#include "java/lang/ClassCastException.h"
#include "java/nio/charset/Charset.h"
#include "org/apache/commons/codec/Charsets.h"
#include "org/apache/commons/codec/DecoderException.h"
#include "org/apache/commons/codec/EncoderException.h"
#include "org/apache/commons/codec/binary/Hex.h"

@interface OrgApacheCommonsCodecBinaryHex () {
 @public
  JavaNioCharsetCharset *charset_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheCommonsCodecBinaryHex, charset_, JavaNioCharsetCharset *)

inline IOSCharArray *OrgApacheCommonsCodecBinaryHex_get_DIGITS_LOWER(void);
static IOSCharArray *OrgApacheCommonsCodecBinaryHex_DIGITS_LOWER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsCodecBinaryHex, DIGITS_LOWER, IOSCharArray *)

inline IOSCharArray *OrgApacheCommonsCodecBinaryHex_get_DIGITS_UPPER(void);
static IOSCharArray *OrgApacheCommonsCodecBinaryHex_DIGITS_UPPER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsCodecBinaryHex, DIGITS_UPPER, IOSCharArray *)

J2OBJC_INITIALIZED_DEFN(OrgApacheCommonsCodecBinaryHex)

JavaNioCharsetCharset *OrgApacheCommonsCodecBinaryHex_DEFAULT_CHARSET;
NSString *OrgApacheCommonsCodecBinaryHex_DEFAULT_CHARSET_NAME = @"UTF-8";

@implementation OrgApacheCommonsCodecBinaryHex

+ (IOSByteArray *)decodeHexWithCharArray:(IOSCharArray *)data {
  return OrgApacheCommonsCodecBinaryHex_decodeHexWithCharArray_(data);
}

+ (IOSCharArray *)encodeHexWithByteArray:(IOSByteArray *)data {
  return OrgApacheCommonsCodecBinaryHex_encodeHexWithByteArray_(data);
}

+ (IOSCharArray *)encodeHexWithByteArray:(IOSByteArray *)data
                             withBoolean:(jboolean)toLowerCase {
  return OrgApacheCommonsCodecBinaryHex_encodeHexWithByteArray_withBoolean_(data, toLowerCase);
}

+ (IOSCharArray *)encodeHexWithByteArray:(IOSByteArray *)data
                           withCharArray:(IOSCharArray *)toDigits {
  return OrgApacheCommonsCodecBinaryHex_encodeHexWithByteArray_withCharArray_(data, toDigits);
}

+ (NSString *)encodeHexStringWithByteArray:(IOSByteArray *)data {
  return OrgApacheCommonsCodecBinaryHex_encodeHexStringWithByteArray_(data);
}

+ (jint)toDigitWithChar:(jchar)ch
                withInt:(jint)index {
  return OrgApacheCommonsCodecBinaryHex_toDigitWithChar_withInt_(ch, index);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsCodecBinaryHex_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset {
  OrgApacheCommonsCodecBinaryHex_initWithJavaNioCharsetCharset_(self, charset);
  return self;
}

- (instancetype)initWithNSString:(NSString *)charsetName {
  OrgApacheCommonsCodecBinaryHex_initWithNSString_(self, charsetName);
  return self;
}

- (IOSByteArray *)decodeWithByteArray:(IOSByteArray *)array {
  return OrgApacheCommonsCodecBinaryHex_decodeHexWithCharArray_([[NSString java_stringWithBytes:array charset:[self getCharset]] java_toCharArray]);
}

- (id)decodeWithId:(id)object {
  @try {
    IOSCharArray *charArray = [object isKindOfClass:[NSString class]] ? [((NSString *) nil_chk(((NSString *) cast_chk(object, [NSString class])))) java_toCharArray] : (IOSCharArray *) cast_chk(object, [IOSCharArray class]);
    return OrgApacheCommonsCodecBinaryHex_decodeHexWithCharArray_(charArray);
  }
  @catch (JavaLangClassCastException *e) {
    @throw new_OrgApacheCommonsCodecDecoderException_initWithNSString_withJavaLangThrowable_([e getMessage], e);
  }
}

- (IOSByteArray *)encodeWithByteArray:(IOSByteArray *)array {
  return [((NSString *) nil_chk(OrgApacheCommonsCodecBinaryHex_encodeHexStringWithByteArray_(array))) java_getBytesWithCharset:[self getCharset]];
}

- (id)encodeWithId:(id)object {
  @try {
    IOSByteArray *byteArray = [object isKindOfClass:[NSString class]] ? [((NSString *) nil_chk(((NSString *) cast_chk(object, [NSString class])))) java_getBytesWithCharset:[self getCharset]] : (IOSByteArray *) cast_chk(object, [IOSByteArray class]);
    return OrgApacheCommonsCodecBinaryHex_encodeHexWithByteArray_(byteArray);
  }
  @catch (JavaLangClassCastException *e) {
    @throw new_OrgApacheCommonsCodecEncoderException_initWithNSString_withJavaLangThrowable_([e getMessage], e);
  }
}

- (JavaNioCharsetCharset *)getCharset {
  return self->charset_;
}

- (NSString *)getCharsetName {
  return [((JavaNioCharsetCharset *) nil_chk(self->charset_)) name];
}

- (NSString *)description {
  return JreStrcat("$$@C", [super description], @"[charsetName=", self->charset_, ']');
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[B", 0x9, 0, 1, 2, -1, -1, -1 },
    { NULL, "[C", 0x9, 3, 4, -1, -1, -1, -1 },
    { NULL, "[C", 0x9, 3, 5, -1, -1, -1, -1 },
    { NULL, "[C", 0xc, 3, 6, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 7, 4, -1, -1, -1, -1 },
    { NULL, "I", 0xc, 8, 9, 2, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 10, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 11, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, 12, 4, 2, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 12, 13, 2, -1, -1, -1 },
    { NULL, "[B", 0x1, 14, 4, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 14, 13, 15, -1, -1, -1 },
    { NULL, "LJavaNioCharsetCharset;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 16, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(decodeHexWithCharArray:);
  methods[1].selector = @selector(encodeHexWithByteArray:);
  methods[2].selector = @selector(encodeHexWithByteArray:withBoolean:);
  methods[3].selector = @selector(encodeHexWithByteArray:withCharArray:);
  methods[4].selector = @selector(encodeHexStringWithByteArray:);
  methods[5].selector = @selector(toDigitWithChar:withInt:);
  methods[6].selector = @selector(init);
  methods[7].selector = @selector(initWithJavaNioCharsetCharset:);
  methods[8].selector = @selector(initWithNSString:);
  methods[9].selector = @selector(decodeWithByteArray:);
  methods[10].selector = @selector(decodeWithId:);
  methods[11].selector = @selector(encodeWithByteArray:);
  methods[12].selector = @selector(encodeWithId:);
  methods[13].selector = @selector(getCharset);
  methods[14].selector = @selector(getCharsetName);
  methods[15].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_CHARSET", "LJavaNioCharsetCharset;", .constantValue.asLong = 0, 0x19, -1, 17, -1, -1 },
    { "DEFAULT_CHARSET_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 18, -1, -1 },
    { "DIGITS_LOWER", "[C", .constantValue.asLong = 0, 0x1a, -1, 19, -1, -1 },
    { "DIGITS_UPPER", "[C", .constantValue.asLong = 0, 0x1a, -1, 20, -1, -1 },
    { "charset_", "LJavaNioCharsetCharset;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "decodeHex", "[C", "LOrgApacheCommonsCodecDecoderException;", "encodeHex", "[B", "[BZ", "[B[C", "encodeHexString", "toDigit", "CI", "LJavaNioCharsetCharset;", "LNSString;", "decode", "LNSObject;", "encode", "LOrgApacheCommonsCodecEncoderException;", "toString", &OrgApacheCommonsCodecBinaryHex_DEFAULT_CHARSET, &OrgApacheCommonsCodecBinaryHex_DEFAULT_CHARSET_NAME, &OrgApacheCommonsCodecBinaryHex_DIGITS_LOWER, &OrgApacheCommonsCodecBinaryHex_DIGITS_UPPER };
  static const J2ObjcClassInfo _OrgApacheCommonsCodecBinaryHex = { "Hex", "org.apache.commons.codec.binary", ptrTable, methods, fields, 7, 0x1, 16, 5, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsCodecBinaryHex;
}

+ (void)initialize {
  if (self == [OrgApacheCommonsCodecBinaryHex class]) {
    OrgApacheCommonsCodecBinaryHex_DEFAULT_CHARSET = JreLoadStatic(OrgApacheCommonsCodecCharsets, UTF_8);
    OrgApacheCommonsCodecBinaryHex_DIGITS_LOWER = [IOSCharArray newArrayWithChars:(jchar[]){ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' } count:16];
    OrgApacheCommonsCodecBinaryHex_DIGITS_UPPER = [IOSCharArray newArrayWithChars:(jchar[]){ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' } count:16];
    J2OBJC_SET_INITIALIZED(OrgApacheCommonsCodecBinaryHex)
  }
}

@end

IOSByteArray *OrgApacheCommonsCodecBinaryHex_decodeHexWithCharArray_(IOSCharArray *data) {
  OrgApacheCommonsCodecBinaryHex_initialize();
  jint len = ((IOSCharArray *) nil_chk(data))->size_;
  if ((len & (jint) 0x01) != 0) {
    @throw new_OrgApacheCommonsCodecDecoderException_initWithNSString_(@"Odd number of characters.");
  }
  IOSByteArray *out = [IOSByteArray newArrayWithLength:JreRShift32(len, 1)];
  for (jint i = 0, j = 0; j < len; i++) {
    jint f = JreLShift32(OrgApacheCommonsCodecBinaryHex_toDigitWithChar_withInt_(IOSCharArray_Get(data, j), j), 4);
    j++;
    f = f | OrgApacheCommonsCodecBinaryHex_toDigitWithChar_withInt_(IOSCharArray_Get(data, j), j);
    j++;
    *IOSByteArray_GetRef(out, i) = (jbyte) (f & (jint) 0xFF);
  }
  return out;
}

IOSCharArray *OrgApacheCommonsCodecBinaryHex_encodeHexWithByteArray_(IOSByteArray *data) {
  OrgApacheCommonsCodecBinaryHex_initialize();
  return OrgApacheCommonsCodecBinaryHex_encodeHexWithByteArray_withBoolean_(data, true);
}

IOSCharArray *OrgApacheCommonsCodecBinaryHex_encodeHexWithByteArray_withBoolean_(IOSByteArray *data, jboolean toLowerCase) {
  OrgApacheCommonsCodecBinaryHex_initialize();
  return OrgApacheCommonsCodecBinaryHex_encodeHexWithByteArray_withCharArray_(data, toLowerCase ? OrgApacheCommonsCodecBinaryHex_DIGITS_LOWER : OrgApacheCommonsCodecBinaryHex_DIGITS_UPPER);
}

IOSCharArray *OrgApacheCommonsCodecBinaryHex_encodeHexWithByteArray_withCharArray_(IOSByteArray *data, IOSCharArray *toDigits) {
  OrgApacheCommonsCodecBinaryHex_initialize();
  jint l = ((IOSByteArray *) nil_chk(data))->size_;
  IOSCharArray *out = [IOSCharArray newArrayWithLength:JreLShift32(l, 1)];
  for (jint i = 0, j = 0; i < l; i++) {
    *IOSCharArray_GetRef(out, j++) = IOSCharArray_Get(nil_chk(toDigits), JreURShift32(((jint) 0xF0 & IOSByteArray_Get(data, i)), 4));
    *IOSCharArray_GetRef(out, j++) = IOSCharArray_Get(toDigits, (jint) 0x0F & IOSByteArray_Get(data, i));
  }
  return out;
}

NSString *OrgApacheCommonsCodecBinaryHex_encodeHexStringWithByteArray_(IOSByteArray *data) {
  OrgApacheCommonsCodecBinaryHex_initialize();
  return [NSString java_stringWithCharacters:OrgApacheCommonsCodecBinaryHex_encodeHexWithByteArray_(data)];
}

jint OrgApacheCommonsCodecBinaryHex_toDigitWithChar_withInt_(jchar ch, jint index) {
  OrgApacheCommonsCodecBinaryHex_initialize();
  jint digit = JavaLangCharacter_digitWithChar_withInt_(ch, 16);
  if (digit == -1) {
    @throw new_OrgApacheCommonsCodecDecoderException_initWithNSString_(JreStrcat("$C$I", @"Illegal hexadecimal character ", ch, @" at index ", index));
  }
  return digit;
}

void OrgApacheCommonsCodecBinaryHex_init(OrgApacheCommonsCodecBinaryHex *self) {
  NSObject_init(self);
  self->charset_ = OrgApacheCommonsCodecBinaryHex_DEFAULT_CHARSET;
}

OrgApacheCommonsCodecBinaryHex *new_OrgApacheCommonsCodecBinaryHex_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecBinaryHex, init)
}

OrgApacheCommonsCodecBinaryHex *create_OrgApacheCommonsCodecBinaryHex_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecBinaryHex, init)
}

void OrgApacheCommonsCodecBinaryHex_initWithJavaNioCharsetCharset_(OrgApacheCommonsCodecBinaryHex *self, JavaNioCharsetCharset *charset) {
  NSObject_init(self);
  self->charset_ = charset;
}

OrgApacheCommonsCodecBinaryHex *new_OrgApacheCommonsCodecBinaryHex_initWithJavaNioCharsetCharset_(JavaNioCharsetCharset *charset) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecBinaryHex, initWithJavaNioCharsetCharset_, charset)
}

OrgApacheCommonsCodecBinaryHex *create_OrgApacheCommonsCodecBinaryHex_initWithJavaNioCharsetCharset_(JavaNioCharsetCharset *charset) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecBinaryHex, initWithJavaNioCharsetCharset_, charset)
}

void OrgApacheCommonsCodecBinaryHex_initWithNSString_(OrgApacheCommonsCodecBinaryHex *self, NSString *charsetName) {
  OrgApacheCommonsCodecBinaryHex_initWithJavaNioCharsetCharset_(self, JavaNioCharsetCharset_forNameWithNSString_(charsetName));
}

OrgApacheCommonsCodecBinaryHex *new_OrgApacheCommonsCodecBinaryHex_initWithNSString_(NSString *charsetName) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecBinaryHex, initWithNSString_, charsetName)
}

OrgApacheCommonsCodecBinaryHex *create_OrgApacheCommonsCodecBinaryHex_initWithNSString_(NSString *charsetName) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecBinaryHex, initWithNSString_, charsetName)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsCodecBinaryHex)
