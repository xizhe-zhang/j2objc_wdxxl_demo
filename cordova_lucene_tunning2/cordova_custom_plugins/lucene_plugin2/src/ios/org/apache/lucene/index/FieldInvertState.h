//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/FieldInvertState.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexFieldInvertState")
#ifdef RESTRICT_OrgApacheLuceneIndexFieldInvertState
#define INCLUDE_ALL_OrgApacheLuceneIndexFieldInvertState 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexFieldInvertState 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexFieldInvertState

#if !defined (OrgApacheLuceneIndexFieldInvertState_) && (INCLUDE_ALL_OrgApacheLuceneIndexFieldInvertState || defined(INCLUDE_OrgApacheLuceneIndexFieldInvertState))
#define OrgApacheLuceneIndexFieldInvertState_

@class OrgApacheLuceneUtilAttributeSource;

@interface OrgApacheLuceneIndexFieldInvertState : NSObject {
 @public
  jint position_;
  jint length_;
  jint numOverlap_;
  jint offset_;
  jint maxTermFrequency_;
  jint uniqueTermCount_;
  jfloat boost_;
  OrgApacheLuceneUtilAttributeSource *attributeSource_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)position
                    withInt:(jint)length
                    withInt:(jint)numOverlap
                    withInt:(jint)offset
                  withFloat:(jfloat)boost;

- (OrgApacheLuceneUtilAttributeSource *)getAttributeSource;

- (jfloat)getBoost;

- (jint)getLength;

- (jint)getMaxTermFrequency;

- (jint)getNumOverlap;

- (jint)getOffset;

- (jint)getPosition;

- (jint)getUniqueTermCount;

- (void)setBoostWithFloat:(jfloat)boost;

- (void)setLengthWithInt:(jint)length;

- (void)setNumOverlapWithInt:(jint)numOverlap;

#pragma mark Package-Private

- (void)resetWithFloat:(jfloat)docBoost;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexFieldInvertState)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldInvertState, attributeSource_, OrgApacheLuceneUtilAttributeSource *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexFieldInvertState_init(OrgApacheLuceneIndexFieldInvertState *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexFieldInvertState *new_OrgApacheLuceneIndexFieldInvertState_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexFieldInvertState *create_OrgApacheLuceneIndexFieldInvertState_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneIndexFieldInvertState_initWithInt_withInt_withInt_withInt_withFloat_(OrgApacheLuceneIndexFieldInvertState *self, jint position, jint length, jint numOverlap, jint offset, jfloat boost);

FOUNDATION_EXPORT OrgApacheLuceneIndexFieldInvertState *new_OrgApacheLuceneIndexFieldInvertState_initWithInt_withInt_withInt_withInt_withFloat_(jint position, jint length, jint numOverlap, jint offset, jfloat boost) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexFieldInvertState *create_OrgApacheLuceneIndexFieldInvertState_initWithInt_withInt_withInt_withInt_withFloat_(jint position, jint length, jint numOverlap, jint offset, jfloat boost);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexFieldInvertState)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexFieldInvertState")