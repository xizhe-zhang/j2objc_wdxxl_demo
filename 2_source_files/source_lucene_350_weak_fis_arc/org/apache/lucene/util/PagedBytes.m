//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/util/PagedBytes.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/CloseableThreadLocal.h"
#include "org/apache/lucene/util/PagedBytes.h"

@interface OrgApacheLuceneUtilPagedBytes () {
 @public
  id<JavaUtilList> blocks_;
  id<JavaUtilList> blockEnd_;
  jint blockSize_;
  jint blockBits_;
  jint blockMask_;
  jboolean didSkipBytes_;
  jboolean frozen_;
  jint upto_;
  IOSByteArray *currentBlock_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPagedBytes, blocks_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPagedBytes, blockEnd_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPagedBytes, currentBlock_, IOSByteArray *)

inline IOSByteArray *OrgApacheLuceneUtilPagedBytes_get_EMPTY_BYTES(void);
static IOSByteArray *OrgApacheLuceneUtilPagedBytes_EMPTY_BYTES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilPagedBytes, EMPTY_BYTES, IOSByteArray *)

@interface OrgApacheLuceneUtilPagedBytes_Reader () {
 @public
  IOSObjectArray *blocks_;
  IOSIntArray *blockEnds_;
  jint blockBits_;
  jint blockMask_;
  jint blockSize_;
  OrgApacheLuceneUtilCloseableThreadLocal *threadBuffers_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPagedBytes_Reader, blocks_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPagedBytes_Reader, blockEnds_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPagedBytes_Reader, threadBuffers_, OrgApacheLuceneUtilCloseableThreadLocal *)

@interface OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput () {
 @public
  OrgApacheLuceneUtilPagedBytes *this$0_;
  jint currentBlockIndex_;
  jint currentBlockUpto_;
  IOSByteArray *currentBlock_;
}

- (void)nextBlock;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput, currentBlock_, IOSByteArray *)

__attribute__((unused)) static void OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_nextBlock(OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput *self);

@interface OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput () {
 @public
  OrgApacheLuceneUtilPagedBytes *this$0_;
}

@end

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilPagedBytes)

@implementation OrgApacheLuceneUtilPagedBytes

- (instancetype)initWithInt:(jint)blockBits {
  OrgApacheLuceneUtilPagedBytes_initWithInt_(self, blockBits);
  return self;
}

- (void)copy__WithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg
                                        withLong:(jlong)byteCount {
  while (byteCount > 0) {
    jint left = blockSize_ - upto_;
    if (left == 0) {
      if (currentBlock_ != nil) {
        [((id<JavaUtilList>) nil_chk(blocks_)) addWithId:currentBlock_];
        [((id<JavaUtilList>) nil_chk(blockEnd_)) addWithId:JavaLangInteger_valueOfWithInt_(upto_)];
      }
      currentBlock_ = [IOSByteArray newArrayWithLength:blockSize_];
      upto_ = 0;
      left = blockSize_;
    }
    if (left < byteCount) {
      [((OrgApacheLuceneStoreIndexInput *) nil_chk(inArg)) readBytesWithByteArray:currentBlock_ withInt:upto_ withInt:left withBoolean:false];
      upto_ = blockSize_;
      byteCount -= left;
    }
    else {
      [((OrgApacheLuceneStoreIndexInput *) nil_chk(inArg)) readBytesWithByteArray:currentBlock_ withInt:upto_ withInt:(jint) byteCount withBoolean:false];
      upto_ += byteCount;
      break;
    }
  }
}

- (void)copy__WithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes {
  jint byteCount = ((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes))->length_;
  jint bytesUpto = bytes->offset_;
  while (byteCount > 0) {
    jint left = blockSize_ - upto_;
    if (left == 0) {
      if (currentBlock_ != nil) {
        [((id<JavaUtilList>) nil_chk(blocks_)) addWithId:currentBlock_];
        [((id<JavaUtilList>) nil_chk(blockEnd_)) addWithId:JavaLangInteger_valueOfWithInt_(upto_)];
      }
      currentBlock_ = [IOSByteArray newArrayWithLength:blockSize_];
      upto_ = 0;
      left = blockSize_;
    }
    if (left < byteCount) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bytes->bytes_, bytesUpto, currentBlock_, upto_, left);
      upto_ = blockSize_;
      byteCount -= left;
      bytesUpto += left;
    }
    else {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bytes->bytes_, bytesUpto, currentBlock_, upto_, byteCount);
      upto_ += byteCount;
      break;
    }
  }
}

