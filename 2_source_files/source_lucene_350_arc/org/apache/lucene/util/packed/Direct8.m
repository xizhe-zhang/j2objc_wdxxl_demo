//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/packed/Direct8.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/packed/Direct8.h"
#include "org/apache/lucene/util/packed/PackedInts.h"

@interface OrgApacheLuceneUtilPackedDirect8 () {
 @public
  IOSByteArray *values_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedDirect8, values_, IOSByteArray *)

inline jint OrgApacheLuceneUtilPackedDirect8_get_BITS_PER_VALUE(void);
#define OrgApacheLuceneUtilPackedDirect8_BITS_PER_VALUE 8
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilPackedDirect8, BITS_PER_VALUE, jint)

@implementation OrgApacheLuceneUtilPackedDirect8

- (instancetype)initWithInt:(jint)valueCount {
  OrgApacheLuceneUtilPackedDirect8_initWithInt_(self, valueCount);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                              withInt:(jint)valueCount {
  OrgApacheLuceneUtilPackedDirect8_initWithOrgApacheLuceneStoreDataInput_withInt_(self, inArg, valueCount);
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)values {
  OrgApacheLuceneUtilPackedDirect8_initWithByteArray_(self, values);
  return self;
}

- (jlong)getWithInt:(jint)index {
  return (jlong) 0xFFLL & IOSByteArray_Get(nil_chk(values_), index);
}

- (void)setWithInt:(jint)index
          withLong:(jlong)value {
  *IOSByteArray_GetRef(nil_chk(values_), index) = (jbyte) (value & (jint) 0xFF);
}

- (jlong)ramBytesUsed {
  return JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_ARRAY_HEADER) + ((IOSByteArray *) nil_chk(values_))->size_;
}

- (void)clear {
  JavaUtilArrays_fillWithByteArray_withByte_(values_, (jbyte) 0);
}

- (id)getArray {
  return values_;
}

- (jboolean)hasArray {
  return true;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, 2, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 4, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(initWithOrgApacheLuceneStoreDataInput:withInt:);
  methods[2].selector = @selector(initWithByteArray:);
  methods[3].selector = @selector(getWithInt:);
  methods[4].selector = @selector(setWithInt:withLong:);
  methods[5].selector = @selector(ramBytesUsed);
  methods[6].selector = @selector(clear);
  methods[7].selector = @selector(getArray);
  methods[8].selector = @selector(hasArray);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "values_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "BITS_PER_VALUE", "I", .constantValue.asInt = OrgApacheLuceneUtilPackedDirect8_BITS_PER_VALUE, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "LOrgApacheLuceneStoreDataInput;I", "LJavaIoIOException;", "[B", "get", "set", "IJ" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirect8 = { "Direct8", "org.apache.lucene.util.packed", ptrTable, methods, fields, 7, 0x0, 9, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedDirect8;
}

@end

void OrgApacheLuceneUtilPackedDirect8_initWithInt_(OrgApacheLuceneUtilPackedDirect8 *self, jint valueCount) {
  OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_initWithInt_withInt_(self, valueCount, OrgApacheLuceneUtilPackedDirect8_BITS_PER_VALUE);
  self->values_ = [IOSByteArray newArrayWithLength:valueCount];
}

OrgApacheLuceneUtilPackedDirect8 *new_OrgApacheLuceneUtilPackedDirect8_initWithInt_(jint valueCount) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedDirect8, initWithInt_, valueCount)
}

OrgApacheLuceneUtilPackedDirect8 *create_OrgApacheLuceneUtilPackedDirect8_initWithInt_(jint valueCount) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedDirect8, initWithInt_, valueCount)
}

void OrgApacheLuceneUtilPackedDirect8_initWithOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneUtilPackedDirect8 *self, OrgApacheLuceneStoreDataInput *inArg, jint valueCount) {
  OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_initWithInt_withInt_(self, valueCount, OrgApacheLuceneUtilPackedDirect8_BITS_PER_VALUE);
  IOSByteArray *values = [IOSByteArray newArrayWithLength:valueCount];
  for (jint i = 0; i < valueCount; i++) {
    *IOSByteArray_GetRef(values, i) = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readByte];
  }
  jint mod = valueCount % 8;
  if (mod != 0) {
    jint pad = 8 - mod;
    for (jint i = 0; i < pad; i++) {
      [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readByte];
    }
  }
  self->values_ = values;
}

OrgApacheLuceneUtilPackedDirect8 *new_OrgApacheLuceneUtilPackedDirect8_initWithOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint valueCount) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedDirect8, initWithOrgApacheLuceneStoreDataInput_withInt_, inArg, valueCount)
}

OrgApacheLuceneUtilPackedDirect8 *create_OrgApacheLuceneUtilPackedDirect8_initWithOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint valueCount) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedDirect8, initWithOrgApacheLuceneStoreDataInput_withInt_, inArg, valueCount)
}

void OrgApacheLuceneUtilPackedDirect8_initWithByteArray_(OrgApacheLuceneUtilPackedDirect8 *self, IOSByteArray *values) {
  OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_initWithInt_withInt_(self, ((IOSByteArray *) nil_chk(values))->size_, OrgApacheLuceneUtilPackedDirect8_BITS_PER_VALUE);
  self->values_ = values;
}

OrgApacheLuceneUtilPackedDirect8 *new_OrgApacheLuceneUtilPackedDirect8_initWithByteArray_(IOSByteArray *values) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedDirect8, initWithByteArray_, values)
}

OrgApacheLuceneUtilPackedDirect8 *create_OrgApacheLuceneUtilPackedDirect8_initWithByteArray_(IOSByteArray *values) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedDirect8, initWithByteArray_, values)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirect8)
