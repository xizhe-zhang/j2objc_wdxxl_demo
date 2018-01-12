//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/util/packed/Packed32.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/packed/Packed32.h"
#include "org/apache/lucene/util/packed/PackedInts.h"

@interface OrgApacheLuceneUtilPackedPacked32 () {
 @public
  IOSIntArray *blocks_;
  jint maxPos_;
  IOSIntArray *shifts_;
  IOSIntArray *readMasks_;
  IOSIntArray *writeMasks_;
}

+ (jint)sizeWithInt:(jint)bitsPerValue
            withInt:(jint)valueCount;

- (void)updateCached;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPacked32, blocks_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPacked32, shifts_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPacked32, readMasks_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPacked32, writeMasks_, IOSIntArray *)

inline jint OrgApacheLuceneUtilPackedPacked32_get_ENTRY_SIZE(void);
#define OrgApacheLuceneUtilPackedPacked32_ENTRY_SIZE 33
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilPackedPacked32, ENTRY_SIZE, jint)

inline jint OrgApacheLuceneUtilPackedPacked32_get_FAC_BITPOS(void);
#define OrgApacheLuceneUtilPackedPacked32_FAC_BITPOS 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilPackedPacked32, FAC_BITPOS, jint)

inline IOSObjectArray *OrgApacheLuceneUtilPackedPacked32_get_SHIFTS(void);
static IOSObjectArray *OrgApacheLuceneUtilPackedPacked32_SHIFTS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilPackedPacked32, SHIFTS, IOSObjectArray *)

inline IOSObjectArray *OrgApacheLuceneUtilPackedPacked32_get_MASKS(void);
static IOSObjectArray *OrgApacheLuceneUtilPackedPacked32_MASKS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilPackedPacked32, MASKS, IOSObjectArray *)

inline IOSObjectArray *OrgApacheLuceneUtilPackedPacked32_get_WRITE_MASKS(void);
static IOSObjectArray *OrgApacheLuceneUtilPackedPacked32_WRITE_MASKS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilPackedPacked32, WRITE_MASKS, IOSObjectArray *)

__attribute__((unused)) static jint OrgApacheLuceneUtilPackedPacked32_sizeWithInt_withInt_(jint bitsPerValue, jint valueCount);

__attribute__((unused)) static void OrgApacheLuceneUtilPackedPacked32_updateCached(OrgApacheLuceneUtilPackedPacked32 *self);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilPackedPacked32)

@implementation OrgApacheLuceneUtilPackedPacked32