- (void)copy__WithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes
              withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)outArg {
  jint left = blockSize_ - upto_;
  if (((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes))->length_ > left || currentBlock_ == nil) {
    if (currentBlock_ != nil) {
      [((id<JavaUtilList>) nil_chk(blocks_)) addWithId:currentBlock_];
      [((id<JavaUtilList>) nil_chk(blockEnd_)) addWithId:JavaLangInteger_valueOfWithInt_(upto_)];
      didSkipBytes_ = true;
    }
    currentBlock_ = [IOSByteArray newArrayWithLength:blockSize_];
    upto_ = 0;
    left = blockSize_;
    JreAssert(bytes->length_ <= blockSize_, @"org/apache/lucene/util/PagedBytes.java:332 condition failed: assert bytes.length <= blockSize;");
  }
  ((OrgApacheLuceneUtilBytesRef *) nil_chk(outArg))->bytes_ = currentBlock_;
  outArg->offset_ = upto_;
  outArg->length_ = bytes->length_;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bytes->bytes_, bytes->offset_, currentBlock_, upto_, bytes->length_);
  upto_ += bytes->length_;
}

- (OrgApacheLuceneUtilPagedBytes_Reader *)freezeWithBoolean:(jboolean)trim {
  if (frozen_) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"already frozen");
  }
  if (didSkipBytes_) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"cannot freeze when copy(BytesRef, BytesRef) was used");
  }
  if (trim && upto_ < blockSize_) {
    IOSByteArray *newBlock = [IOSByteArray newArrayWithLength:upto_];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(currentBlock_, 0, newBlock, 0, upto_);
    currentBlock_ = newBlock;
  }
  if (currentBlock_ == nil) {
    currentBlock_ = OrgApacheLuceneUtilPagedBytes_EMPTY_BYTES;
  }
  [((id<JavaUtilList>) nil_chk(blocks_)) addWithId:currentBlock_];
  [((id<JavaUtilList>) nil_chk(blockEnd_)) addWithId:JavaLangInteger_valueOfWithInt_(upto_)];
  frozen_ = true;
  currentBlock_ = nil;
  return new_OrgApacheLuceneUtilPagedBytes_Reader_initWithOrgApacheLuceneUtilPagedBytes_(self);
}

- (jlong)getPointer {
  if (currentBlock_ == nil) {
    return 0;
  }
  else {
    return ([((id<JavaUtilList>) nil_chk(blocks_)) size] * ((jlong) blockSize_)) + upto_;
  }
}

- (jlong)copyUsingLengthPrefixWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes {
  if (upto_ + ((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes))->length_ + 2 > blockSize_) {
    if (bytes->length_ + 2 > blockSize_) {
      @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$I$", @"block size ", blockSize_, @" is too small to store length ", bytes->length_, @" bytes"));
    }
    if (currentBlock_ != nil) {
      [((id<JavaUtilList>) nil_chk(blocks_)) addWithId:currentBlock_];
      [((id<JavaUtilList>) nil_chk(blockEnd_)) addWithId:JavaLangInteger_valueOfWithInt_(upto_)];
    }
    currentBlock_ = [IOSByteArray newArrayWithLength:blockSize_];
    upto_ = 0;
  }
  jlong pointer = [self getPointer];
  if (bytes->length_ < 128) {
    *IOSByteArray_GetRef(nil_chk(currentBlock_), upto_++) = (jbyte) bytes->length_;
  }
  else {
    *IOSByteArray_GetRef(nil_chk(currentBlock_), upto_++) = (jbyte) ((jint) 0x80 | (JreRShift32(bytes->length_, 8)));
    *IOSByteArray_GetRef(currentBlock_, upto_++) = (jbyte) (bytes->length_ & (jint) 0xff);
  }
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bytes->bytes_, bytes->offset_, currentBlock_, upto_, bytes->length_);
  upto_ += bytes->length_;
  return pointer;
}

- (OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput *)getDataInput {
  if (!frozen_) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"must call freeze() before getDataInput");
  }
  return new_OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_initWithOrgApacheLuceneUtilPagedBytes_(self);
}

