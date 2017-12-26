//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/store/BufferedIndexInput.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/System.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/store/BufferedIndexInput.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/IndexOutput.h"

@interface OrgApacheLuceneStoreBufferedIndexInput () {
 @public
  jint bufferSize_;
  jlong bufferStart_;
  jint bufferLength_;
  jint bufferPosition_;
}

- (void)checkBufferSizeWithInt:(jint)bufferSize;

- (void)refill;

@end

__attribute__((unused)) static void OrgApacheLuceneStoreBufferedIndexInput_checkBufferSizeWithInt_(OrgApacheLuceneStoreBufferedIndexInput *self, jint bufferSize);

__attribute__((unused)) static void OrgApacheLuceneStoreBufferedIndexInput_refill(OrgApacheLuceneStoreBufferedIndexInput *self);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneStoreBufferedIndexInput__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneStoreBufferedIndexInput__Annotations$1(void);

@implementation OrgApacheLuceneStoreBufferedIndexInput

- (jbyte)readByte {
  if (bufferPosition_ >= bufferLength_) OrgApacheLuceneStoreBufferedIndexInput_refill(self);
  return IOSByteArray_Get(nil_chk(buffer_), bufferPosition_++);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreBufferedIndexInput_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)resourceDesc {
  OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_(self, resourceDesc);
  return self;
}

- (instancetype)initWithInt:(jint)bufferSize {
  OrgApacheLuceneStoreBufferedIndexInput_initWithInt_(self, bufferSize);
  return self;
}

- (instancetype)initWithNSString:(NSString *)resourceDesc
                         withInt:(jint)bufferSize {
  OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withInt_(self, resourceDesc, bufferSize);
  return self;
}

- (void)setBufferSizeWithInt:(jint)newSize {
  JreAssert(buffer_ == nil || bufferSize_ == buffer_->size_, JreStrcat("$@$I$I", @"buffer=", buffer_, @" bufferSize=", bufferSize_, @" buffer.length=", (buffer_ != nil ? buffer_->size_ : 0)));
  if (newSize != bufferSize_) {
    OrgApacheLuceneStoreBufferedIndexInput_checkBufferSizeWithInt_(self, newSize);
    bufferSize_ = newSize;
    if (buffer_ != nil) {
      IOSByteArray *newBuffer = [IOSByteArray newArrayWithLength:newSize];
      jint leftInBuffer = bufferLength_ - bufferPosition_;
      jint numToCopy;
      if (leftInBuffer > newSize) numToCopy = newSize;
      else numToCopy = leftInBuffer;
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, bufferPosition_, newBuffer, 0, numToCopy);
      bufferStart_ += bufferPosition_;
      bufferPosition_ = 0;
      bufferLength_ = numToCopy;
      [self newBufferWithByteArray:newBuffer];
    }
  }
}

- (void)newBufferWithByteArray:(IOSByteArray *)newBuffer {
  buffer_ = newBuffer;
}

- (jint)getBufferSize {
  return bufferSize_;
}

- (void)checkBufferSizeWithInt:(jint)bufferSize {
  OrgApacheLuceneStoreBufferedIndexInput_checkBufferSizeWithInt_(self, bufferSize);
}

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len {
  [self readBytesWithByteArray:b withInt:offset withInt:len withBoolean:true];
}

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len
                   withBoolean:(jboolean)useBuffer {
  if (len <= (bufferLength_ - bufferPosition_)) {
    if (len > 0) JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, bufferPosition_, b, offset, len);
    bufferPosition_ += len;
  }
  else {
    jint available = bufferLength_ - bufferPosition_;
    if (available > 0) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, bufferPosition_, b, offset, available);
      offset += available;
      len -= available;
      bufferPosition_ += available;
    }
    if (useBuffer && len < bufferSize_) {
      OrgApacheLuceneStoreBufferedIndexInput_refill(self);
      if (bufferLength_ < len) {
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, 0, b, offset, bufferLength_);
        @throw new_JavaIoIOException_initWithNSString_(@"read past EOF");
      }
      else {
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, 0, b, offset, len);
        bufferPosition_ = len;
      }
    }
    else {
      jlong after = bufferStart_ + bufferPosition_ + len;
      if (after > [self length]) @throw new_JavaIoIOException_initWithNSString_(@"read past EOF");
      [self readInternalWithByteArray:b withInt:offset withInt:len];
      bufferStart_ = after;
      bufferPosition_ = 0;
      bufferLength_ = 0;
    }
  }
}

- (jint)readInt {
  if (4 <= (bufferLength_ - bufferPosition_)) {
    return (JreLShift32((IOSByteArray_Get(nil_chk(buffer_), bufferPosition_++) & (jint) 0xFF), 24)) | (JreLShift32((IOSByteArray_Get(buffer_, bufferPosition_++) & (jint) 0xFF), 16)) | (JreLShift32((IOSByteArray_Get(buffer_, bufferPosition_++) & (jint) 0xFF), 8)) | (IOSByteArray_Get(buffer_, bufferPosition_++) & (jint) 0xFF);
  }
  else {
    return [super readInt];
  }
}

- (jlong)readLong {
  if (8 <= (bufferLength_ - bufferPosition_)) {
    jint i1 = (JreLShift32((IOSByteArray_Get(nil_chk(buffer_), bufferPosition_++) & (jint) 0xff), 24)) | (JreLShift32((IOSByteArray_Get(buffer_, bufferPosition_++) & (jint) 0xff), 16)) | (JreLShift32((IOSByteArray_Get(buffer_, bufferPosition_++) & (jint) 0xff), 8)) | (IOSByteArray_Get(buffer_, bufferPosition_++) & (jint) 0xff);
    jint i2 = (JreLShift32((IOSByteArray_Get(buffer_, bufferPosition_++) & (jint) 0xff), 24)) | (JreLShift32((IOSByteArray_Get(buffer_, bufferPosition_++) & (jint) 0xff), 16)) | (JreLShift32((IOSByteArray_Get(buffer_, bufferPosition_++) & (jint) 0xff), 8)) | (IOSByteArray_Get(buffer_, bufferPosition_++) & (jint) 0xff);
    return (JreLShift64(((jlong) i1), 32)) | (i2 & (jlong) 0xFFFFFFFFLL);
  }
  else {
    return [super readLong];
  }
}

- (jint)readVInt {
  if (5 <= (bufferLength_ - bufferPosition_)) {
    jbyte b = IOSByteArray_Get(nil_chk(buffer_), bufferPosition_++);
    jint i = b & (jint) 0x7F;
    for (jint shift = 7; (b & (jint) 0x80) != 0; shift += 7) {
      b = IOSByteArray_Get(buffer_, bufferPosition_++);
      i |= JreLShift32((b & (jint) 0x7F), shift);
    }
    return i;
  }
  else {
    return [super readVInt];
  }
}

- (jlong)readVLong {
  if (9 <= bufferLength_ - bufferPosition_) {
    jbyte b = IOSByteArray_Get(nil_chk(buffer_), bufferPosition_++);
    jlong i = b & (jint) 0x7F;
    for (jint shift = 7; (b & (jint) 0x80) != 0; shift += 7) {
      b = IOSByteArray_Get(buffer_, bufferPosition_++);
      i |= JreLShift64((b & (jlong) 0x7FLL), shift);
    }
    return i;
  }
  else {
    return [super readVLong];
  }
}

- (void)refill {
  OrgApacheLuceneStoreBufferedIndexInput_refill(self);
}

- (void)readInternalWithByteArray:(IOSByteArray *)b
                          withInt:(jint)offset
                          withInt:(jint)length {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jlong)getFilePointer {
  return bufferStart_ + bufferPosition_;
}

- (void)seekWithLong:(jlong)pos {
  if (pos >= bufferStart_ && pos < (bufferStart_ + bufferLength_)) bufferPosition_ = (jint) (pos - bufferStart_);
  else {
    bufferStart_ = pos;
    bufferPosition_ = 0;
    bufferLength_ = 0;
    [self seekInternalWithLong:pos];
  }
}

- (void)seekInternalWithLong:(jlong)pos {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id)java_clone {
  OrgApacheLuceneStoreBufferedIndexInput *clone = (OrgApacheLuceneStoreBufferedIndexInput *) cast_chk([super java_clone], [OrgApacheLuceneStoreBufferedIndexInput class]);
  ((OrgApacheLuceneStoreBufferedIndexInput *) nil_chk(clone))->buffer_ = nil;
  clone->bufferLength_ = 0;
  clone->bufferPosition_ = 0;
  clone->bufferStart_ = [self getFilePointer];
  return clone;
}

- (jint)flushBufferWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)outArg
                                              withLong:(jlong)numBytes {
  jint toCopy = bufferLength_ - bufferPosition_;
  if (toCopy > numBytes) {
    toCopy = (jint) numBytes;
  }
  if (toCopy > 0) {
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(outArg)) writeBytesWithByteArray:buffer_ withInt:bufferPosition_ withInt:toCopy];
    bufferPosition_ += toCopy;
  }
  return toCopy;
}

