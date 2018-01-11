//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/util/FixedBitSet.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilFixedBitSet")
#ifdef RESTRICT_OrgApacheLuceneUtilFixedBitSet
#define INCLUDE_ALL_OrgApacheLuceneUtilFixedBitSet 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilFixedBitSet 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilFixedBitSet

#if !defined (OrgApacheLuceneUtilFixedBitSet_) && (INCLUDE_ALL_OrgApacheLuceneUtilFixedBitSet || defined(INCLUDE_OrgApacheLuceneUtilFixedBitSet))
#define OrgApacheLuceneUtilFixedBitSet_

#define RESTRICT_OrgApacheLuceneSearchDocIdSet 1
#define INCLUDE_OrgApacheLuceneSearchDocIdSet 1
#include "org/apache/lucene/search/DocIdSet.h"

#define RESTRICT_OrgApacheLuceneUtilBits 1
#define INCLUDE_OrgApacheLuceneUtilBits 1
#include "org/apache/lucene/util/Bits.h"

@class IOSLongArray;
@class OrgApacheLuceneSearchDocIdSetIterator;

@interface OrgApacheLuceneUtilFixedBitSet : OrgApacheLuceneSearchDocIdSet < OrgApacheLuceneUtilBits >

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)other;

- (instancetype)initWithInt:(jint)numBits;

- (void)and__WithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iter;

- (void)and__WithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)other;

- (void)andNotWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iter;

- (void)andNotWithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)other;

+ (jint)bits2wordsWithInt:(jint)numBits;

- (jint)cardinality;

- (void)clearWithInt:(jint)index;

- (void)clearWithInt:(jint)startIndex
             withInt:(jint)endIndex;

- (id)java_clone;

- (jboolean)isEqual:(id)o;

- (void)flipWithInt:(jint)startIndex
            withInt:(jint)endIndex;

- (jboolean)getWithInt:(jint)index;

- (jboolean)getAndClearWithInt:(jint)index;

- (jboolean)getAndSetWithInt:(jint)index;

- (IOSLongArray *)getBits;

- (NSUInteger)hash;

- (jboolean)isCacheable;

- (OrgApacheLuceneSearchDocIdSetIterator *)iterator;

- (jint)length;

- (jint)nextSetBitWithInt:(jint)index;

- (void)or__WithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iter;

- (void)or__WithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)other;

- (jint)prevSetBitWithInt:(jint)index;

- (void)setWithInt:(jint)index;

- (void)setWithInt:(jint)startIndex
           withInt:(jint)endIndex;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFixedBitSet)

FOUNDATION_EXPORT jint OrgApacheLuceneUtilFixedBitSet_bits2wordsWithInt_(jint numBits);

FOUNDATION_EXPORT void OrgApacheLuceneUtilFixedBitSet_initWithInt_(OrgApacheLuceneUtilFixedBitSet *self, jint numBits);

FOUNDATION_EXPORT OrgApacheLuceneUtilFixedBitSet *new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(jint numBits) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilFixedBitSet *create_OrgApacheLuceneUtilFixedBitSet_initWithInt_(jint numBits);

FOUNDATION_EXPORT void OrgApacheLuceneUtilFixedBitSet_initWithOrgApacheLuceneUtilFixedBitSet_(OrgApacheLuceneUtilFixedBitSet *self, OrgApacheLuceneUtilFixedBitSet *other);

FOUNDATION_EXPORT OrgApacheLuceneUtilFixedBitSet *new_OrgApacheLuceneUtilFixedBitSet_initWithOrgApacheLuceneUtilFixedBitSet_(OrgApacheLuceneUtilFixedBitSet *other) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilFixedBitSet *create_OrgApacheLuceneUtilFixedBitSet_initWithOrgApacheLuceneUtilFixedBitSet_(OrgApacheLuceneUtilFixedBitSet *other);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFixedBitSet)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilFixedBitSet")