- (OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput *)getDataOutput {
  if (frozen_) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"cannot get DataOutput after freeze()");
  }
  return new_OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput_initWithOrgApacheLuceneUtilPagedBytes_(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 4, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 5, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilPagedBytes_Reader;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 8, 4, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilPagedBytes_PagedBytesDataInput;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(copy__WithOrgApacheLuceneStoreIndexInput:withLong:);
  methods[2].selector = @selector(copy__WithOrgApacheLuceneUtilBytesRef:);
  methods[3].selector = @selector(copy__WithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneUtilBytesRef:);
  methods[4].selector = @selector(freezeWithBoolean:);
  methods[5].selector = @selector(getPointer);
  methods[6].selector = @selector(copyUsingLengthPrefixWithOrgApacheLuceneUtilBytesRef:);
  methods[7].selector = @selector(getDataInput);
  methods[8].selector = @selector(getDataOutput);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "blocks_", "LJavaUtilList;", .constantValue.asLong = 0, 0x12, -1, -1, 9, -1 },
    { "blockEnd_", "LJavaUtilList;", .constantValue.asLong = 0, 0x12, -1, -1, 10, -1 },
    { "blockSize_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "blockBits_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "blockMask_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "didSkipBytes_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "frozen_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "upto_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "currentBlock_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "EMPTY_BYTES", "[B", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "copy", "LOrgApacheLuceneStoreIndexInput;J", "LJavaIoIOException;", "LOrgApacheLuceneUtilBytesRef;", "LOrgApacheLuceneUtilBytesRef;LOrgApacheLuceneUtilBytesRef;", "freeze", "Z", "copyUsingLengthPrefix", "Ljava/util/List<[B>;", "Ljava/util/List<Ljava/lang/Integer;>;", &OrgApacheLuceneUtilPagedBytes_EMPTY_BYTES, "LOrgApacheLuceneUtilPagedBytes_Reader;LOrgApacheLuceneUtilPagedBytes_PagedBytesDataInput;LOrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPagedBytes = { "PagedBytes", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x11, 9, 10, -1, 12, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPagedBytes;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilPagedBytes class]) {
    OrgApacheLuceneUtilPagedBytes_EMPTY_BYTES = [IOSByteArray newArrayWithLength:0];
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilPagedBytes)
  }
}

@end

void OrgApacheLuceneUtilPagedBytes_initWithInt_(OrgApacheLuceneUtilPagedBytes *self, jint blockBits) {
  NSObject_init(self);
  self->blocks_ = new_JavaUtilArrayList_init();
  self->blockEnd_ = new_JavaUtilArrayList_init();
  self->blockSize_ = JreLShift32(1, blockBits);
  self->blockBits_ = blockBits;
  self->blockMask_ = self->blockSize_ - 1;
  self->upto_ = self->blockSize_;
}

OrgApacheLuceneUtilPagedBytes *new_OrgApacheLuceneUtilPagedBytes_initWithInt_(jint blockBits) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPagedBytes, initWithInt_, blockBits)
}

OrgApacheLuceneUtilPagedBytes *create_OrgApacheLuceneUtilPagedBytes_initWithInt_(jint blockBits) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPagedBytes, initWithInt_, blockBits)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPagedBytes)

@implementation OrgApacheLuceneUtilPagedBytes_Reader

- (instancetype)initWithOrgApacheLuceneUtilPagedBytes:(OrgApacheLuceneUtilPagedBytes *)pagedBytes {
  OrgApacheLuceneUtilPagedBytes_Reader_initWithOrgApacheLuceneUtilPagedBytes_(self, pagedBytes);
  return self;
}

- (OrgApacheLuceneUtilBytesRef *)fillSliceWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)b
                                                                 withLong:(jlong)start
                                                                  withInt:(jint)length {
  JreAssert(length >= 0, JreStrcat("$I", @"length=", length));
  jint index = (jint) (JreRShift64(start, blockBits_));
  jint offset = (jint) (start & blockMask_);
  ((OrgApacheLuceneUtilBytesRef *) nil_chk(b))->length_ = length;
  if (blockSize_ - offset >= length) {
    b->bytes_ = IOSObjectArray_Get(nil_chk(blocks_), index);
    b->offset_ = offset;
  }
  else {
    IOSByteArray *buffer = [((OrgApacheLuceneUtilCloseableThreadLocal *) nil_chk(threadBuffers_)) get];
    if (buffer == nil) {
      buffer = [IOSByteArray newArrayWithLength:length];
      [threadBuffers_ setWithId:buffer];
    }
    else if (buffer->size_ < length) {
      buffer = OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(buffer, length);
      [threadBuffers_ setWithId:buffer];
    }
    b->bytes_ = buffer;
    b->offset_ = 0;
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(IOSObjectArray_Get(nil_chk(blocks_), index), offset, buffer, 0, blockSize_ - offset);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(IOSObjectArray_Get(blocks_, 1 + index), 0, buffer, blockSize_ - offset, length - (blockSize_ - offset));
  }
  return b;
}

