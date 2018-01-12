//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/util/IndexableBinaryStringTools.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/nio/Buffer.h"
#include "java/nio/ByteBuffer.h"
#include "java/nio/CharBuffer.h"
#include "org/apache/lucene/util/IndexableBinaryStringTools.h"

@interface OrgApacheLuceneUtilIndexableBinaryStringTools ()

- (instancetype)init;

@end

inline IOSObjectArray *OrgApacheLuceneUtilIndexableBinaryStringTools_get_CODING_CASES(void);
static IOSObjectArray *OrgApacheLuceneUtilIndexableBinaryStringTools_CODING_CASES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilIndexableBinaryStringTools, CODING_CASES, IOSObjectArray *)

__attribute__((unused)) static void OrgApacheLuceneUtilIndexableBinaryStringTools_init(OrgApacheLuceneUtilIndexableBinaryStringTools *self);

__attribute__((unused)) static OrgApacheLuceneUtilIndexableBinaryStringTools *new_OrgApacheLuceneUtilIndexableBinaryStringTools_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilIndexableBinaryStringTools *create_OrgApacheLuceneUtilIndexableBinaryStringTools_init(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilIndexableBinaryStringTools__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilIndexableBinaryStringTools__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilIndexableBinaryStringTools__Annotations$2(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilIndexableBinaryStringTools__Annotations$3(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilIndexableBinaryStringTools__Annotations$4(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilIndexableBinaryStringTools__Annotations$5(void);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilIndexableBinaryStringTools)

@implementation OrgApacheLuceneUtilIndexableBinaryStringTools

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilIndexableBinaryStringTools_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jint)getEncodedLengthWithJavaNioByteBuffer:(JavaNioByteBuffer *)original {
  return OrgApacheLuceneUtilIndexableBinaryStringTools_getEncodedLengthWithJavaNioByteBuffer_(original);
}

+ (jint)getEncodedLengthWithByteArray:(IOSByteArray *)inputArray
                              withInt:(jint)inputOffset
                              withInt:(jint)inputLength {
  return OrgApacheLuceneUtilIndexableBinaryStringTools_getEncodedLengthWithByteArray_withInt_withInt_(inputArray, inputOffset, inputLength);
}

+ (jint)getDecodedLengthWithJavaNioCharBuffer:(JavaNioCharBuffer *)encoded {
  return OrgApacheLuceneUtilIndexableBinaryStringTools_getDecodedLengthWithJavaNioCharBuffer_(encoded);
}

+ (jint)getDecodedLengthWithCharArray:(IOSCharArray *)encoded
                              withInt:(jint)offset
                              withInt:(jint)length {
  return OrgApacheLuceneUtilIndexableBinaryStringTools_getDecodedLengthWithCharArray_withInt_withInt_(encoded, offset, length);
}

+ (void)encodeWithJavaNioByteBuffer:(JavaNioByteBuffer *)input
              withJavaNioCharBuffer:(JavaNioCharBuffer *)output {
  OrgApacheLuceneUtilIndexableBinaryStringTools_encodeWithJavaNioByteBuffer_withJavaNioCharBuffer_(input, output);
}

+ (void)encodeWithByteArray:(IOSByteArray *)inputArray
                    withInt:(jint)inputOffset
                    withInt:(jint)inputLength
              withCharArray:(IOSCharArray *)outputArray
                    withInt:(jint)outputOffset
                    withInt:(jint)outputLength {
  OrgApacheLuceneUtilIndexableBinaryStringTools_encodeWithByteArray_withInt_withInt_withCharArray_withInt_withInt_(inputArray, inputOffset, inputLength, outputArray, outputOffset, outputLength);
}

+ (void)decodeWithJavaNioCharBuffer:(JavaNioCharBuffer *)input
              withJavaNioByteBuffer:(JavaNioByteBuffer *)output {
  OrgApacheLuceneUtilIndexableBinaryStringTools_decodeWithJavaNioCharBuffer_withJavaNioByteBuffer_(input, output);
}

+ (void)decodeWithCharArray:(IOSCharArray *)inputArray
                    withInt:(jint)inputOffset
                    withInt:(jint)inputLength
              withByteArray:(IOSByteArray *)outputArray
                    withInt:(jint)outputOffset
                    withInt:(jint)outputLength {
  OrgApacheLuceneUtilIndexableBinaryStringTools_decodeWithCharArray_withInt_withInt_withByteArray_withInt_withInt_(inputArray, inputOffset, inputLength, outputArray, outputOffset, outputLength);
}

+ (JavaNioByteBuffer *)decodeWithJavaNioCharBuffer:(JavaNioCharBuffer *)input {
  return OrgApacheLuceneUtilIndexableBinaryStringTools_decodeWithJavaNioCharBuffer_(input);
}

+ (JavaNioCharBuffer *)encodeWithJavaNioByteBuffer:(JavaNioByteBuffer *)input {
  return OrgApacheLuceneUtilIndexableBinaryStringTools_encodeWithJavaNioByteBuffer_(input);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 0, 1, 2, -1, 3, -1 },
    { NULL, "I", 0x9, 0, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 5, 6, 2, -1, 7, -1 },
    { NULL, "I", 0x9, 5, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 9, 10, -1, -1, 11, -1 },
    { NULL, "V", 0x9, 9, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 13, 14, -1, -1, 15, -1 },
    { NULL, "V", 0x9, 13, 16, -1, -1, -1, -1 },
    { NULL, "LJavaNioByteBuffer;", 0x9, 13, 6, -1, -1, 17, -1 },
    { NULL, "LJavaNioCharBuffer;", 0x9, 9, 1, -1, -1, 18, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getEncodedLengthWithJavaNioByteBuffer:);
  methods[2].selector = @selector(getEncodedLengthWithByteArray:withInt:withInt:);
  methods[3].selector = @selector(getDecodedLengthWithJavaNioCharBuffer:);
  methods[4].selector = @selector(getDecodedLengthWithCharArray:withInt:withInt:);
  methods[5].selector = @selector(encodeWithJavaNioByteBuffer:withJavaNioCharBuffer:);
  methods[6].selector = @selector(encodeWithByteArray:withInt:withInt:withCharArray:withInt:withInt:);
  methods[7].selector = @selector(decodeWithJavaNioCharBuffer:withJavaNioByteBuffer:);
  methods[8].selector = @selector(decodeWithCharArray:withInt:withInt:withByteArray:withInt:withInt:);
  methods[9].selector = @selector(decodeWithJavaNioCharBuffer:);
  methods[10].selector = @selector(encodeWithJavaNioByteBuffer:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "CODING_CASES", "[LOrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase;", .constantValue.asLong = 0, 0x1a, -1, 19, -1, -1 },
  };
  static const void *ptrTable[] = { "getEncodedLength", "LJavaNioByteBuffer;", "LJavaLangIllegalArgumentException;", (void *)&OrgApacheLuceneUtilIndexableBinaryStringTools__Annotations$0, "[BII", "getDecodedLength", "LJavaNioCharBuffer;", (void *)&OrgApacheLuceneUtilIndexableBinaryStringTools__Annotations$1, "[CII", "encode", "LJavaNioByteBuffer;LJavaNioCharBuffer;", (void *)&OrgApacheLuceneUtilIndexableBinaryStringTools__Annotations$2, "[BII[CII", "decode", "LJavaNioCharBuffer;LJavaNioByteBuffer;", (void *)&OrgApacheLuceneUtilIndexableBinaryStringTools__Annotations$3, "[CII[BII", (void *)&OrgApacheLuceneUtilIndexableBinaryStringTools__Annotations$4, (void *)&OrgApacheLuceneUtilIndexableBinaryStringTools__Annotations$5, &OrgApacheLuceneUtilIndexableBinaryStringTools_CODING_CASES, "LOrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilIndexableBinaryStringTools = { "IndexableBinaryStringTools", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x11, 11, 1, -1, 20, -1, -1, -1 };
  return &_OrgApacheLuceneUtilIndexableBinaryStringTools;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilIndexableBinaryStringTools class]) {
    OrgApacheLuceneUtilIndexableBinaryStringTools_CODING_CASES = [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_(7, 1), create_OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_withInt_(14, 6, 2), create_OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_withInt_(13, 5, 3), create_OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_withInt_(12, 4, 4), create_OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_withInt_(11, 3, 5), create_OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_withInt_(10, 2, 6), create_OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_withInt_(9, 1, 7), create_OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_(8, 0) } count:8 type:OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_class_()];
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilIndexableBinaryStringTools)
  }
}

