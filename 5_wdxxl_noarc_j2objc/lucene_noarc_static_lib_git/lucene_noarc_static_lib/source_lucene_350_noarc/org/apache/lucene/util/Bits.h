//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/Bits.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilBits")
#ifdef RESTRICT_OrgApacheLuceneUtilBits
#define INCLUDE_ALL_OrgApacheLuceneUtilBits 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilBits 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilBits
#ifdef INCLUDE_OrgApacheLuceneUtilBits_MatchNoBits
#define INCLUDE_OrgApacheLuceneUtilBits 1
#endif
#ifdef INCLUDE_OrgApacheLuceneUtilBits_MatchAllBits
#define INCLUDE_OrgApacheLuceneUtilBits 1
#endif

#if !defined (OrgApacheLuceneUtilBits_) && (INCLUDE_ALL_OrgApacheLuceneUtilBits || defined(INCLUDE_OrgApacheLuceneUtilBits))
#define OrgApacheLuceneUtilBits_

@class IOSObjectArray;

@protocol OrgApacheLuceneUtilBits < JavaObject >

- (jboolean)getWithInt:(jint)index;

- (jint)length;

@end

@interface OrgApacheLuceneUtilBits : NSObject

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilBits)

inline IOSObjectArray *OrgApacheLuceneUtilBits_get_EMPTY_ARRAY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneUtilBits_EMPTY_ARRAY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilBits, EMPTY_ARRAY, IOSObjectArray *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBits)

#endif

#if !defined (OrgApacheLuceneUtilBits_MatchAllBits_) && (INCLUDE_ALL_OrgApacheLuceneUtilBits || defined(INCLUDE_OrgApacheLuceneUtilBits_MatchAllBits))
#define OrgApacheLuceneUtilBits_MatchAllBits_

@interface OrgApacheLuceneUtilBits_MatchAllBits : NSObject < OrgApacheLuceneUtilBits > {
 @public
  jint len_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)len;

- (jboolean)getWithInt:(jint)index;

- (jint)length;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilBits_MatchAllBits)

FOUNDATION_EXPORT void OrgApacheLuceneUtilBits_MatchAllBits_initWithInt_(OrgApacheLuceneUtilBits_MatchAllBits *self, jint len);

FOUNDATION_EXPORT OrgApacheLuceneUtilBits_MatchAllBits *new_OrgApacheLuceneUtilBits_MatchAllBits_initWithInt_(jint len) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBits_MatchAllBits *create_OrgApacheLuceneUtilBits_MatchAllBits_initWithInt_(jint len);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBits_MatchAllBits)

#endif

#if !defined (OrgApacheLuceneUtilBits_MatchNoBits_) && (INCLUDE_ALL_OrgApacheLuceneUtilBits || defined(INCLUDE_OrgApacheLuceneUtilBits_MatchNoBits))
#define OrgApacheLuceneUtilBits_MatchNoBits_

@interface OrgApacheLuceneUtilBits_MatchNoBits : NSObject < OrgApacheLuceneUtilBits > {
 @public
  jint len_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)len;

- (jboolean)getWithInt:(jint)index;

- (jint)length;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilBits_MatchNoBits)

FOUNDATION_EXPORT void OrgApacheLuceneUtilBits_MatchNoBits_initWithInt_(OrgApacheLuceneUtilBits_MatchNoBits *self, jint len);

FOUNDATION_EXPORT OrgApacheLuceneUtilBits_MatchNoBits *new_OrgApacheLuceneUtilBits_MatchNoBits_initWithInt_(jint len) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBits_MatchNoBits *create_OrgApacheLuceneUtilBits_MatchNoBits_initWithInt_(jint len);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBits_MatchNoBits)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilBits")