- (void)copyBytesWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)outArg
                                            withLong:(jlong)numBytes {
  JreAssert(numBytes >= 0, JreStrcat("$J", @"numBytes=", numBytes));
  while (numBytes > 0) {
    if (bufferLength_ == bufferPosition_) {
      OrgApacheLuceneStoreBufferedIndexInput_refill(self);
    }
    numBytes -= [self flushBufferWithOrgApacheLuceneStoreIndexOutput:outArg withLong:numBytes];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "B", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, 1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, 4, -1 },
    { NULL, NULL, 0x1, -1, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 7, 8, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 9, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, 0, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 12, 0, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x404, 13, 11, 0, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 15, 0, -1, -1, -1 },
    { NULL, "V", 0x404, 16, 15, 0, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 17, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 18, 19, 0, -1, -1, -1 },
    { NULL, "V", 0x1, 20, 19, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(readByte);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(initWithNSString:);
  methods[3].selector = @selector(initWithInt:);
  methods[4].selector = @selector(initWithNSString:withInt:);
  methods[5].selector = @selector(setBufferSizeWithInt:);
  methods[6].selector = @selector(newBufferWithByteArray:);
  methods[7].selector = @selector(getBufferSize);
  methods[8].selector = @selector(checkBufferSizeWithInt:);
  methods[9].selector = @selector(readBytesWithByteArray:withInt:withInt:);
  methods[10].selector = @selector(readBytesWithByteArray:withInt:withInt:withBoolean:);
  methods[11].selector = @selector(readInt);
  methods[12].selector = @selector(readLong);
  methods[13].selector = @selector(readVInt);
  methods[14].selector = @selector(readVLong);
  methods[15].selector = @selector(refill);
  methods[16].selector = @selector(readInternalWithByteArray:withInt:withInt:);
  methods[17].selector = @selector(getFilePointer);
  methods[18].selector = @selector(seekWithLong:);
  methods[19].selector = @selector(seekInternalWithLong:);
  methods[20].selector = @selector(java_clone);
  methods[21].selector = @selector(flushBufferWithOrgApacheLuceneStoreIndexOutput:withLong:);
  methods[22].selector = @selector(copyBytesWithOrgApacheLuceneStoreIndexOutput:withLong:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "BUFFER_SIZE", "I", .constantValue.asInt = OrgApacheLuceneStoreBufferedIndexInput_BUFFER_SIZE, 0x19, -1, -1, -1, -1 },
    { "bufferSize_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "buffer_", "[B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "bufferStart_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "bufferLength_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "bufferPosition_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaIoIOException;", (void *)&OrgApacheLuceneStoreBufferedIndexInput__Annotations$0, "LNSString;", "I", (void *)&OrgApacheLuceneStoreBufferedIndexInput__Annotations$1, "LNSString;I", "setBufferSize", "newBuffer", "[B", "checkBufferSize", "readBytes", "[BII", "[BIIZ", "readInternal", "seek", "J", "seekInternal", "clone", "flushBuffer", "LOrgApacheLuceneStoreIndexOutput;J", "copyBytes" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreBufferedIndexInput = { "BufferedIndexInput", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x401, 23, 6, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreBufferedIndexInput;
}

@end

void OrgApacheLuceneStoreBufferedIndexInput_init(OrgApacheLuceneStoreBufferedIndexInput *self) {
  OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_(self, @"anonymous BuffereIndexInput");
}

void OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_(OrgApacheLuceneStoreBufferedIndexInput *self, NSString *resourceDesc) {
  OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withInt_(self, resourceDesc, OrgApacheLuceneStoreBufferedIndexInput_BUFFER_SIZE);
}

void OrgApacheLuceneStoreBufferedIndexInput_initWithInt_(OrgApacheLuceneStoreBufferedIndexInput *self, jint bufferSize) {
  OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withInt_(self, @"anonymous BuffereIndexInput", bufferSize);
}

void OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withInt_(OrgApacheLuceneStoreBufferedIndexInput *self, NSString *resourceDesc, jint bufferSize) {
  OrgApacheLuceneStoreIndexInput_initWithNSString_(self, resourceDesc);
  self->bufferSize_ = OrgApacheLuceneStoreBufferedIndexInput_BUFFER_SIZE;
  self->bufferStart_ = 0;
  self->bufferLength_ = 0;
  self->bufferPosition_ = 0;
  OrgApacheLuceneStoreBufferedIndexInput_checkBufferSizeWithInt_(self, bufferSize);
  self->bufferSize_ = bufferSize;
}

void OrgApacheLuceneStoreBufferedIndexInput_checkBufferSizeWithInt_(OrgApacheLuceneStoreBufferedIndexInput *self, jint bufferSize) {
  if (bufferSize <= 0) @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$IC", @"bufferSize must be greater than 0 (got ", bufferSize, ')'));
}

void OrgApacheLuceneStoreBufferedIndexInput_refill(OrgApacheLuceneStoreBufferedIndexInput *self) {
  jlong start = self->bufferStart_ + self->bufferPosition_;
  jlong end = start + self->bufferSize_;
  if (end > [self length]) end = [self length];
  jint newLength = (jint) (end - start);
  if (newLength <= 0) @throw new_JavaIoIOException_initWithNSString_(@"read past EOF");
  if (self->buffer_ == nil) {
    [self newBufferWithByteArray:[IOSByteArray newArrayWithLength:self->bufferSize_]];
    [self seekInternalWithLong:self->bufferStart_];
  }
  [self readInternalWithByteArray:self->buffer_ withInt:0 withInt:newLength];
  self->bufferLength_ = newLength;
  self->bufferStart_ = start;
  self->bufferPosition_ = 0;
}

IOSObjectArray *OrgApacheLuceneStoreBufferedIndexInput__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneStoreBufferedIndexInput__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreBufferedIndexInput)