- (OrgApacheLuceneUtilBytesRef *)fillWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)b
                                                            withLong:(jlong)start {
  jint index = (jint) (JreRShift64(start, blockBits_));
  jint offset = (jint) (start & blockMask_);
  IOSByteArray *block = ((OrgApacheLuceneUtilBytesRef *) nil_chk(b))->bytes_ = IOSObjectArray_Get(nil_chk(blocks_), index);
  if ((IOSByteArray_Get(block, offset) & 128) == 0) {
    b->length_ = IOSByteArray_Get(block, offset);
    b->offset_ = offset + 1;
  }
  else {
    b->length_ = (JreLShift32((IOSByteArray_Get(block, offset) & (jint) 0x7f), 8)) | (IOSByteArray_Get(block, 1 + offset) & (jint) 0xff);
    b->offset_ = offset + 2;
    JreAssert(b->length_ > 0, @"org/apache/lucene/util/PagedBytes.java:129 condition failed: assert b.length > 0;");
  }
  return b;
}

- (jint)fillAndGetIndexWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)b
                                              withLong:(jlong)start {
  jint index = (jint) (JreRShift64(start, blockBits_));
  jint offset = (jint) (start & blockMask_);
  IOSByteArray *block = ((OrgApacheLuceneUtilBytesRef *) nil_chk(b))->bytes_ = IOSObjectArray_Get(nil_chk(blocks_), index);
  if ((IOSByteArray_Get(block, offset) & 128) == 0) {
    b->length_ = IOSByteArray_Get(block, offset);
    b->offset_ = offset + 1;
  }
  else {
    b->length_ = (JreLShift32((IOSByteArray_Get(block, offset) & (jint) 0x7f), 8)) | (IOSByteArray_Get(block, 1 + offset) & (jint) 0xff);
    b->offset_ = offset + 2;
    JreAssert(b->length_ > 0, @"org/apache/lucene/util/PagedBytes.java:155 condition failed: assert b.length > 0;");
  }
  return index;
}

- (jlong)fillAndGetStartWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)b
                                               withLong:(jlong)start {
  jint index = (jint) (JreRShift64(start, blockBits_));
  jint offset = (jint) (start & blockMask_);
  IOSByteArray *block = ((OrgApacheLuceneUtilBytesRef *) nil_chk(b))->bytes_ = IOSObjectArray_Get(nil_chk(blocks_), index);
  if ((IOSByteArray_Get(block, offset) & 128) == 0) {
    b->length_ = IOSByteArray_Get(block, offset);
    b->offset_ = offset + 1;
    start += 1LL + b->length_;
  }
  else {
    b->length_ = (JreLShift32((IOSByteArray_Get(block, offset) & (jint) 0x7f), 8)) | (IOSByteArray_Get(block, 1 + offset) & (jint) 0xff);
    b->offset_ = offset + 2;
    start += 2LL + b->length_;
    JreAssert(b->length_ > 0, @"org/apache/lucene/util/PagedBytes.java:187 condition failed: assert b.length > 0;");
  }
  return start;
}

