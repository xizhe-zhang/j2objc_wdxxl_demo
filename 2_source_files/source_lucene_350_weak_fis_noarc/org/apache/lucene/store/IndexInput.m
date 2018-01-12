//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/store/IndexInput.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/store/BufferedIndexInput.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/IndexOutput.h"

@interface OrgApacheLuceneStoreIndexInput () {
 @public
  NSString *resourceDescription_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreIndexInput, resourceDescription_, NSString *)

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneStoreIndexInput__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneStoreIndexInput__Annotations$1(void);

@implementation OrgApacheLuceneStoreIndexInput

- (void)skipCharsWithInt:(jint)length {
  for (jint i = 0; i < length; i++) {
    jbyte b = [self readByte];
    if ((b & (jint) 0x80) == 0) {
    }
    else if ((b & (jint) 0xE0) != (jint) 0xE0) {
      [self readByte];
    }
    else {
      [self readByte];
      [self readByte];
    }
  }
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreIndexInput_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)resourceDescription {
  OrgApacheLuceneStoreIndexInput_initWithNSString_(self, resourceDescription);
  return self;
}

- (void)close {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jlong)getFilePointer {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)seekWithLong:(jlong)pos {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jlong)length {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)copyBytesWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)outArg
                                            withLong:(jlong)numBytes {
  JreAssert(numBytes >= 0, JreStrcat("$J", @"numBytes=", numBytes));
  IOSByteArray *copyBuf = [IOSByteArray arrayWithLength:OrgApacheLuceneStoreBufferedIndexInput_BUFFER_SIZE];
  while (numBytes > 0) {
    jint toCopy = (jint) (numBytes > copyBuf->size_ ? copyBuf->size_ : numBytes);
    [self readBytesWithByteArray:copyBuf withInt:0 withInt:toCopy];
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(outArg)) writeBytesWithByteArray:copyBuf withInt:0 withInt:toCopy];
    numBytes -= toCopy;
  }
}

- (NSString *)description {
  return resourceDescription_;
}

- (void)dealloc {
  RELEASE_(resourceDescription_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, 0, 1, 2, -1, 3, -1 },
    { NULL, NULL, 0x4, -1, -1, -1, -1, 4, -1 },
    { NULL, NULL, 0x4, -1, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "J", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 6, 7, 2, -1, -1, -1 },
    { NULL, "J", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, 2, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 10, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(skipCharsWithInt:);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(initWithNSString:);
  methods[3].selector = @selector(close);
  methods[4].selector = @selector(getFilePointer);
  methods[5].selector = @selector(seekWithLong:);
  methods[6].selector = @selector(length);
  methods[7].selector = @selector(copyBytesWithOrgApacheLuceneStoreIndexOutput:withLong:);
  methods[8].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "resourceDescription_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "skipChars", "I", "LJavaIoIOException;", (void *)&OrgApacheLuceneStoreIndexInput__Annotations$0, (void *)&OrgApacheLuceneStoreIndexInput__Annotations$1, "LNSString;", "seek", "J", "copyBytes", "LOrgApacheLuceneStoreIndexOutput;J", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreIndexInput = { "IndexInput", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x401, 9, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreIndexInput;
}

@end

void OrgApacheLuceneStoreIndexInput_init(OrgApacheLuceneStoreIndexInput *self) {
  OrgApacheLuceneStoreIndexInput_initWithNSString_(self, @"anonymous IndexInput");
}

void OrgApacheLuceneStoreIndexInput_initWithNSString_(OrgApacheLuceneStoreIndexInput *self, NSString *resourceDescription) {
  OrgApacheLuceneStoreDataInput_init(self);
  if (resourceDescription == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"resourceDescription must not be null");
  }
  JreStrongAssign(&self->resourceDescription_, resourceDescription);
}

IOSObjectArray *OrgApacheLuceneStoreIndexInput__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneStoreIndexInput__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreIndexInput)