//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/util/OpenBitSet.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilOpenBitSet")
#ifdef RESTRICT_OrgApacheLuceneUtilOpenBitSet
#define INCLUDE_ALL_OrgApacheLuceneUtilOpenBitSet 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilOpenBitSet 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilOpenBitSet

#if !defined (OrgApacheLuceneUtilOpenBitSet_) && (INCLUDE_ALL_OrgApacheLuceneUtilOpenBitSet || defined(INCLUDE_OrgApacheLuceneUtilOpenBitSet))
#define OrgApacheLuceneUtilOpenBitSet_

#define RESTRICT_OrgApacheLuceneSearchDocIdSet 1
#define INCLUDE_OrgApacheLuceneSearchDocIdSet 1
#include "org/apache/lucene/search/DocIdSet.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

#define RESTRICT_OrgApacheLuceneUtilBits 1
#define INCLUDE_OrgApacheLuceneUtilBits 1
#include "org/apache/lucene/util/Bits.h"

@class IOSLongArray;
@class OrgApacheLuceneSearchDocIdSetIterator;

@interface OrgApacheLuceneUtilOpenBitSet : OrgApacheLuceneSearchDocIdSet < NSCopying, JavaIoSerializable, OrgApacheLuceneUtilBits > {
 @public
  IOSLongArray *bits_;
  jint wlen_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithLong:(jlong)numBits;

- (instancetype)initWithLongArray:(IOSLongArray *)bits
                          withInt:(jint)numWords;

- (void)and__WithOrgApacheLuceneUtilOpenBitSet:(OrgApacheLuceneUtilOpenBitSet *)other;

- (void)andNotWithOrgApacheLuceneUtilOpenBitSet:(OrgApacheLuceneUtilOpenBitSet *)other;

+ (jlong)andNotCountWithOrgApacheLuceneUtilOpenBitSet:(OrgApacheLuceneUtilOpenBitSet *)a
                    withOrgApacheLuceneUtilOpenBitSet:(OrgApacheLuceneUtilOpenBitSet *)b;

+ (jint)bits2wordsWithLong:(jlong)numBits;

- (jlong)capacity;

- (jlong)cardinality;

- (void)clearWithInt:(jint)startIndex
             withInt:(jint)endIndex;

- (void)clearWithLong:(jlong)index;

- (void)clearWithLong:(jlong)startIndex
             withLong:(jlong)endIndex;

- (id)java_clone;

- (void)ensureCapacityWithLong:(jlong)numBits;

- (void)ensureCapacityWordsWithInt:(jint)numWords;

- (jboolean)isEqual:(id)o;

- (void)fastClearWithInt:(jint)index;

- (void)fastClearWithLong:(jlong)index;

- (void)fastFlipWithInt:(jint)index;

- (void)fastFlipWithLong:(jlong)index;

- (jboolean)fastGetWithInt:(jint)index;

- (jboolean)fastGetWithLong:(jlong)index;

- (void)fastSetWithInt:(jint)index;

- (void)fastSetWithLong:(jlong)index;

- (void)flipWithLong:(jlong)index;

- (void)flipWithLong:(jlong)startIndex
            withLong:(jlong)endIndex;

- (jboolean)flipAndGetWithInt:(jint)index;

- (jboolean)flipAndGetWithLong:(jlong)index;

- (jboolean)getWithInt:(jint)index;

- (jboolean)getWithLong:(jlong)index;

- (jboolean)getAndSetWithInt:(jint)index;

- (jboolean)getAndSetWithLong:(jlong)index;

- (jint)getBitWithInt:(jint)index;

- (IOSLongArray *)getBits;

- (jint)getNumWords;

- (NSUInteger)hash;

- (void)intersectWithOrgApacheLuceneUtilOpenBitSet:(OrgApacheLuceneUtilOpenBitSet *)other;

+ (jlong)intersectionCountWithOrgApacheLuceneUtilOpenBitSet:(OrgApacheLuceneUtilOpenBitSet *)a
                          withOrgApacheLuceneUtilOpenBitSet:(OrgApacheLuceneUtilOpenBitSet *)b;

- (jboolean)intersectsWithOrgApacheLuceneUtilOpenBitSet:(OrgApacheLuceneUtilOpenBitSet *)other;

- (jboolean)isCacheable;

- (jboolean)isEmpty;

- (OrgApacheLuceneSearchDocIdSetIterator *)iterator;

- (jint)length;

- (jint)nextSetBitWithInt:(jint)index;

- (jlong)nextSetBitWithLong:(jlong)index;

- (void)or__WithOrgApacheLuceneUtilOpenBitSet:(OrgApacheLuceneUtilOpenBitSet *)other;

- (jint)prevSetBitWithInt:(jint)index;

- (jlong)prevSetBitWithLong:(jlong)index;

- (void)removeWithOrgApacheLuceneUtilOpenBitSet:(OrgApacheLuceneUtilOpenBitSet *)other;

- (void)setWithLong:(jlong)index;

- (void)setWithLong:(jlong)startIndex
           withLong:(jlong)endIndex;

- (void)setBitsWithLongArray:(IOSLongArray *)bits;

- (void)setNumWordsWithInt:(jint)nWords;

- (jlong)size;

- (void)trimTrailingZeros;

- (void)union__WithOrgApacheLuceneUtilOpenBitSet:(OrgApacheLuceneUtilOpenBitSet *)other;

+ (jlong)unionCountWithOrgApacheLuceneUtilOpenBitSet:(OrgApacheLuceneUtilOpenBitSet *)a
                   withOrgApacheLuceneUtilOpenBitSet:(OrgApacheLuceneUtilOpenBitSet *)b;

- (void)xor__WithOrgApacheLuceneUtilOpenBitSet:(OrgApacheLuceneUtilOpenBitSet *)other;

+ (jlong)xorCountWithOrgApacheLuceneUtilOpenBitSet:(OrgApacheLuceneUtilOpenBitSet *)a
                 withOrgApacheLuceneUtilOpenBitSet:(OrgApacheLuceneUtilOpenBitSet *)b;

#pragma mark Protected

- (jint)expandingWordNumWithLong:(jlong)index;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilOpenBitSet)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilOpenBitSet, bits_, IOSLongArray *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilOpenBitSet_initWithLong_(OrgApacheLuceneUtilOpenBitSet *self, jlong numBits);