- (OrgApacheLuceneUtilBytesRef *)fillSliceWithPrefixWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)b
                                                                           withLong:(jlong)start {
  jint index = (jint) (JreRShift64(start, blockBits_));
  jint offset = (jint) (start & blockMask_);
  IOSByteArray *block = IOSObjectArray_Get(nil_chk(blocks_), index);
  jint length;
  if ((IOSByteArray_Get(nil_chk(block), offset) & 128) == 0) {
    length = IOSByteArray_Get(block, offset);
    offset = offset + 1;
  }
  else {
    length = (JreLShift32((IOSByteArray_Get(block, offset) & (jint) 0x7f), 8)) | (IOSByteArray_Get(block, 1 + offset) & (jint) 0xff);
    offset = offset + 2;
    JreAssert(length > 0, @"org/apache/lucene/util/PagedBytes.java:215 condition failed: assert length > 0;");
  }
  JreAssert(length >= 0, JreStrcat("$I", @"length=", length));
  ((OrgApacheLuceneUtilBytesRef *) nil_chk(b))->length_ = length;
  if (blockSize_ - offset >= length) {
    b->offset_ = offset;
    b->bytes_ = IOSObjectArray_Get(blocks_, index);
  }
  else {
    IOSByteArray *buffer = [((OrgApacheLuceneUtilCloseableThreadLocal *) nil_chk(threadBuffers_)) get];
    if (buffer == nil) {
      buffer = [IOSByteArray newArrayWithLength:length];
      [threadBuffers_ setWithId:buffer];
    }
    else if (buffer->size_ < length) {
      buffer = OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(buffer, length);
      [threadBuffers_ setWithId:buffer];
    }
    b->bytes_ = buffer;
    b->offset_ = 0;
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(IOSObjectArray_Get(blocks_, index), offset, buffer, 0, blockSize_ - offset);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(IOSObjectArray_Get(blocks_, 1 + index), 0, buffer, blockSize_ - offset, length - (blockSize_ - offset));
  }
  return b;
}

- (IOSObjectArray *)getBlocks {
  return blocks_;
}

- (IOSIntArray *)getBlockEnds {
  return blockEnds_;
}

- (void)close {
  [((OrgApacheLuceneUtilCloseableThreadLocal *) nil_chk(threadBuffers_)) close];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 6, 4, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, 7, 4, -1, -1, -1, -1 },
    { NULL, "[[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneUtilPagedBytes:);
  methods[1].selector = @selector(fillSliceWithOrgApacheLuceneUtilBytesRef:withLong:withInt:);
  methods[2].selector = @selector(fillWithOrgApacheLuceneUtilBytesRef:withLong:);
  methods[3].selector = @selector(fillAndGetIndexWithOrgApacheLuceneUtilBytesRef:withLong:);
  methods[4].selector = @selector(fillAndGetStartWithOrgApacheLuceneUtilBytesRef:withLong:);
  methods[5].selector = @selector(fillSliceWithPrefixWithOrgApacheLuceneUtilBytesRef:withLong:);
  methods[6].selector = @selector(getBlocks);
  methods[7].selector = @selector(getBlockEnds);
  methods[8].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "blocks_", "[[B", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "blockEnds_", "[I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "blockBits_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "blockMask_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "blockSize_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "threadBuffers_", "LOrgApacheLuceneUtilCloseableThreadLocal;", .constantValue.asLong = 0, 0x12, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilPagedBytes;", "fillSlice", "LOrgApacheLuceneUtilBytesRef;JI", "fill", "LOrgApacheLuceneUtilBytesRef;J", "fillAndGetIndex", "fillAndGetStart", "fillSliceWithPrefix", "Lorg/apache/lucene/util/CloseableThreadLocal<[B>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPagedBytes_Reader = { "Reader", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x19, 9, 6, 0, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPagedBytes_Reader;
}

@end

void OrgApacheLuceneUtilPagedBytes_Reader_initWithOrgApacheLuceneUtilPagedBytes_(OrgApacheLuceneUtilPagedBytes_Reader *self, OrgApacheLuceneUtilPagedBytes *pagedBytes) {
  NSObject_init(self);
  self->threadBuffers_ = new_OrgApacheLuceneUtilCloseableThreadLocal_init();
  self->blocks_ = [IOSObjectArray newArrayWithLength:[((id<JavaUtilList>) nil_chk(((OrgApacheLuceneUtilPagedBytes *) nil_chk(pagedBytes))->blocks_)) size] type:IOSClass_byteArray(1)];
  for (jint i = 0; i < self->blocks_->size_; i++) {
    (void) IOSObjectArray_Set(self->blocks_, i, [pagedBytes->blocks_ getWithInt:i]);
  }
  self->blockEnds_ = [IOSIntArray newArrayWithLength:self->blocks_->size_];
  for (jint i = 0; i < self->blockEnds_->size_; i++) {
    *IOSIntArray_GetRef(self->blockEnds_, i) = [((JavaLangInteger *) nil_chk([((id<JavaUtilList>) nil_chk(pagedBytes->blockEnd_)) getWithInt:i])) intValue];
  }
  self->blockBits_ = pagedBytes->blockBits_;
  self->blockMask_ = pagedBytes->blockMask_;
  self->blockSize_ = pagedBytes->blockSize_;
}

OrgApacheLuceneUtilPagedBytes_Reader *new_OrgApacheLuceneUtilPagedBytes_Reader_initWithOrgApacheLuceneUtilPagedBytes_(OrgApacheLuceneUtilPagedBytes *pagedBytes) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPagedBytes_Reader, initWithOrgApacheLuceneUtilPagedBytes_, pagedBytes)
}

OrgApacheLuceneUtilPagedBytes_Reader *create_OrgApacheLuceneUtilPagedBytes_Reader_initWithOrgApacheLuceneUtilPagedBytes_(OrgApacheLuceneUtilPagedBytes *pagedBytes) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPagedBytes_Reader, initWithOrgApacheLuceneUtilPagedBytes_, pagedBytes)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPagedBytes_Reader)

@implementation OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput

- (instancetype)initWithOrgApacheLuceneUtilPagedBytes:(OrgApacheLuceneUtilPagedBytes *)outer$ {
  OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_initWithOrgApacheLuceneUtilPagedBytes_(self, outer$);
  return self;
}

- (id)java_clone {
  OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput *clone = [this$0_ getDataInput];
  [((OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput *) nil_chk(clone)) setPositionWithLong:[self getPosition]];
  return clone;
}

- (jlong)getPosition {
  return currentBlockIndex_ * this$0_->blockSize_ + currentBlockUpto_;
}

- (void)setPositionWithLong:(jlong)pos {
  currentBlockIndex_ = (jint) (JreRShift64(pos, this$0_->blockBits_));
  currentBlock_ = [((id<JavaUtilList>) nil_chk(this$0_->blocks_)) getWithInt:currentBlockIndex_];
  currentBlockUpto_ = (jint) (pos & this$0_->blockMask_);
}

- (jbyte)readByte {
  if (currentBlockUpto_ == this$0_->blockSize_) {
    OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_nextBlock(self);
  }
  return IOSByteArray_Get(nil_chk(currentBlock_), currentBlockUpto_++);
}

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len {
  JreAssert(((IOSByteArray *) nil_chk(b))->size_ >= offset + len, @"org/apache/lucene/util/PagedBytes.java:444 condition failed: assert b.length >= offset + len;");
  jint offsetEnd = offset + len;
  while (true) {
    jint blockLeft = this$0_->blockSize_ - currentBlockUpto_;
    jint left = offsetEnd - offset;
    if (blockLeft < left) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(currentBlock_, currentBlockUpto_, b, offset, blockLeft);
      OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_nextBlock(self);
      offset += blockLeft;
    }
    else {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(currentBlock_, currentBlockUpto_, b, offset, left);
      currentBlockUpto_ += left;
      break;
    }
  }
}

- (void)nextBlock {
  OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_nextBlock(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 0, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneUtilPagedBytes:);
  methods[1].selector = @selector(java_clone);
  methods[2].selector = @selector(getPosition);
  methods[3].selector = @selector(setPositionWithLong:);
  methods[4].selector = @selector(readByte);
  methods[5].selector = @selector(readBytesWithByteArray:withInt:withInt:);
  methods[6].selector = @selector(nextBlock);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneUtilPagedBytes;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "currentBlockIndex_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "currentBlockUpto_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "currentBlock_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "clone", "setPosition", "J", "readBytes", "[BII", "LOrgApacheLuceneUtilPagedBytes;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput = { "PagedBytesDataInput", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x11, 7, 4, 5, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput;
}

@end

void OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_initWithOrgApacheLuceneUtilPagedBytes_(OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput *self, OrgApacheLuceneUtilPagedBytes *outer$) {
  self->this$0_ = outer$;
  OrgApacheLuceneStoreDataInput_init(self);
  self->currentBlock_ = [((id<JavaUtilList>) nil_chk(outer$->blocks_)) getWithInt:0];
}

OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput *new_OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_initWithOrgApacheLuceneUtilPagedBytes_(OrgApacheLuceneUtilPagedBytes *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput, initWithOrgApacheLuceneUtilPagedBytes_, outer$)
}

OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput *create_OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_initWithOrgApacheLuceneUtilPagedBytes_(OrgApacheLuceneUtilPagedBytes *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput, initWithOrgApacheLuceneUtilPagedBytes_, outer$)
}

void OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_nextBlock(OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput *self) {
  self->currentBlockIndex_++;
  self->currentBlockUpto_ = 0;
  self->currentBlock_ = [((id<JavaUtilList>) nil_chk(self->this$0_->blocks_)) getWithInt:self->currentBlockIndex_];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput)

@implementation OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput

- (instancetype)initWithOrgApacheLuceneUtilPagedBytes:(OrgApacheLuceneUtilPagedBytes *)outer$ {
  OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput_initWithOrgApacheLuceneUtilPagedBytes_(self, outer$);
  return self;
}

- (void)writeByteWithByte:(jbyte)b {
  if (this$0_->upto_ == this$0_->blockSize_) {
    if (this$0_->currentBlock_ != nil) {
      [((id<JavaUtilList>) nil_chk(this$0_->blocks_)) addWithId:this$0_->currentBlock_];
      [((id<JavaUtilList>) nil_chk(this$0_->blockEnd_)) addWithId:JavaLangInteger_valueOfWithInt_(this$0_->upto_)];
    }
    this$0_->currentBlock_ = [IOSByteArray newArrayWithLength:this$0_->blockSize_];
    this$0_->upto_ = 0;
  }
  *IOSByteArray_GetRef(nil_chk(this$0_->currentBlock_), this$0_->upto_++) = b;
}

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)length {
  JreAssert(((IOSByteArray *) nil_chk(b))->size_ >= offset + length, @"org/apache/lucene/util/PagedBytes.java:489 condition failed: assert b.length >= offset + length;");
  if (length == 0) {
    return;
  }
  if (this$0_->upto_ == this$0_->blockSize_) {
    if (this$0_->currentBlock_ != nil) {
      [((id<JavaUtilList>) nil_chk(this$0_->blocks_)) addWithId:this$0_->currentBlock_];
      [((id<JavaUtilList>) nil_chk(this$0_->blockEnd_)) addWithId:JavaLangInteger_valueOfWithInt_(this$0_->upto_)];
    }
    this$0_->currentBlock_ = [IOSByteArray newArrayWithLength:this$0_->blockSize_];
    this$0_->upto_ = 0;
  }
  jint offsetEnd = offset + length;
  while (true) {
    jint left = offsetEnd - offset;
    jint blockLeft = this$0_->blockSize_ - this$0_->upto_;
    if (blockLeft < left) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(b, offset, this$0_->currentBlock_, this$0_->upto_, blockLeft);
      [((id<JavaUtilList>) nil_chk(this$0_->blocks_)) addWithId:this$0_->currentBlock_];
      [((id<JavaUtilList>) nil_chk(this$0_->blockEnd_)) addWithId:JavaLangInteger_valueOfWithInt_(this$0_->blockSize_)];
      this$0_->currentBlock_ = [IOSByteArray newArrayWithLength:this$0_->blockSize_];
      this$0_->upto_ = 0;
      offset += blockLeft;
    }
    else {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(b, offset, this$0_->currentBlock_, this$0_->upto_, left);
      this$0_->upto_ += left;
      break;
    }
  }
}

- (jlong)getPosition {
  if (this$0_->currentBlock_ == nil) {
    return 0;
  }
  else {
    return [((id<JavaUtilList>) nil_chk(this$0_->blocks_)) size] * this$0_->blockSize_ + this$0_->upto_;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, 4, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneUtilPagedBytes:);
  methods[1].selector = @selector(writeByteWithByte:);
  methods[2].selector = @selector(writeBytesWithByteArray:withInt:withInt:);
  methods[3].selector = @selector(getPosition);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneUtilPagedBytes;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "writeByte", "B", "writeBytes", "[BII", "LJavaIoIOException;", "LOrgApacheLuceneUtilPagedBytes;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput = { "PagedBytesDataOutput", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x11, 4, 1, 5, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput;
}

@end

void OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput_initWithOrgApacheLuceneUtilPagedBytes_(OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput *self, OrgApacheLuceneUtilPagedBytes *outer$) {
  self->this$0_ = outer$;
  OrgApacheLuceneStoreDataOutput_init(self);
}

OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput *new_OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput_initWithOrgApacheLuceneUtilPagedBytes_(OrgApacheLuceneUtilPagedBytes *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput, initWithOrgApacheLuceneUtilPagedBytes_, outer$)
}

OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput *create_OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput_initWithOrgApacheLuceneUtilPagedBytes_(OrgApacheLuceneUtilPagedBytes *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput, initWithOrgApacheLuceneUtilPagedBytes_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput)
