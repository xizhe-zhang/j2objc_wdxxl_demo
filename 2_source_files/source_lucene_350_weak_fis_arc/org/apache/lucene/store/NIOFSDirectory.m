//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/store/NIOFSDirectory.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/EOFException.h"
#include "java/io/File.h"
#include "java/io/IOException.h"
#include "java/lang/OutOfMemoryError.h"
#include "java/lang/Throwable.h"
#include "java/nio/Buffer.h"
#include "java/nio/ByteBuffer.h"
#include "java/nio/channels/FileChannel.h"
#include "org/apache/lucene/store/FSDirectory.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/LockFactory.h"
#include "org/apache/lucene/store/NIOFSDirectory.h"
#include "org/apache/lucene/store/SimpleFSDirectory.h"

@interface OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput () {
 @public
  JavaNioByteBuffer *byteBuf_;
  IOSByteArray *otherBuffer_;
  JavaNioByteBuffer *otherByteBuf_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput, byteBuf_, JavaNioByteBuffer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput, otherBuffer_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput, otherByteBuf_, JavaNioByteBuffer *)

@implementation OrgApacheLuceneStoreNIOFSDirectory

- (instancetype)initWithJavaIoFile:(JavaIoFile *)path
withOrgApacheLuceneStoreLockFactory:(OrgApacheLuceneStoreLockFactory *)lockFactory {
  OrgApacheLuceneStoreNIOFSDirectory_initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(self, path, lockFactory);
  return self;
}

- (instancetype)initWithJavaIoFile:(JavaIoFile *)path {
  OrgApacheLuceneStoreNIOFSDirectory_initWithJavaIoFile_(self, path);
  return self;
}

- (OrgApacheLuceneStoreIndexInput *)openInputWithNSString:(NSString *)name
                                                  withInt:(jint)bufferSize {
  [self ensureOpen];
  return new_OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput_initWithJavaIoFile_withInt_withInt_(new_JavaIoFile_initWithJavaIoFile_withNSString_([self getDirectory], name), bufferSize, [self getReadChunkSize]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreIndexInput;", 0x1, 3, 4, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaIoFile:withOrgApacheLuceneStoreLockFactory:);
  methods[1].selector = @selector(initWithJavaIoFile:);
  methods[2].selector = @selector(openInputWithNSString:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaIoFile;LOrgApacheLuceneStoreLockFactory;", "LJavaIoIOException;", "LJavaIoFile;", "openInput", "LNSString;I", "LOrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreNIOFSDirectory = { "NIOFSDirectory", "org.apache.lucene.store", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, 5, -1, -1, -1 };
  return &_OrgApacheLuceneStoreNIOFSDirectory;
}

@end

void OrgApacheLuceneStoreNIOFSDirectory_initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(OrgApacheLuceneStoreNIOFSDirectory *self, JavaIoFile *path, OrgApacheLuceneStoreLockFactory *lockFactory) {
  OrgApacheLuceneStoreFSDirectory_initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(self, path, lockFactory);
}

OrgApacheLuceneStoreNIOFSDirectory *new_OrgApacheLuceneStoreNIOFSDirectory_initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(JavaIoFile *path, OrgApacheLuceneStoreLockFactory *lockFactory) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreNIOFSDirectory, initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_, path, lockFactory)
}

OrgApacheLuceneStoreNIOFSDirectory *create_OrgApacheLuceneStoreNIOFSDirectory_initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(JavaIoFile *path, OrgApacheLuceneStoreLockFactory *lockFactory) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreNIOFSDirectory, initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_, path, lockFactory)
}

void OrgApacheLuceneStoreNIOFSDirectory_initWithJavaIoFile_(OrgApacheLuceneStoreNIOFSDirectory *self, JavaIoFile *path) {
  OrgApacheLuceneStoreFSDirectory_initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(self, path, nil);
}

OrgApacheLuceneStoreNIOFSDirectory *new_OrgApacheLuceneStoreNIOFSDirectory_initWithJavaIoFile_(JavaIoFile *path) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreNIOFSDirectory, initWithJavaIoFile_, path)
}

OrgApacheLuceneStoreNIOFSDirectory *create_OrgApacheLuceneStoreNIOFSDirectory_initWithJavaIoFile_(JavaIoFile *path) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreNIOFSDirectory, initWithJavaIoFile_, path)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreNIOFSDirectory)

@implementation OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput

- (instancetype)initWithJavaIoFile:(JavaIoFile *)path
                           withInt:(jint)bufferSize
                           withInt:(jint)chunkSize {
  OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput_initWithJavaIoFile_withInt_withInt_(self, path, bufferSize, chunkSize);
  return self;
}

- (void)newBufferWithByteArray:(IOSByteArray *)newBuffer {
  [super newBufferWithByteArray:newBuffer];
  byteBuf_ = JavaNioByteBuffer_wrapWithByteArray_(newBuffer);
}

