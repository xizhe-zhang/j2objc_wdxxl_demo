//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/util/RamUsageEstimator.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalAccessException.h"
#include "java/lang/reflect/Array.h"
#include "java/lang/reflect/Field.h"
#include "java/lang/reflect/Modifier.h"
#include "java/text/DecimalFormat.h"
#include "java/util/IdentityHashMap.h"
#include "java/util/Map.h"
#include "org/apache/lucene/util/AverageGuessMemoryModel.h"
#include "org/apache/lucene/util/Constants.h"
#include "org/apache/lucene/util/MemoryModel.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@interface OrgApacheLuceneUtilRamUsageEstimator () {
 @public
  OrgApacheLuceneUtilMemoryModel *memoryModel_;
  id<JavaUtilMap> seen_;
  jint refSize_;
  jint arraySize_;
  jint classSize_;
  jboolean checkInterned_;
}

- (jlong)sizeWithId:(id)obj;

- (jlong)sizeOfArrayWithId:(id)obj;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilRamUsageEstimator, memoryModel_, OrgApacheLuceneUtilMemoryModel *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilRamUsageEstimator, seen_, id<JavaUtilMap>)

inline jlong OrgApacheLuceneUtilRamUsageEstimator_get_ONE_KB(void);
#define OrgApacheLuceneUtilRamUsageEstimator_ONE_KB 1024LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilRamUsageEstimator, ONE_KB, jlong)

inline jlong OrgApacheLuceneUtilRamUsageEstimator_get_ONE_MB(void);
#define OrgApacheLuceneUtilRamUsageEstimator_ONE_MB 1048576LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilRamUsageEstimator, ONE_MB, jlong)

inline jlong OrgApacheLuceneUtilRamUsageEstimator_get_ONE_GB(void);
#define OrgApacheLuceneUtilRamUsageEstimator_ONE_GB 1073741824LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilRamUsageEstimator, ONE_GB, jlong)

__attribute__((unused)) static jlong OrgApacheLuceneUtilRamUsageEstimator_sizeWithId_(OrgApacheLuceneUtilRamUsageEstimator *self, id obj);

__attribute__((unused)) static jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfArrayWithId_(OrgApacheLuceneUtilRamUsageEstimator *self, id obj);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilRamUsageEstimator)

jint OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF;
jint OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER;

