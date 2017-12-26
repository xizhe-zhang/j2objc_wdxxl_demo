//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-codec-1.10-sources.jar!org/apache/commons/codec/binary/BaseNCodecOutputStream.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/FilterOutputStream.h"
#include "java/io/OutputStream.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/NullPointerException.h"
#include "org/apache/commons/codec/binary/BaseNCodec.h"
#include "org/apache/commons/codec/binary/BaseNCodecOutputStream.h"

@interface OrgApacheCommonsCodecBinaryBaseNCodecOutputStream () {
 @public
  jboolean doEncode_;
  OrgApacheCommonsCodecBinaryBaseNCodec *baseNCodec_;
  IOSByteArray *singleByte_;
  OrgApacheCommonsCodecBinaryBaseNCodec_Context *context_;
}

- (void)flushWithBoolean:(jboolean)propagate;

@end

J2OBJC_FIELD_SETTER(OrgApacheCommonsCodecBinaryBaseNCodecOutputStream, baseNCodec_, OrgApacheCommonsCodecBinaryBaseNCodec *)
J2OBJC_FIELD_SETTER(OrgApacheCommonsCodecBinaryBaseNCodecOutputStream, singleByte_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheCommonsCodecBinaryBaseNCodecOutputStream, context_, OrgApacheCommonsCodecBinaryBaseNCodec_Context *)

__attribute__((unused)) static void OrgApacheCommonsCodecBinaryBaseNCodecOutputStream_flushWithBoolean_(OrgApacheCommonsCodecBinaryBaseNCodecOutputStream *self, jboolean propagate);

@implementation OrgApacheCommonsCodecBinaryBaseNCodecOutputStream

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
 withOrgApacheCommonsCodecBinaryBaseNCodec:(OrgApacheCommonsCodecBinaryBaseNCodec *)basedCodec
                               withBoolean:(jboolean)doEncode {
  OrgApacheCommonsCodecBinaryBaseNCodecOutputStream_initWithJavaIoOutputStream_withOrgApacheCommonsCodecBinaryBaseNCodec_withBoolean_(self, outArg, basedCodec, doEncode);
  return self;
}

- (void)writeWithInt:(jint)i {
  *IOSByteArray_GetRef(nil_chk(singleByte_), 0) = (jbyte) i;
  [self writeWithByteArray:singleByte_ withInt:0 withInt:1];
}

- (void)writeWithByteArray:(IOSByteArray *)b
                   withInt:(jint)offset
                   withInt:(jint)len {
  if (b == nil) {
    @throw create_JavaLangNullPointerException_init();
  }
  else if (offset < 0 || len < 0) {
    @throw create_JavaLangIndexOutOfBoundsException_init();
  }
  else if (offset > b->size_ || offset + len > b->size_) {
    @throw create_JavaLangIndexOutOfBoundsException_init();
  }
  else if (len > 0) {
    if (doEncode_) {
      [((OrgApacheCommonsCodecBinaryBaseNCodec *) nil_chk(baseNCodec_)) encodeWithByteArray:b withInt:offset withInt:len withOrgApacheCommonsCodecBinaryBaseNCodec_Context:context_];
    }
    else {
      [((OrgApacheCommonsCodecBinaryBaseNCodec *) nil_chk(baseNCodec_)) decodeWithByteArray:b withInt:offset withInt:len withOrgApacheCommonsCodecBinaryBaseNCodec_Context:context_];
    }
    OrgApacheCommonsCodecBinaryBaseNCodecOutputStream_flushWithBoolean_(self, false);
  }
}

- (void)flushWithBoolean:(jboolean)propagate {
  OrgApacheCommonsCodecBinaryBaseNCodecOutputStream_flushWithBoolean_(self, propagate);
}

- (void)flush {
  OrgApacheCommonsCodecBinaryBaseNCodecOutputStream_flushWithBoolean_(self, true);
}

- (void)close {
  if (doEncode_) {
    [((OrgApacheCommonsCodecBinaryBaseNCodec *) nil_chk(baseNCodec_)) encodeWithByteArray:singleByte_ withInt:0 withInt:OrgApacheCommonsCodecBinaryBaseNCodec_EOF withOrgApacheCommonsCodecBinaryBaseNCodec_Context:context_];
  }
  else {
    [((OrgApacheCommonsCodecBinaryBaseNCodec *) nil_chk(baseNCodec_)) decodeWithByteArray:singleByte_ withInt:0 withInt:OrgApacheCommonsCodecBinaryBaseNCodec_EOF withOrgApacheCommonsCodecBinaryBaseNCodec_Context:context_];
  }
  [self flush];
  [((JavaIoOutputStream *) nil_chk(out_)) close];
}