- (void)close {
  if (!isClone_ && JreLoadVolatileBoolean(&((OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor *) nil_chk(file_))->isOpen_)) {
    @try {
      [((JavaNioChannelsFileChannel *) nil_chk(channel_)) close];
    }
    @finally {
      [((OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor *) nil_chk(file_)) close];
    }
  }
}

- (void)readInternalWithByteArray:(IOSByteArray *)b
                          withInt:(jint)offset
                          withInt:(jint)len {
  JavaNioByteBuffer *bb;
  if (b == buffer_ && 0 == offset) {
    JreAssert(byteBuf_ != nil, @"org/apache/lucene/store/NIOFSDirectory.java:122 condition failed: assert byteBuf != null;");
    (void) [((JavaNioByteBuffer *) nil_chk(byteBuf_)) clear];
    (void) [((JavaNioByteBuffer *) nil_chk(byteBuf_)) limitWithInt:len];
    bb = byteBuf_;
  }
  else {
    if (offset == 0) {
      if (otherBuffer_ != b) {
        otherBuffer_ = b;
        otherByteBuf_ = JavaNioByteBuffer_wrapWithByteArray_(b);
      }
      else (void) [((JavaNioByteBuffer *) nil_chk(otherByteBuf_)) clear];
      (void) [((JavaNioByteBuffer *) nil_chk(otherByteBuf_)) limitWithInt:len];
      bb = otherByteBuf_;
    }
    else {
      bb = JavaNioByteBuffer_wrapWithByteArray_withInt_withInt_(b, offset, len);
    }
  }
  jint readOffset = [((JavaNioByteBuffer *) nil_chk(bb)) position];
  jint readLength = [bb limit] - readOffset;
  JreAssert(readLength == len, @"org/apache/lucene/store/NIOFSDirectory.java:147 condition failed: assert readLength == len;");
  jlong pos = [self getFilePointer];
  @try {
    while (readLength > 0) {
      jint limit;
      if (readLength > chunkSize_) {
        limit = readOffset + chunkSize_;
      }
      else {
        limit = readOffset + readLength;
      }
      (void) [bb limitWithInt:limit];
      jint i = [((JavaNioChannelsFileChannel *) nil_chk(channel_)) readWithJavaNioByteBuffer:bb withLong:pos];
      if (i == -1) {
        @throw new_JavaIoEOFException_initWithNSString_(JreStrcat("$@C", @"read past EOF (resource: ", self, ')'));
      }
      pos += i;
      readOffset += i;
      readLength -= i;
    }
  }
  @catch (JavaLangOutOfMemoryError *e) {
    JavaLangOutOfMemoryError *outOfMemoryError = new_JavaLangOutOfMemoryError_initWithNSString_(JreStrcat("$IC", @"OutOfMemoryError likely caused by the Sun VM Bug described in https://issues.apache.org/jira/browse/LUCENE-1566; try calling FSDirectory.setReadChunkSize with a value smaller than the current chunk size (", chunkSize_, ')'));
    (void) [outOfMemoryError initCauseWithJavaLangThrowable:e];
    @throw outOfMemoryError;
  }
  @catch (JavaIoIOException *ioe) {
    JavaIoIOException *newIOE = new_JavaIoIOException_initWithNSString_(JreStrcat("$$@", [ioe getMessage], @": ", self));
    (void) [newIOE initCauseWithJavaLangThrowable:ioe];
    @throw newIOE;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x4, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x4, 4, 5, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaIoFile:withInt:withInt:);
  methods[1].selector = @selector(newBufferWithByteArray:);
  methods[2].selector = @selector(close);
  methods[3].selector = @selector(readInternalWithByteArray:withInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "byteBuf_", "LJavaNioByteBuffer;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "otherBuffer_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "otherByteBuf_", "LJavaNioByteBuffer;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "channel_", "LJavaNioChannelsFileChannel;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaIoFile;II", "LJavaIoIOException;", "newBuffer", "[B", "readInternal", "[BII", "LOrgApacheLuceneStoreNIOFSDirectory;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput = { "NIOFSIndexInput", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0xc, 4, 4, 6, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput;
}

@end

void OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput_initWithJavaIoFile_withInt_withInt_(OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput *self, JavaIoFile *path, jint bufferSize, jint chunkSize) {
  OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaIoFile_withInt_withInt_(self, JreStrcat("$@$", @"NIOFSIndexInput(path=\"", path, @"\")"), path, bufferSize, chunkSize);
  self->channel_ = [((OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor *) nil_chk(self->file_)) getChannel];
}

OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput *new_OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput_initWithJavaIoFile_withInt_withInt_(JavaIoFile *path, jint bufferSize, jint chunkSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput, initWithJavaIoFile_withInt_withInt_, path, bufferSize, chunkSize)
}

OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput *create_OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput_initWithJavaIoFile_withInt_withInt_(JavaIoFile *path, jint bufferSize, jint chunkSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput, initWithJavaIoFile_withInt_withInt_, path, bufferSize, chunkSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput)