@implementation OrgApacheLuceneUtilRamUsageEstimator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilRamUsageEstimator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithBoolean:(jboolean)checkInterned {
  OrgApacheLuceneUtilRamUsageEstimator_initWithBoolean_(self, checkInterned);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilMemoryModel:(OrgApacheLuceneUtilMemoryModel *)memoryModel {
  OrgApacheLuceneUtilRamUsageEstimator_initWithOrgApacheLuceneUtilMemoryModel_(self, memoryModel);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilMemoryModel:(OrgApacheLuceneUtilMemoryModel *)memoryModel
                                           withBoolean:(jboolean)checkInterned {
  OrgApacheLuceneUtilRamUsageEstimator_initWithOrgApacheLuceneUtilMemoryModel_withBoolean_(self, memoryModel, checkInterned);
  return self;
}

- (jlong)estimateRamUsageWithId:(id)obj {
  jlong size = OrgApacheLuceneUtilRamUsageEstimator_sizeWithId_(self, obj);
  [((id<JavaUtilMap>) nil_chk(seen_)) clear];
  return size;
}

- (jlong)sizeWithId:(id)obj {
  return OrgApacheLuceneUtilRamUsageEstimator_sizeWithId_(self, obj);
}

- (jlong)sizeOfArrayWithId:(id)obj {
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfArrayWithId_(self, obj);
}

+ (NSString *)humanReadableUnitsWithLong:(jlong)bytes
               withJavaTextDecimalFormat:(JavaTextDecimalFormat *)df {
  return OrgApacheLuceneUtilRamUsageEstimator_humanReadableUnitsWithLong_withJavaTextDecimalFormat_(bytes, df);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x2, 5, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x2, 6, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithBoolean:);
  methods[2].selector = @selector(initWithOrgApacheLuceneUtilMemoryModel:);
  methods[3].selector = @selector(initWithOrgApacheLuceneUtilMemoryModel:withBoolean:);
  methods[4].selector = @selector(estimateRamUsageWithId:);
  methods[5].selector = @selector(sizeWithId:);
  methods[6].selector = @selector(sizeOfArrayWithId:);
  methods[7].selector = @selector(humanReadableUnitsWithLong:withJavaTextDecimalFormat:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NUM_BYTES_SHORT", "I", .constantValue.asInt = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_SHORT, 0x19, -1, -1, -1, -1 },
    { "NUM_BYTES_INT", "I", .constantValue.asInt = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT, 0x19, -1, -1, -1, -1 },
    { "NUM_BYTES_LONG", "I", .constantValue.asInt = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_LONG, 0x19, -1, -1, -1, -1 },
    { "NUM_BYTES_FLOAT", "I", .constantValue.asInt = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_FLOAT, 0x19, -1, -1, -1, -1 },
    { "NUM_BYTES_DOUBLE", "I", .constantValue.asInt = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_DOUBLE, 0x19, -1, -1, -1, -1 },
    { "NUM_BYTES_CHAR", "I", .constantValue.asInt = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR, 0x19, -1, -1, -1, -1 },
    { "NUM_BYTES_OBJECT_HEADER", "I", .constantValue.asInt = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER, 0x19, -1, -1, -1, -1 },
    { "NUM_BYTES_OBJECT_REF", "I", .constantValue.asLong = 0, 0x19, -1, 9, -1, -1 },
    { "NUM_BYTES_ARRAY_HEADER", "I", .constantValue.asLong = 0, 0x19, -1, 10, -1, -1 },
    { "memoryModel_", "LOrgApacheLuceneUtilMemoryModel;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "seen_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x12, -1, -1, 11, -1 },
    { "refSize_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "arraySize_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "classSize_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "checkInterned_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "ONE_KB", "J", .constantValue.asLong = OrgApacheLuceneUtilRamUsageEstimator_ONE_KB, 0x1a, -1, -1, -1, -1 },
    { "ONE_MB", "J", .constantValue.asLong = OrgApacheLuceneUtilRamUsageEstimator_ONE_MB, 0x1a, -1, -1, -1, -1 },
    { "ONE_GB", "J", .constantValue.asLong = OrgApacheLuceneUtilRamUsageEstimator_ONE_GB, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "Z", "LOrgApacheLuceneUtilMemoryModel;", "LOrgApacheLuceneUtilMemoryModel;Z", "estimateRamUsage", "LNSObject;", "size", "sizeOfArray", "humanReadableUnits", "JLJavaTextDecimalFormat;", &OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF, &OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilRamUsageEstimator = { "RamUsageEstimator", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x11, 8, 18, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilRamUsageEstimator;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilRamUsageEstimator class]) {
    OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF = JreLoadStatic(OrgApacheLuceneUtilConstants, JRE_IS_64BIT) ? 8 : 4;
    OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF;
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilRamUsageEstimator)
  }
}

@end

void OrgApacheLuceneUtilRamUsageEstimator_init(OrgApacheLuceneUtilRamUsageEstimator *self) {
  OrgApacheLuceneUtilRamUsageEstimator_initWithOrgApacheLuceneUtilMemoryModel_(self, new_OrgApacheLuceneUtilAverageGuessMemoryModel_init());
}

OrgApacheLuceneUtilRamUsageEstimator *new_OrgApacheLuceneUtilRamUsageEstimator_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilRamUsageEstimator, init)
}

OrgApacheLuceneUtilRamUsageEstimator *create_OrgApacheLuceneUtilRamUsageEstimator_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilRamUsageEstimator, init)
}

void OrgApacheLuceneUtilRamUsageEstimator_initWithBoolean_(OrgApacheLuceneUtilRamUsageEstimator *self, jboolean checkInterned) {
  OrgApacheLuceneUtilRamUsageEstimator_initWithOrgApacheLuceneUtilMemoryModel_withBoolean_(self, new_OrgApacheLuceneUtilAverageGuessMemoryModel_init(), checkInterned);
}