- (instancetype)initWithInt:(jint)valueCount
                    withInt:(jint)bitsPerValue {
  OrgApacheLuceneUtilPackedPacked32_initWithInt_withInt_(self, valueCount, bitsPerValue);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                              withInt:(jint)valueCount
                                              withInt:(jint)bitsPerValue {
  OrgApacheLuceneUtilPackedPacked32_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_(self, inArg, valueCount, bitsPerValue);
  return self;
}

+ (jint)sizeWithInt:(jint)bitsPerValue
            withInt:(jint)valueCount {
  return OrgApacheLuceneUtilPackedPacked32_sizeWithInt_withInt_(bitsPerValue, valueCount);
}

- (instancetype)initWithIntArray:(IOSIntArray *)blocks
                         withInt:(jint)valueCount
                         withInt:(jint)bitsPerValue {
  OrgApacheLuceneUtilPackedPacked32_initWithIntArray_withInt_withInt_(self, blocks, valueCount, bitsPerValue);
  return self;
}

- (void)updateCached {
  OrgApacheLuceneUtilPackedPacked32_updateCached(self);
}

- (jlong)getWithInt:(jint)index {
  jlong majorBitPos = (jlong) index * bitsPerValue_;
  jint elementPos = (jint) (JreURShift64(majorBitPos, OrgApacheLuceneUtilPackedPacked32_BLOCK_BITS));
  jint bitPos = (jint) (majorBitPos & OrgApacheLuceneUtilPackedPacked32_MOD_MASK);
  jint base = bitPos * OrgApacheLuceneUtilPackedPacked32_FAC_BITPOS;
  return (JreURShift32((JreLShift32(IOSIntArray_Get(nil_chk(blocks_), elementPos), IOSIntArray_Get(nil_chk(shifts_), base))), IOSIntArray_Get(shifts_, base + 1))) | ((JreURShift32(IOSIntArray_Get(blocks_, elementPos + 1), IOSIntArray_Get(shifts_, base + 2))) & IOSIntArray_Get(nil_chk(readMasks_), bitPos));
}

- (void)setWithInt:(jint)index
          withLong:(jlong)value {
  jint intValue = (jint) value;
  jlong majorBitPos = (jlong) index * bitsPerValue_;
  jint elementPos = (jint) (JreURShift64(majorBitPos, OrgApacheLuceneUtilPackedPacked32_BLOCK_BITS));
  jint bitPos = (jint) (majorBitPos & OrgApacheLuceneUtilPackedPacked32_MOD_MASK);
  jint base = bitPos * OrgApacheLuceneUtilPackedPacked32_FAC_BITPOS;
  *IOSIntArray_GetRef(nil_chk(blocks_), elementPos) = (IOSIntArray_Get(blocks_, elementPos) & IOSIntArray_Get(nil_chk(writeMasks_), base)) | (JreURShift32(JreLShift32(intValue, IOSIntArray_Get(nil_chk(shifts_), base + 1)), IOSIntArray_Get(shifts_, base)));
  *IOSIntArray_GetRef(blocks_, elementPos + 1) = (IOSIntArray_Get(blocks_, elementPos + 1) & IOSIntArray_Get(writeMasks_, base + 1)) | ((JreLShift32(intValue, IOSIntArray_Get(shifts_, base + 2))) & IOSIntArray_Get(writeMasks_, base + 2));
}

- (void)clear {
  JavaUtilArrays_fillWithIntArray_withInt_(blocks_, 0);
}

- (NSString *)description {
  return JreStrcat("$I$I$IC", @"Packed32(bitsPerValue=", bitsPerValue_, @", maxPos=", maxPos_, @", elements.length=", ((IOSIntArray *) nil_chk(blocks_))->size_, ')');
}

- (jlong)ramBytesUsed {
  return JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_ARRAY_HEADER) + ((IOSIntArray *) nil_chk(blocks_))->size_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, 2, -1, -1, -1 },
    { NULL, "I", 0xa, 3, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 9, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:withInt:);
  methods[1].selector = @selector(initWithOrgApacheLuceneStoreDataInput:withInt:withInt:);
  methods[2].selector = @selector(sizeWithInt:withInt:);
  methods[3].selector = @selector(initWithIntArray:withInt:withInt:);
  methods[4].selector = @selector(updateCached);
  methods[5].selector = @selector(getWithInt:);
  methods[6].selector = @selector(setWithInt:withLong:);
  methods[7].selector = @selector(clear);
  methods[8].selector = @selector(description);
  methods[9].selector = @selector(ramBytesUsed);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "BLOCK_SIZE", "I", .constantValue.asInt = OrgApacheLuceneUtilPackedPacked32_BLOCK_SIZE, 0x18, -1, -1, -1, -1 },
    { "BLOCK_BITS", "I", .constantValue.asInt = OrgApacheLuceneUtilPackedPacked32_BLOCK_BITS, 0x18, -1, -1, -1, -1 },
    { "MOD_MASK", "I", .constantValue.asInt = OrgApacheLuceneUtilPackedPacked32_MOD_MASK, 0x18, -1, -1, -1, -1 },
    { "ENTRY_SIZE", "I", .constantValue.asInt = OrgApacheLuceneUtilPackedPacked32_ENTRY_SIZE, 0x1a, -1, -1, -1, -1 },
    { "FAC_BITPOS", "I", .constantValue.asInt = OrgApacheLuceneUtilPackedPacked32_FAC_BITPOS, 0x1a, -1, -1, -1, -1 },
    { "SHIFTS", "[[I", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
    { "MASKS", "[[I", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
    { "WRITE_MASKS", "[[I", .constantValue.asLong = 0, 0x1a, -1, 12, -1, -1 },
    { "blocks_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "maxPos_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "shifts_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "readMasks_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "writeMasks_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "II", "LOrgApacheLuceneStoreDataInput;II", "LJavaIoIOException;", "size", "[III", "get", "I", "set", "IJ", "toString", &OrgApacheLuceneUtilPackedPacked32_SHIFTS, &OrgApacheLuceneUtilPackedPacked32_MASKS, &OrgApacheLuceneUtilPackedPacked32_WRITE_MASKS };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedPacked32 = { "Packed32", "org.apache.lucene.util.packed", ptrTable, methods, fields, 7, 0x0, 10, 13, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedPacked32;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilPackedPacked32 class]) {
    OrgApacheLuceneUtilPackedPacked32_SHIFTS = [IOSIntArray newArrayWithDimensions:2 lengths:(jint[]){ OrgApacheLuceneUtilPackedPacked32_ENTRY_SIZE, OrgApacheLuceneUtilPackedPacked32_ENTRY_SIZE * OrgApacheLuceneUtilPackedPacked32_FAC_BITPOS }];
    OrgApacheLuceneUtilPackedPacked32_MASKS = [IOSIntArray newArrayWithDimensions:2 lengths:(jint[]){ OrgApacheLuceneUtilPackedPacked32_ENTRY_SIZE, OrgApacheLuceneUtilPackedPacked32_ENTRY_SIZE }];
    {
      for (jint elementBits = 1; elementBits <= OrgApacheLuceneUtilPackedPacked32_BLOCK_SIZE; elementBits++) {
        for (jint bitPos = 0; bitPos < OrgApacheLuceneUtilPackedPacked32_BLOCK_SIZE; bitPos++) {
          IOSIntArray *currentShifts = IOSObjectArray_Get(OrgApacheLuceneUtilPackedPacked32_SHIFTS, elementBits);
          jint base = bitPos * OrgApacheLuceneUtilPackedPacked32_FAC_BITPOS;
          *IOSIntArray_GetRef(nil_chk(currentShifts), base) = bitPos;
          *IOSIntArray_GetRef(currentShifts, base + 1) = OrgApacheLuceneUtilPackedPacked32_BLOCK_SIZE - elementBits;
          if (bitPos <= OrgApacheLuceneUtilPackedPacked32_BLOCK_SIZE - elementBits) {
            *IOSIntArray_GetRef(currentShifts, base + 2) = 0;
            *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(OrgApacheLuceneUtilPackedPacked32_MASKS, elementBits)), bitPos) = 0;
          }
          else {
            jint rBits = elementBits - (OrgApacheLuceneUtilPackedPacked32_BLOCK_SIZE - bitPos);
            *IOSIntArray_GetRef(currentShifts, base + 2) = OrgApacheLuceneUtilPackedPacked32_BLOCK_SIZE - rBits;
            *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(OrgApacheLuceneUtilPackedPacked32_MASKS, elementBits)), bitPos) = ~(JreLShift32(~0, rBits));
          }
        }
      }
    }
    OrgApacheLuceneUtilPackedPacked32_WRITE_MASKS = [IOSIntArray newArrayWithDimensions:2 lengths:(jint[]){ OrgApacheLuceneUtilPackedPacked32_ENTRY_SIZE, OrgApacheLuceneUtilPackedPacked32_ENTRY_SIZE * OrgApacheLuceneUtilPackedPacked32_FAC_BITPOS }];
    {
      for (jint elementBits = 1; elementBits <= OrgApacheLuceneUtilPackedPacked32_BLOCK_SIZE; elementBits++) {
        jint elementPosMask = ~(JreLShift32(~0, elementBits));
        IOSIntArray *currentShifts = IOSObjectArray_Get(OrgApacheLuceneUtilPackedPacked32_SHIFTS, elementBits);
        IOSIntArray *currentMasks = IOSObjectArray_Get(OrgApacheLuceneUtilPackedPacked32_WRITE_MASKS, elementBits);
        for (jint bitPos = 0; bitPos < OrgApacheLuceneUtilPackedPacked32_BLOCK_SIZE; bitPos++) {
          jint base = bitPos * OrgApacheLuceneUtilPackedPacked32_FAC_BITPOS;
          *IOSIntArray_GetRef(nil_chk(currentMasks), base) = ~(JreURShift32((JreLShift32(elementPosMask, IOSIntArray_Get(nil_chk(currentShifts), base + 1))), IOSIntArray_Get(currentShifts, base)));
          if (bitPos <= OrgApacheLuceneUtilPackedPacked32_BLOCK_SIZE - elementBits) {
            *IOSIntArray_GetRef(currentMasks, base + 1) = ~0;
            *IOSIntArray_GetRef(currentMasks, base + 2) = 0;
          }
          else {
            *IOSIntArray_GetRef(currentMasks, base + 1) = ~(JreLShift32(elementPosMask, IOSIntArray_Get(currentShifts, base + 2)));
            *IOSIntArray_GetRef(currentMasks, base + 2) = IOSIntArray_Get(currentShifts, base + 2) == 0 ? 0 : ~0;
          }
        }
      }
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilPackedPacked32)
  }
}