@end

void OrgApacheLuceneUtilIndexableBinaryStringTools_init(OrgApacheLuceneUtilIndexableBinaryStringTools *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilIndexableBinaryStringTools *new_OrgApacheLuceneUtilIndexableBinaryStringTools_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilIndexableBinaryStringTools, init)
}

OrgApacheLuceneUtilIndexableBinaryStringTools *create_OrgApacheLuceneUtilIndexableBinaryStringTools_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilIndexableBinaryStringTools, init)
}

jint OrgApacheLuceneUtilIndexableBinaryStringTools_getEncodedLengthWithJavaNioByteBuffer_(JavaNioByteBuffer *original) {
  OrgApacheLuceneUtilIndexableBinaryStringTools_initialize();
  if ([((JavaNioByteBuffer *) nil_chk(original)) hasArray]) {
    return OrgApacheLuceneUtilIndexableBinaryStringTools_getEncodedLengthWithByteArray_withInt_withInt_([original array], [original arrayOffset], [original limit] - [original arrayOffset]);
  }
  else {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"original argument must have a backing array");
  }
}

jint OrgApacheLuceneUtilIndexableBinaryStringTools_getEncodedLengthWithByteArray_withInt_withInt_(IOSByteArray *inputArray, jint inputOffset, jint inputLength) {
  OrgApacheLuceneUtilIndexableBinaryStringTools_initialize();
  return (jint) ((8LL * inputLength + 14LL) / 15LL) + 1;
}