OrgApacheLuceneUtilRamUsageEstimator *new_OrgApacheLuceneUtilRamUsageEstimator_initWithBoolean_(jboolean checkInterned) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilRamUsageEstimator, initWithBoolean_, checkInterned)
}

OrgApacheLuceneUtilRamUsageEstimator *create_OrgApacheLuceneUtilRamUsageEstimator_initWithBoolean_(jboolean checkInterned) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilRamUsageEstimator, initWithBoolean_, checkInterned)
}

void OrgApacheLuceneUtilRamUsageEstimator_initWithOrgApacheLuceneUtilMemoryModel_(OrgApacheLuceneUtilRamUsageEstimator *self, OrgApacheLuceneUtilMemoryModel *memoryModel) {
  OrgApacheLuceneUtilRamUsageEstimator_initWithOrgApacheLuceneUtilMemoryModel_withBoolean_(self, memoryModel, true);
}

OrgApacheLuceneUtilRamUsageEstimator *new_OrgApacheLuceneUtilRamUsageEstimator_initWithOrgApacheLuceneUtilMemoryModel_(OrgApacheLuceneUtilMemoryModel *memoryModel) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilRamUsageEstimator, initWithOrgApacheLuceneUtilMemoryModel_, memoryModel)
}

OrgApacheLuceneUtilRamUsageEstimator *create_OrgApacheLuceneUtilRamUsageEstimator_initWithOrgApacheLuceneUtilMemoryModel_(OrgApacheLuceneUtilMemoryModel *memoryModel) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilRamUsageEstimator, initWithOrgApacheLuceneUtilMemoryModel_, memoryModel)
}

void OrgApacheLuceneUtilRamUsageEstimator_initWithOrgApacheLuceneUtilMemoryModel_withBoolean_(OrgApacheLuceneUtilRamUsageEstimator *self, OrgApacheLuceneUtilMemoryModel *memoryModel, jboolean checkInterned) {
  NSObject_init(self);
  self->memoryModel_ = memoryModel;
  self->checkInterned_ = checkInterned;
  self->seen_ = new_JavaUtilIdentityHashMap_initWithInt_(64);
  self->refSize_ = [((OrgApacheLuceneUtilMemoryModel *) nil_chk(memoryModel)) getReferenceSize];
  self->arraySize_ = [memoryModel getArraySize];
  self->classSize_ = [memoryModel getClassSize];
}

OrgApacheLuceneUtilRamUsageEstimator *new_OrgApacheLuceneUtilRamUsageEstimator_initWithOrgApacheLuceneUtilMemoryModel_withBoolean_(OrgApacheLuceneUtilMemoryModel *memoryModel, jboolean checkInterned) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilRamUsageEstimator, initWithOrgApacheLuceneUtilMemoryModel_withBoolean_, memoryModel, checkInterned)
}

OrgApacheLuceneUtilRamUsageEstimator *create_OrgApacheLuceneUtilRamUsageEstimator_initWithOrgApacheLuceneUtilMemoryModel_withBoolean_(OrgApacheLuceneUtilMemoryModel *memoryModel, jboolean checkInterned) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilRamUsageEstimator, initWithOrgApacheLuceneUtilMemoryModel_withBoolean_, memoryModel, checkInterned)
}