@end

void OrgApacheLuceneUtilPackedPacked32_initWithInt_withInt_(OrgApacheLuceneUtilPackedPacked32 *self, jint valueCount, jint bitsPerValue) {
  OrgApacheLuceneUtilPackedPacked32_initWithIntArray_withInt_withInt_(self, [IOSIntArray newArrayWithLength:(jint) (((jlong) valueCount) * bitsPerValue / OrgApacheLuceneUtilPackedPacked32_BLOCK_SIZE + 2)], valueCount, bitsPerValue);
}

OrgApacheLuceneUtilPackedPacked32 *new_OrgApacheLuceneUtilPackedPacked32_initWithInt_withInt_(jint valueCount, jint bitsPerValue) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedPacked32, initWithInt_withInt_, valueCount, bitsPerValue)
}

OrgApacheLuceneUtilPackedPacked32 *create_OrgApacheLuceneUtilPackedPacked32_initWithInt_withInt_(jint valueCount, jint bitsPerValue) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedPacked32, initWithInt_withInt_, valueCount, bitsPerValue)
}

void OrgApacheLuceneUtilPackedPacked32_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_(OrgApacheLuceneUtilPackedPacked32 *self, OrgApacheLuceneStoreDataInput *inArg, jint valueCount, jint bitsPerValue) {
  OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_initWithInt_withInt_(self, valueCount, bitsPerValue);
  jint size = OrgApacheLuceneUtilPackedPacked32_sizeWithInt_withInt_(bitsPerValue, valueCount);
  self->blocks_ = [IOSIntArray newArrayWithLength:size + 1];
  for (jint i = 0; i < size; i++) {
    *IOSIntArray_GetRef(nil_chk(self->blocks_), i) = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readInt];
  }
  if (size % 2 == 1) {
    [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readInt];
  }
  OrgApacheLuceneUtilPackedPacked32_updateCached(self);
}