jint OrgApacheLuceneUtilIndexableBinaryStringTools_getDecodedLengthWithJavaNioCharBuffer_(JavaNioCharBuffer *encoded) {
  OrgApacheLuceneUtilIndexableBinaryStringTools_initialize();
  if ([((JavaNioCharBuffer *) nil_chk(encoded)) hasArray]) {
    return OrgApacheLuceneUtilIndexableBinaryStringTools_getDecodedLengthWithCharArray_withInt_withInt_([encoded array], [encoded arrayOffset], [encoded limit] - [encoded arrayOffset]);
  }
  else {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"encoded argument must have a backing array");
  }
}

jint OrgApacheLuceneUtilIndexableBinaryStringTools_getDecodedLengthWithCharArray_withInt_withInt_(IOSCharArray *encoded, jint offset, jint length) {
  OrgApacheLuceneUtilIndexableBinaryStringTools_initialize();
  jint numChars = length - 1;
  if (numChars <= 0) {
    return 0;
  }
  else {
    jlong numFullBytesInFinalChar = IOSCharArray_Get(nil_chk(encoded), offset + length - 1);
    jlong numEncodedChars = numChars - 1;
    return (jint) ((numEncodedChars * 15LL + 7LL) / 8LL + numFullBytesInFinalChar);
  }
}

void OrgApacheLuceneUtilIndexableBinaryStringTools_encodeWithJavaNioByteBuffer_withJavaNioCharBuffer_(JavaNioByteBuffer *input, JavaNioCharBuffer *output) {
  OrgApacheLuceneUtilIndexableBinaryStringTools_initialize();
  if ([((JavaNioByteBuffer *) nil_chk(input)) hasArray] && [((JavaNioCharBuffer *) nil_chk(output)) hasArray]) {
    jint inputOffset = [input arrayOffset];
    jint inputLength = [input limit] - inputOffset;
    jint outputOffset = [((JavaNioCharBuffer *) nil_chk(output)) arrayOffset];
    jint outputLength = OrgApacheLuceneUtilIndexableBinaryStringTools_getEncodedLengthWithByteArray_withInt_withInt_([input array], inputOffset, inputLength);
    (void) [output limitWithInt:outputLength + outputOffset];
    (void) [output positionWithInt:0];
    OrgApacheLuceneUtilIndexableBinaryStringTools_encodeWithByteArray_withInt_withInt_withCharArray_withInt_withInt_([input array], inputOffset, inputLength, [output array], outputOffset, outputLength);
  }
  else {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Arguments must have backing arrays");
  }
}