FOUNDATION_EXPORT OrgApacheLuceneUtilOpenBitSet *new_OrgApacheLuceneUtilOpenBitSet_initWithLong_(jlong numBits) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilOpenBitSet *create_OrgApacheLuceneUtilOpenBitSet_initWithLong_(jlong numBits);

FOUNDATION_EXPORT void OrgApacheLuceneUtilOpenBitSet_init(OrgApacheLuceneUtilOpenBitSet *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilOpenBitSet *new_OrgApacheLuceneUtilOpenBitSet_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilOpenBitSet *create_OrgApacheLuceneUtilOpenBitSet_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneUtilOpenBitSet_initWithLongArray_withInt_(OrgApacheLuceneUtilOpenBitSet *self, IOSLongArray *bits, jint numWords);

FOUNDATION_EXPORT OrgApacheLuceneUtilOpenBitSet *new_OrgApacheLuceneUtilOpenBitSet_initWithLongArray_withInt_(IOSLongArray *bits, jint numWords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilOpenBitSet *create_OrgApacheLuceneUtilOpenBitSet_initWithLongArray_withInt_(IOSLongArray *bits, jint numWords);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilOpenBitSet_intersectionCountWithOrgApacheLuceneUtilOpenBitSet_withOrgApacheLuceneUtilOpenBitSet_(OrgApacheLuceneUtilOpenBitSet *a, OrgApacheLuceneUtilOpenBitSet *b);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilOpenBitSet_unionCountWithOrgApacheLuceneUtilOpenBitSet_withOrgApacheLuceneUtilOpenBitSet_(OrgApacheLuceneUtilOpenBitSet *a, OrgApacheLuceneUtilOpenBitSet *b);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilOpenBitSet_andNotCountWithOrgApacheLuceneUtilOpenBitSet_withOrgApacheLuceneUtilOpenBitSet_(OrgApacheLuceneUtilOpenBitSet *a, OrgApacheLuceneUtilOpenBitSet *b);

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilOpenBitSet_xorCountWithOrgApacheLuceneUtilOpenBitSet_withOrgApacheLuceneUtilOpenBitSet_(OrgApacheLuceneUtilOpenBitSet *a, OrgApacheLuceneUtilOpenBitSet *b);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilOpenBitSet_bits2wordsWithLong_(jlong numBits);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilOpenBitSet)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilOpenBitSet")
