//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/ByteSliceReader.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "org/apache/lucene/index/ByteBlockPool.h"
#include "org/apache/lucene/index/ByteSliceReader.h"
#include "org/apache/lucene/index/DocumentsWriter.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/IndexOutput.h"

@implementation OrgApacheLuceneIndexByteSliceReader

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexByteSliceReader_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)init__WithOrgApacheLuceneIndexByteBlockPool:(OrgApacheLuceneIndexByteBlockPool *)pool
                                            withInt:(jint)startIndex
                                            withInt:(jint)endIndex {
  JreAssert(endIndex - startIndex >= 0, @"org/apache/lucene/index/ByteSliceReader.java:42 condition failed: assert endIndex-startIndex >= 0;");
  JreAssert(startIndex >= 0, @"org/apache/lucene/index/ByteSliceReader.java:43 condition failed: assert startIndex >= 0;");
  JreAssert(endIndex >= 0, @"org/apache/lucene/index/ByteSliceReader.java:44 condition failed: assert endIndex >= 0;");
  self->pool_ = pool;
  self->endIndex_ = endIndex;
  level_ = 0;
  bufferUpto_ = startIndex / OrgApacheLuceneIndexDocumentsWriter_BYTE_BLOCK_SIZE;
  bufferOffset_ = bufferUpto_ * OrgApacheLuceneIndexDocumentsWriter_BYTE_BLOCK_SIZE;
  buffer_ = IOSObjectArray_Get(nil_chk(((OrgApacheLuceneIndexByteBlockPool *) nil_chk(pool))->buffers_), bufferUpto_);
  upto_ = startIndex & OrgApacheLuceneIndexDocumentsWriter_BYTE_BLOCK_MASK;
  jint firstSize = IOSIntArray_Get(nil_chk(JreLoadStatic(OrgApacheLuceneIndexByteBlockPool, levelSizeArray)), 0);
  if (startIndex + firstSize >= endIndex) {
    limit_ = endIndex & OrgApacheLuceneIndexDocumentsWriter_BYTE_BLOCK_MASK;
  }
  else limit_ = upto_ + firstSize - 4;
}

- (jboolean)eof {
  JreAssert(upto_ + bufferOffset_ <= endIndex_, @"org/apache/lucene/index/ByteSliceReader.java:65 condition failed: assert upto + bufferOffset <= endIndex;");
  return upto_ + bufferOffset_ == endIndex_;
}

- (jbyte)readByte {
  JreAssert(![self eof], @"org/apache/lucene/index/ByteSliceReader.java:71 condition failed: assert !eof();");
  JreAssert(upto_ <= limit_, @"org/apache/lucene/index/ByteSliceReader.java:72 condition failed: assert upto <= limit;");
  if (upto_ == limit_) [self nextSlice];
  return IOSByteArray_Get(nil_chk(buffer_), upto_++);
}

- (jlong)writeToWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)outArg {
  jlong size = 0;
  while (true) {
    if (limit_ + bufferOffset_ == endIndex_) {
      JreAssert(endIndex_ - bufferOffset_ >= upto_, @"org/apache/lucene/index/ByteSliceReader.java:82 condition failed: assert endIndex - bufferOffset >= upto;");
      [((OrgApacheLuceneStoreIndexOutput *) nil_chk(outArg)) writeBytesWithByteArray:buffer_ withInt:upto_ withInt:limit_ - upto_];
      size += limit_ - upto_;
      break;
    }
    else {
      [((OrgApacheLuceneStoreIndexOutput *) nil_chk(outArg)) writeBytesWithByteArray:buffer_ withInt:upto_ withInt:limit_ - upto_];
      size += limit_ - upto_;
      [self nextSlice];
    }
  }
  return size;
}