void OrgApacheLuceneUtilIndexableBinaryStringTools_encodeWithByteArray_withInt_withInt_withCharArray_withInt_withInt_(IOSByteArray *inputArray, jint inputOffset, jint inputLength, IOSCharArray *outputArray, jint outputOffset, jint outputLength) {
  OrgApacheLuceneUtilIndexableBinaryStringTools_initialize();
  JreAssert(outputLength == OrgApacheLuceneUtilIndexableBinaryStringTools_getEncodedLengthWithByteArray_withInt_withInt_(inputArray, inputOffset, inputLength), @"org/apache/lucene/util/IndexableBinaryStringTools.java:196 condition failed: assert (outputLength == getEncodedLength(inputArray, inputOffset,\n        inputLength));");
  if (inputLength > 0) {
    jint inputByteNum = inputOffset;
    jint caseNum = 0;
    jint outputCharNum = outputOffset;
    OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *codingCase;
    for (; inputByteNum + ((OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *) nil_chk(IOSObjectArray_Get(nil_chk(OrgApacheLuceneUtilIndexableBinaryStringTools_CODING_CASES), caseNum)))->numBytes_ <= inputLength; ++outputCharNum) {
      codingCase = IOSObjectArray_Get(OrgApacheLuceneUtilIndexableBinaryStringTools_CODING_CASES, caseNum);
      if (2 == ((OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *) nil_chk(codingCase))->numBytes_) {
        *IOSCharArray_GetRef(nil_chk(outputArray), outputCharNum) = (jchar) (((JreLShift32((IOSByteArray_Get(nil_chk(inputArray), inputByteNum) & (jint) 0xFF), codingCase->initialShift_)) + ((JreURShift32((IOSByteArray_Get(inputArray, inputByteNum + 1) & (jint) 0xFF), codingCase->finalShift_)) & codingCase->finalMask_)) & (jshort) (jint) 0x7FFF);
      }
      else {
        *IOSCharArray_GetRef(nil_chk(outputArray), outputCharNum) = (jchar) (((JreLShift32((IOSByteArray_Get(nil_chk(inputArray), inputByteNum) & (jint) 0xFF), codingCase->initialShift_)) + (JreLShift32((IOSByteArray_Get(inputArray, inputByteNum + 1) & (jint) 0xFF), codingCase->middleShift_)) + ((JreURShift32((IOSByteArray_Get(inputArray, inputByteNum + 2) & (jint) 0xFF), codingCase->finalShift_)) & codingCase->finalMask_)) & (jshort) (jint) 0x7FFF);
      }
      inputByteNum += codingCase->advanceBytes_;
      if (++caseNum == OrgApacheLuceneUtilIndexableBinaryStringTools_CODING_CASES->size_) {
        caseNum = 0;
      }
    }
    codingCase = IOSObjectArray_Get(OrgApacheLuceneUtilIndexableBinaryStringTools_CODING_CASES, caseNum);
    if (inputByteNum + 1 < inputLength) {
      *IOSCharArray_GetRef(nil_chk(outputArray), outputCharNum++) = (jchar) (((JreLShift32((IOSByteArray_Get(nil_chk(inputArray), inputByteNum) & (jint) 0xFF), ((OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *) nil_chk(codingCase))->initialShift_)) + (JreLShift32((IOSByteArray_Get(inputArray, inputByteNum + 1) & (jint) 0xFF), codingCase->middleShift_))) & (jshort) (jint) 0x7FFF);
      *IOSCharArray_GetRef(outputArray, outputCharNum++) = (jchar) 1;
    }
    else if (inputByteNum < inputLength) {
      *IOSCharArray_GetRef(nil_chk(outputArray), outputCharNum++) = (jchar) ((JreLShift32((IOSByteArray_Get(nil_chk(inputArray), inputByteNum) & (jint) 0xFF), ((OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *) nil_chk(codingCase))->initialShift_)) & (jshort) (jint) 0x7FFF);
      *IOSCharArray_GetRef(outputArray, outputCharNum++) = caseNum == 0 ? (jchar) 1 : (jchar) 0;
    }
    else {
      *IOSCharArray_GetRef(nil_chk(outputArray), outputCharNum++) = (jchar) 1;
    }
  }
}

void OrgApacheLuceneUtilIndexableBinaryStringTools_decodeWithJavaNioCharBuffer_withJavaNioByteBuffer_(JavaNioCharBuffer *input, JavaNioByteBuffer *output) {
  OrgApacheLuceneUtilIndexableBinaryStringTools_initialize();
  if ([((JavaNioCharBuffer *) nil_chk(input)) hasArray] && [((JavaNioByteBuffer *) nil_chk(output)) hasArray]) {
    jint inputOffset = [input arrayOffset];
    jint inputLength = [input limit] - inputOffset;
    jint outputOffset = [((JavaNioByteBuffer *) nil_chk(output)) arrayOffset];
    jint outputLength = OrgApacheLuceneUtilIndexableBinaryStringTools_getDecodedLengthWithCharArray_withInt_withInt_([input array], inputOffset, inputLength);
    (void) [output limitWithInt:outputLength + outputOffset];
    (void) [output positionWithInt:0];
    OrgApacheLuceneUtilIndexableBinaryStringTools_decodeWithCharArray_withInt_withInt_withByteArray_withInt_withInt_([input array], inputOffset, inputLength, [output array], outputOffset, outputLength);
  }
  else {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Arguments must have backing arrays");
  }
}