jlong OrgApacheLuceneUtilRamUsageEstimator_sizeWithId_(OrgApacheLuceneUtilRamUsageEstimator *self, id obj) {
  if (obj == nil) {
    return 0;
  }
  if (self->checkInterned_ && [obj isKindOfClass:[NSString class]] && obj == [((NSString *) cast_chk(obj, [NSString class])) java_intern]) {
    return 0;
  }
  if ([((id<JavaUtilMap>) nil_chk(self->seen_)) containsKeyWithId:obj]) {
    return 0;
  }
  (void) [self->seen_ putWithId:obj withId:nil];
  IOSClass *clazz = [obj java_getClass];
  if ([clazz isArray]) {
    return OrgApacheLuceneUtilRamUsageEstimator_sizeOfArrayWithId_(self, obj);
  }
  jlong size = 0;
  while (clazz != nil) {
    IOSObjectArray *fields = [clazz getDeclaredFields];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(fields))->size_; i++) {
      if (JavaLangReflectModifier_isStaticWithInt_([((JavaLangReflectField *) nil_chk(IOSObjectArray_Get(fields, i))) getModifiers])) {
        continue;
      }
      if ([((IOSClass *) nil_chk([((JavaLangReflectField *) nil_chk(IOSObjectArray_Get(fields, i))) getType])) isPrimitive]) {
        size += [((OrgApacheLuceneUtilMemoryModel *) nil_chk(self->memoryModel_)) getPrimitiveSizeWithIOSClass:[((JavaLangReflectField *) nil_chk(IOSObjectArray_Get(fields, i))) getType]];
      }
      else {
        size += self->refSize_;
        [((JavaLangReflectField *) nil_chk(IOSObjectArray_Get(fields, i))) setAccessibleWithBoolean:true];
        @try {
          id value = [((JavaLangReflectField *) nil_chk(IOSObjectArray_Get(fields, i))) getWithId:obj];
          if (value != nil) {
            size += OrgApacheLuceneUtilRamUsageEstimator_sizeWithId_(self, value);
          }
        }
        @catch (JavaLangIllegalAccessException *ex) {
        }
      }
    }
    clazz = [clazz getSuperclass];
  }
  size += self->classSize_;
  return size;
}

jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfArrayWithId_(OrgApacheLuceneUtilRamUsageEstimator *self, id obj) {
  jint len = JavaLangReflectArray_getLengthWithId_(obj);
  if (len == 0) {
    return 0;
  }
  jlong size = self->arraySize_;
  IOSClass *arrayElementClazz = [[nil_chk(obj) java_getClass] getComponentType];
  if ([((IOSClass *) nil_chk(arrayElementClazz)) isPrimitive]) {
    size += len * [((OrgApacheLuceneUtilMemoryModel *) nil_chk(self->memoryModel_)) getPrimitiveSizeWithIOSClass:arrayElementClazz];
  }
  else {
    for (jint i = 0; i < len; i++) {
      size += self->refSize_ + OrgApacheLuceneUtilRamUsageEstimator_sizeWithId_(self, JavaLangReflectArray_getWithId_withInt_(obj, i));
    }
  }
  return size;
}

NSString *OrgApacheLuceneUtilRamUsageEstimator_humanReadableUnitsWithLong_withJavaTextDecimalFormat_(jlong bytes, JavaTextDecimalFormat *df) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  NSString *newSizeAndUnits;
  if (bytes / OrgApacheLuceneUtilRamUsageEstimator_ONE_GB > 0) {
    newSizeAndUnits = JreStrcat("$$", NSString_java_valueOf_([((JavaTextDecimalFormat *) nil_chk(df)) formatWithDouble:(jfloat) bytes / OrgApacheLuceneUtilRamUsageEstimator_ONE_GB]), @" GB");
  }
  else if (bytes / OrgApacheLuceneUtilRamUsageEstimator_ONE_MB > 0) {
    newSizeAndUnits = JreStrcat("$$", NSString_java_valueOf_([((JavaTextDecimalFormat *) nil_chk(df)) formatWithDouble:(jfloat) bytes / OrgApacheLuceneUtilRamUsageEstimator_ONE_MB]), @" MB");
  }
  else if (bytes / OrgApacheLuceneUtilRamUsageEstimator_ONE_KB > 0) {
    newSizeAndUnits = JreStrcat("$$", NSString_java_valueOf_([((JavaTextDecimalFormat *) nil_chk(df)) formatWithDouble:(jfloat) bytes / OrgApacheLuceneUtilRamUsageEstimator_ONE_KB]), @" KB");
  }
  else {
    newSizeAndUnits = JreStrcat("$$", NSString_java_valueOfLong_(bytes), @" bytes");
  }
  return newSizeAndUnits;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilRamUsageEstimator)