- (void)nextSlice {
  jint nextIndex = (JreLShift32((IOSByteArray_Get(nil_chk(buffer_), limit_) & (jint) 0xff), 24)) + (JreLShift32((IOSByteArray_Get(buffer_, 1 + limit_) & (jint) 0xff), 16)) + (JreLShift32((IOSByteArray_Get(buffer_, 2 + limit_) & (jint) 0xff), 8)) + (IOSByteArray_Get(buffer_, 3 + limit_) & (jint) 0xff);
  level_ = IOSIntArray_Get(nil_chk(JreLoadStatic(OrgApacheLuceneIndexByteBlockPool, nextLevelArray)), level_);
  jint newSize = IOSIntArray_Get(nil_chk(JreLoadStatic(OrgApacheLuceneIndexByteBlockPool, levelSizeArray)), level_);
  bufferUpto_ = nextIndex / OrgApacheLuceneIndexDocumentsWriter_BYTE_BLOCK_SIZE;
  bufferOffset_ = bufferUpto_ * OrgApacheLuceneIndexDocumentsWriter_BYTE_BLOCK_SIZE;
  buffer_ = IOSObjectArray_Get(nil_chk(((OrgApacheLuceneIndexByteBlockPool *) nil_chk(pool_))->buffers_), bufferUpto_);
  upto_ = nextIndex & OrgApacheLuceneIndexDocumentsWriter_BYTE_BLOCK_MASK;
  if (nextIndex + newSize >= endIndex_) {
    JreAssert(endIndex_ - nextIndex > 0, @"org/apache/lucene/index/ByteSliceReader.java:112 condition failed: assert endIndex - nextIndex > 0;");
    limit_ = endIndex_ - bufferOffset_;
  }
  else {
    limit_ = upto_ + newSize - 4;
  }
}

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len {
  while (len > 0) {
    jint numLeft = limit_ - upto_;
    if (numLeft < len) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, upto_, b, offset, numLeft);
      offset += numLeft;
      len -= numLeft;
      [self nextSlice];
    }
    else {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, upto_, b, offset, len);
      upto_ += len;
      break;
    }
  }
}

- (jlong)getFilePointer {
  @throw new_JavaLangRuntimeException_initWithNSString_(@"not implemented");
}

- (jlong)length {
  @throw new_JavaLangRuntimeException_initWithNSString_(@"not implemented");
}

- (void)seekWithLong:(jlong)pos {
  @throw new_JavaLangRuntimeException_initWithNSString_(@"not implemented");
}

- (void)close {
  @throw new_JavaLangRuntimeException_initWithNSString_(@"not implemented");
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 2, 3, 4, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(init__WithOrgApacheLuceneIndexByteBlockPool:withInt:withInt:);
  methods[2].selector = @selector(eof);
  methods[3].selector = @selector(readByte);
  methods[4].selector = @selector(writeToWithOrgApacheLuceneStoreIndexOutput:);
  methods[5].selector = @selector(nextSlice);
  methods[6].selector = @selector(readBytesWithByteArray:withInt:withInt:);
  methods[7].selector = @selector(getFilePointer);
  methods[8].selector = @selector(length);
  methods[9].selector = @selector(seekWithLong:);
  methods[10].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "pool_", "LOrgApacheLuceneIndexByteBlockPool;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "bufferUpto_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "buffer_", "[B", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "upto_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "limit_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "level_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "bufferOffset_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "endIndex_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "init", "LOrgApacheLuceneIndexByteBlockPool;II", "writeTo", "LOrgApacheLuceneStoreIndexOutput;", "LJavaIoIOException;", "readBytes", "[BII", "seek", "J" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexByteSliceReader = { "ByteSliceReader", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 11, 8, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexByteSliceReader;
}

@end

void OrgApacheLuceneIndexByteSliceReader_init(OrgApacheLuceneIndexByteSliceReader *self) {
  OrgApacheLuceneStoreIndexInput_init(self);
}

OrgApacheLuceneIndexByteSliceReader *new_OrgApacheLuceneIndexByteSliceReader_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexByteSliceReader, init)
}

OrgApacheLuceneIndexByteSliceReader *create_OrgApacheLuceneIndexByteSliceReader_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexByteSliceReader, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexByteSliceReader)