void OrgApacheLuceneUtilIndexableBinaryStringTools_decodeWithCharArray_withInt_withInt_withByteArray_withInt_withInt_(IOSCharArray *inputArray, jint inputOffset, jint inputLength, IOSByteArray *outputArray, jint outputOffset, jint outputLength) {
  OrgApacheLuceneUtilIndexableBinaryStringTools_initialize();
  JreAssert(outputLength == OrgApacheLuceneUtilIndexableBinaryStringTools_getDecodedLengthWithCharArray_withInt_withInt_(inputArray, inputOffset, inputLength), @"org/apache/lucene/util/IndexableBinaryStringTools.java:281 condition failed: assert (outputLength == getDecodedLength(inputArray, inputOffset,\n        inputLength));");
  jint numInputChars = inputLength - 1;
  jint numOutputBytes = outputLength;
  if (numOutputBytes > 0) {
    jint caseNum = 0;
    jint outputByteNum = outputOffset;
    jint inputCharNum = inputOffset;
    jshort inputChar;
    OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *codingCase;
    for (; inputCharNum < numInputChars - 1; ++inputCharNum) {
      codingCase = IOSObjectArray_Get(nil_chk(OrgApacheLuceneUtilIndexableBinaryStringTools_CODING_CASES), caseNum);
      inputChar = (jshort) IOSCharArray_Get(nil_chk(inputArray), inputCharNum);
      if (2 == ((OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *) nil_chk(codingCase))->numBytes_) {
        if (0 == caseNum) {
          *IOSByteArray_GetRef(nil_chk(outputArray), outputByteNum) = (jbyte) (JreURShift32(inputChar, codingCase->initialShift_));
        }
        else {
          *IOSByteArray_GetRef(nil_chk(outputArray), outputByteNum) += (jbyte) (JreURShift32(inputChar, codingCase->initialShift_));
        }
        *IOSByteArray_GetRef(outputArray, outputByteNum + 1) = (jbyte) (JreLShift32((inputChar & codingCase->finalMask_), codingCase->finalShift_));
      }
      else {
        *IOSByteArray_GetRef(nil_chk(outputArray), outputByteNum) += (jbyte) (JreURShift32(inputChar, codingCase->initialShift_));
        *IOSByteArray_GetRef(outputArray, outputByteNum + 1) = (jbyte) (JreURShift32((inputChar & codingCase->middleMask_), codingCase->middleShift_));
        *IOSByteArray_GetRef(outputArray, outputByteNum + 2) = (jbyte) (JreLShift32((inputChar & codingCase->finalMask_), codingCase->finalShift_));
      }
      outputByteNum += codingCase->advanceBytes_;
      if (++caseNum == OrgApacheLuceneUtilIndexableBinaryStringTools_CODING_CASES->size_) {
        caseNum = 0;
      }
    }
    inputChar = (jshort) IOSCharArray_Get(nil_chk(inputArray), inputCharNum);
    codingCase = IOSObjectArray_Get(nil_chk(OrgApacheLuceneUtilIndexableBinaryStringTools_CODING_CASES), caseNum);
    if (0 == caseNum) {
      *IOSByteArray_GetRef(nil_chk(outputArray), outputByteNum) = 0;
    }
    *IOSByteArray_GetRef(nil_chk(outputArray), outputByteNum) += (jbyte) (JreURShift32(inputChar, ((OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *) nil_chk(codingCase))->initialShift_));
    jint bytesLeft = numOutputBytes - outputByteNum;
    if (bytesLeft > 1) {
      if (2 == codingCase->numBytes_) {
        *IOSByteArray_GetRef(outputArray, outputByteNum + 1) = (jbyte) (JreURShift32((inputChar & codingCase->finalMask_), codingCase->finalShift_));
      }
      else {
        *IOSByteArray_GetRef(outputArray, outputByteNum + 1) = (jbyte) (JreURShift32((inputChar & codingCase->middleMask_), codingCase->middleShift_));
        if (bytesLeft > 2) {
          *IOSByteArray_GetRef(outputArray, outputByteNum + 2) = (jbyte) (JreLShift32((inputChar & codingCase->finalMask_), codingCase->finalShift_));
        }
      }
    }
  }
}

