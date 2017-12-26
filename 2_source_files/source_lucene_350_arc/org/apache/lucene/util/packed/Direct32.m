//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/packed/Direct32.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/packed/Direct32.h"
#include "org/apache/lucene/util/packed/PackedInts.h"

@interface OrgApacheLuceneUtilPackedDirect32 () {
 @public
  IOSIntArray *values_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedDirect32, values_, IOSIntArray *)

inline jint OrgApacheLuceneUtilPackedDirect32_get_BITS_PER_VALUE(void);
#define OrgApacheLuceneUtilPackedDirect32_BITS_PER_VALUE 32
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilPackedDirect32, BITS_PER_VALUE, jint)

@implementation OrgApacheLuceneUtilPackedDirect32

- (instancetype)initWithInt:(jint)valueCount {
  OrgApacheLuceneUtilPackedDirect32_initWithInt_(self, valueCount);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                              withInt:(jint)valueCount {
  OrgApacheLuceneUtilPackedDirect32_initWithOrgApacheLuceneStoreDataInput_withInt_(self, inArg, valueCount);
  return self;
}

- (instancetype)initWithIntArray:(IOSIntArray *)values {
  OrgApacheLuceneUtilPackedDirect32_initWithIntArray_(self, values);
  return self;
}

- (jlong)getWithInt:(jint)index {
  return (jlong) 0xFFFFFFFFLL & IOSIntArray_Get(nil_chk(values_), index);
}

- (void)setWithInt:(jint)index
          withLong:(jlong)value {
  *IOSIntArray_GetRef(nil_chk(values_), index) = (jint) (value & (jint) 0xFFFFFFFF);
}

- (jlong)ramBytesUsed {
  return JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_ARRAY_HEADER) + ((IOSIntArray *) nil_chk(values_))->size_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT;
}

- (void)clear {
  JavaUtilArrays_fillWithIntArray_withInt_(values_, 0);
}

- (IOSIntArray *)getArray {
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
    { NULL, "[I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(initWithOrgApacheLuceneStoreDataInput:withInt:);
  methods[2].selector = @selector(initWithIntArray:);
  methods[3].selector = @selector(getWithInt:);
  methods[4].selector = @selector(setWithInt:withLong:);
  methods[5].selector = @selector(ramBytesUsed);
  methods[6].selector = @selector(clear);
  methods[7].selector = @selector(getArray);
  methods[8].selector = @selector(hasArray);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "values_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "BITS_PER_VALUE", "I", .constantValue.asInt = OrgApacheLuceneUtilPackedDirect32_BITS_PER_VALUE, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "LOrgApacheLuceneStoreDataInput;I", "LJavaIoIOException;", "[I", "get", "set", "IJ" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirect32 = { "Direct32", "org.apache.lucene.util.packed", ptrTable, methods, fields, 7, 0x0, 9, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedDirect32;
}

@end

void OrgApacheLuceneUtilPackedDirect32_initWithInt_(OrgApacheLuceneUtilPackedDirect32 *self, jint valueCount) {
  OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_initWithInt_withInt_(self, valueCount, OrgApacheLuceneUtilPackedDirect32_BITS_PER_VALUE);
  self->values_ = [IOSIntArray newArrayWithLength:valueCount];
}

OrgApacheLuceneUtilPackedDirect32 *new_OrgApacheLuceneUtilPackedDirect32_initWithInt_(jint valueCount) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedDirect32, initWithInt_, valueCount)
}

OrgApacheLuceneUtilPackedDirect32 *create_OrgApacheLuceneUtilPackedDirect32_initWithInt_(jint valueCount) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedDirect32, initWithInt_, valueCount)
}

void OrgApacheLuceneUtilPackedDirect32_initWithOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneUtilPackedDirect32 *self, OrgApacheLuceneStoreDataInput *inArg, jint valueCount) {
  OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_initWithInt_withInt_(self, valueCount, OrgApacheLuceneUtilPackedDirect32_BITS_PER_VALUE);
  IOSIntArray *values = [IOSIntArray newArrayWithLength:valueCount];
  for (jint i = 0; i < valueCount; i++) {
    *IOSIntArray_GetRef(values, i) = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readInt];
  }
  jint mod = valueCount % 2;
  if (mod != 0) {
    [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readInt];
  }
  self->values_ = values;
}

OrgApacheLuceneUtilPackedDirect32 *new_OrgApacheLuceneUtilPackedDirect32_initWithOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint valueCount) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedDirect32, initWithOrgApacheLuceneStoreDataInput_withInt_, inArg, valueCount)
}

OrgApacheLuceneUtilPackedDirect32 *create_OrgApacheLuceneUtilPackedDirect32_initWithOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint valueCount) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedDirect32, initWithOrgApacheLuceneStoreDataInput_withInt_, inArg, valueCount)
}

void OrgApacheLuceneUtilPackedDirect32_initWithIntArray_(OrgApacheLuceneUtilPackedDirect32 *self, IOSIntArray *values) {
  OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_initWithInt_withInt_(self, ((IOSIntArray *) nil_chk(values))->size_, OrgApacheLuceneUtilPackedDirect32_BITS_PER_VALUE);
  self->values_ = values;
}

OrgApacheLuceneUtilPackedDirect32 *new_OrgApacheLuceneUtilPackedDirect32_initWithIntArray_(IOSIntArray *values) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedDirect32, initWithIntArray_, values)
}

OrgApacheLuceneUtilPackedDirect32 *create_OrgApacheLuceneUtilPackedDirect32_initWithIntArray_(IOSIntArray *values) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedDirect32, initWithIntArray_, values)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirect32)