OrgApacheLuceneUtilPackedPacked32 *new_OrgApacheLuceneUtilPackedPacked32_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint valueCount, jint bitsPerValue) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedPacked32, initWithOrgApacheLuceneStoreDataInput_withInt_withInt_, inArg, valueCount, bitsPerValue)
}

OrgApacheLuceneUtilPackedPacked32 *create_OrgApacheLuceneUtilPackedPacked32_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint valueCount, jint bitsPerValue) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedPacked32, initWithOrgApacheLuceneStoreDataInput_withInt_withInt_, inArg, valueCount, bitsPerValue)
}

jint OrgApacheLuceneUtilPackedPacked32_sizeWithInt_withInt_(jint bitsPerValue, jint valueCount) {
  OrgApacheLuceneUtilPackedPacked32_initialize();
  jlong totBitCount = (jlong) valueCount * bitsPerValue;
  return (jint) (totBitCount / 32 + ((totBitCount % 32 == 0) ? 0 : 1));
}

void OrgApacheLuceneUtilPackedPacked32_initWithIntArray_withInt_withInt_(OrgApacheLuceneUtilPackedPacked32 *self, IOSIntArray *blocks, jint valueCount, jint bitsPerValue) {
  OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_initWithInt_withInt_(self, valueCount, bitsPerValue);
  if (bitsPerValue > 31) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(NSString_java_formatWithNSString_withNSObjectArray_(@"This array only supports values of 31 bits or less. The required number of bits was %d. The Packed64 implementation allows values with more than 31 bits", [IOSObjectArray newArrayWithObjects:(id[]){ JavaLangInteger_valueOfWithInt_(bitsPerValue) } count:1 type:NSObject_class_()]));
  }
  self->blocks_ = blocks;
  OrgApacheLuceneUtilPackedPacked32_updateCached(self);
}

OrgApacheLuceneUtilPackedPacked32 *new_OrgApacheLuceneUtilPackedPacked32_initWithIntArray_withInt_withInt_(IOSIntArray *blocks, jint valueCount, jint bitsPerValue) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedPacked32, initWithIntArray_withInt_withInt_, blocks, valueCount, bitsPerValue)
}

OrgApacheLuceneUtilPackedPacked32 *create_OrgApacheLuceneUtilPackedPacked32_initWithIntArray_withInt_withInt_(IOSIntArray *blocks, jint valueCount, jint bitsPerValue) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedPacked32, initWithIntArray_withInt_withInt_, blocks, valueCount, bitsPerValue)
}

void OrgApacheLuceneUtilPackedPacked32_updateCached(OrgApacheLuceneUtilPackedPacked32 *self) {
  self->readMasks_ = IOSObjectArray_Get(nil_chk(OrgApacheLuceneUtilPackedPacked32_MASKS), self->bitsPerValue_);
  self->maxPos_ = (jint) ((((jlong) ((IOSIntArray *) nil_chk(self->blocks_))->size_) * OrgApacheLuceneUtilPackedPacked32_BLOCK_SIZE / self->bitsPerValue_) - 2);
  self->shifts_ = IOSObjectArray_Get(nil_chk(OrgApacheLuceneUtilPackedPacked32_SHIFTS), self->bitsPerValue_);
  self->writeMasks_ = IOSObjectArray_Get(nil_chk(OrgApacheLuceneUtilPackedPacked32_WRITE_MASKS), self->bitsPerValue_);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedPacked32)