JavaNioByteBuffer *OrgApacheLuceneUtilIndexableBinaryStringTools_decodeWithJavaNioCharBuffer_(JavaNioCharBuffer *input) {
  OrgApacheLuceneUtilIndexableBinaryStringTools_initialize();
  IOSByteArray *outputArray = [IOSByteArray newArrayWithLength:OrgApacheLuceneUtilIndexableBinaryStringTools_getDecodedLengthWithJavaNioCharBuffer_(input)];
  JavaNioByteBuffer *output = JavaNioByteBuffer_wrapWithByteArray_(outputArray);
  OrgApacheLuceneUtilIndexableBinaryStringTools_decodeWithJavaNioCharBuffer_withJavaNioByteBuffer_(input, output);
  return output;
}

JavaNioCharBuffer *OrgApacheLuceneUtilIndexableBinaryStringTools_encodeWithJavaNioByteBuffer_(JavaNioByteBuffer *input) {
  OrgApacheLuceneUtilIndexableBinaryStringTools_initialize();
  IOSCharArray *outputArray = [IOSCharArray newArrayWithLength:OrgApacheLuceneUtilIndexableBinaryStringTools_getEncodedLengthWithJavaNioByteBuffer_(input)];
  JavaNioCharBuffer *output = JavaNioCharBuffer_wrapWithCharArray_(outputArray);
  OrgApacheLuceneUtilIndexableBinaryStringTools_encodeWithJavaNioByteBuffer_withJavaNioCharBuffer_(input, output);
  return output;
}

IOSObjectArray *OrgApacheLuceneUtilIndexableBinaryStringTools__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneUtilIndexableBinaryStringTools__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneUtilIndexableBinaryStringTools__Annotations$2() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneUtilIndexableBinaryStringTools__Annotations$3() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneUtilIndexableBinaryStringTools__Annotations$4() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneUtilIndexableBinaryStringTools__Annotations$5() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilIndexableBinaryStringTools)

@implementation OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase

- (instancetype)initWithInt:(jint)initialShift
                    withInt:(jint)middleShift
                    withInt:(jint)finalShift {
  OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_withInt_(self, initialShift, middleShift, finalShift);
  return self;
}

- (instancetype)initWithInt:(jint)initialShift
                    withInt:(jint)finalShift {
  OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_(self, initialShift, finalShift);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:withInt:withInt:);
  methods[1].selector = @selector(initWithInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "numBytes_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "initialShift_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "middleShift_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "finalShift_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "advanceBytes_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "middleMask_", "S", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "finalMask_", "S", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "III", "II", "LOrgApacheLuceneUtilIndexableBinaryStringTools;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase = { "CodingCase", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x8, 2, 7, 2, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase;
}

@end

void OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_withInt_(OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *self, jint initialShift, jint middleShift, jint finalShift) {
  NSObject_init(self);
  self->advanceBytes_ = 2;
  self->numBytes_ = 3;
  self->initialShift_ = initialShift;
  self->middleShift_ = middleShift;
  self->finalShift_ = finalShift;
  self->finalMask_ = (jshort) (JreURShift32((jshort) (jint) 0xFF, finalShift));
  self->middleMask_ = (jshort) (JreLShift32((jshort) (jint) 0xFF, middleShift));
}

OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *new_OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_withInt_(jint initialShift, jint middleShift, jint finalShift) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase, initWithInt_withInt_withInt_, initialShift, middleShift, finalShift)
}

OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *create_OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_withInt_(jint initialShift, jint middleShift, jint finalShift) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase, initWithInt_withInt_withInt_, initialShift, middleShift, finalShift)
}

void OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_(OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *self, jint initialShift, jint finalShift) {
  NSObject_init(self);
  self->advanceBytes_ = 2;
  self->numBytes_ = 2;
  self->initialShift_ = initialShift;
  self->finalShift_ = finalShift;
  self->finalMask_ = (jshort) (JreURShift32((jshort) (jint) 0xFF, finalShift));
  if (finalShift != 0) {
    self->advanceBytes_ = 1;
  }
}

OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *new_OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_(jint initialShift, jint finalShift) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase, initWithInt_withInt_, initialShift, finalShift)
}

OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *create_OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_(jint initialShift, jint finalShift) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase, initWithInt_withInt_, initialShift, finalShift)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase)