- (void)dealloc {
  RELEASE_(baseNCodec_);
  RELEASE_(singleByte_);
  RELEASE_(context_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 4, 3, -1, -1, -1 },
    { NULL, "V", 0x2, 5, 6, 3, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaIoOutputStream:withOrgApacheCommonsCodecBinaryBaseNCodec:withBoolean:);
  methods[1].selector = @selector(writeWithInt:);
  methods[2].selector = @selector(writeWithByteArray:withInt:withInt:);
  methods[3].selector = @selector(flushWithBoolean:);
  methods[4].selector = @selector(flush);
  methods[5].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "doEncode_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "baseNCodec_", "LOrgApacheCommonsCodecBinaryBaseNCodec;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "singleByte_", "[B", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "context_", "LOrgApacheCommonsCodecBinaryBaseNCodec_Context;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaIoOutputStream;LOrgApacheCommonsCodecBinaryBaseNCodec;Z", "write", "I", "LJavaIoIOException;", "[BII", "flush", "Z" };
  static const J2ObjcClassInfo _OrgApacheCommonsCodecBinaryBaseNCodecOutputStream = { "BaseNCodecOutputStream", "org.apache.commons.codec.binary", ptrTable, methods, fields, 7, 0x1, 6, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsCodecBinaryBaseNCodecOutputStream;
}

@end

void OrgApacheCommonsCodecBinaryBaseNCodecOutputStream_initWithJavaIoOutputStream_withOrgApacheCommonsCodecBinaryBaseNCodec_withBoolean_(OrgApacheCommonsCodecBinaryBaseNCodecOutputStream *self, JavaIoOutputStream *outArg, OrgApacheCommonsCodecBinaryBaseNCodec *basedCodec, jboolean doEncode) {
  JavaIoFilterOutputStream_initWithJavaIoOutputStream_(self, outArg);
  JreStrongAssignAndConsume(&self->singleByte_, [IOSByteArray newArrayWithLength:1]);
  JreStrongAssignAndConsume(&self->context_, new_OrgApacheCommonsCodecBinaryBaseNCodec_Context_init());
  JreStrongAssign(&self->baseNCodec_, basedCodec);
  self->doEncode_ = doEncode;
}

OrgApacheCommonsCodecBinaryBaseNCodecOutputStream *new_OrgApacheCommonsCodecBinaryBaseNCodecOutputStream_initWithJavaIoOutputStream_withOrgApacheCommonsCodecBinaryBaseNCodec_withBoolean_(JavaIoOutputStream *outArg, OrgApacheCommonsCodecBinaryBaseNCodec *basedCodec, jboolean doEncode) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecBinaryBaseNCodecOutputStream, initWithJavaIoOutputStream_withOrgApacheCommonsCodecBinaryBaseNCodec_withBoolean_, outArg, basedCodec, doEncode)
}

OrgApacheCommonsCodecBinaryBaseNCodecOutputStream *create_OrgApacheCommonsCodecBinaryBaseNCodecOutputStream_initWithJavaIoOutputStream_withOrgApacheCommonsCodecBinaryBaseNCodec_withBoolean_(JavaIoOutputStream *outArg, OrgApacheCommonsCodecBinaryBaseNCodec *basedCodec, jboolean doEncode) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecBinaryBaseNCodecOutputStream, initWithJavaIoOutputStream_withOrgApacheCommonsCodecBinaryBaseNCodec_withBoolean_, outArg, basedCodec, doEncode)
}

void OrgApacheCommonsCodecBinaryBaseNCodecOutputStream_flushWithBoolean_(OrgApacheCommonsCodecBinaryBaseNCodecOutputStream *self, jboolean propagate) {
  jint avail = [((OrgApacheCommonsCodecBinaryBaseNCodec *) nil_chk(self->baseNCodec_)) availableWithOrgApacheCommonsCodecBinaryBaseNCodec_Context:self->context_];
  if (avail > 0) {
    IOSByteArray *buf = [IOSByteArray arrayWithLength:avail];
    jint c = [self->baseNCodec_ readResultsWithByteArray:buf withInt:0 withInt:avail withOrgApacheCommonsCodecBinaryBaseNCodec_Context:self->context_];
    if (c > 0) {
      [((JavaIoOutputStream *) nil_chk(self->out_)) writeWithByteArray:buf withInt:0 withInt:c];
    }
  }
  if (propagate) {
    [((JavaIoOutputStream *) nil_chk(self->out_)) flush];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsCodecBinaryBaseNCodecOutputStream)
