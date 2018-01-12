//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/SegmentNorms.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexSegmentNorms")
#ifdef RESTRICT_OrgApacheLuceneIndexSegmentNorms
#define INCLUDE_ALL_OrgApacheLuceneIndexSegmentNorms 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexSegmentNorms 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexSegmentNorms

#if !defined (OrgApacheLuceneIndexSegmentNorms_) && (INCLUDE_ALL_OrgApacheLuceneIndexSegmentNorms || defined(INCLUDE_OrgApacheLuceneIndexSegmentNorms))
#define OrgApacheLuceneIndexSegmentNorms_

@class IOSByteArray;
@class JavaUtilConcurrentAtomicAtomicInteger;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneIndexSegmentReader;
@class OrgApacheLuceneStoreIndexInput;

@interface OrgApacheLuceneIndexSegmentNorms : NSObject < NSCopying > {
 @public
  jint refCount_;
  jboolean dirty_;
  jboolean rollbackDirty_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg
                                               withInt:(jint)number
                                              withLong:(jlong)normSeek
                 withOrgApacheLuceneIndexSegmentReader:(OrgApacheLuceneIndexSegmentReader *)owner;

- (IOSByteArray *)bytes;

- (void)bytesWithByteArray:(IOSByteArray *)bytesOut
                   withInt:(jint)offset
                   withInt:(jint)len;

- (id)java_clone;

- (IOSByteArray *)copyOnWrite OBJC_METHOD_FAMILY_NONE;

- (void)decRef;

- (void)incRef;

- (void)reWriteWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si;

#pragma mark Package-Private

- (JavaUtilConcurrentAtomicAtomicInteger *)bytesRef;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexSegmentNorms)

inline IOSByteArray *OrgApacheLuceneIndexSegmentNorms_get_NORMS_HEADER(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSByteArray *OrgApacheLuceneIndexSegmentNorms_NORMS_HEADER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexSegmentNorms, NORMS_HEADER, IOSByteArray *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSegmentNorms_initWithOrgApacheLuceneStoreIndexInput_withInt_withLong_withOrgApacheLuceneIndexSegmentReader_(OrgApacheLuceneIndexSegmentNorms *self, OrgApacheLuceneStoreIndexInput *inArg, jint number, jlong normSeek, OrgApacheLuceneIndexSegmentReader *owner);

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentNorms *new_OrgApacheLuceneIndexSegmentNorms_initWithOrgApacheLuceneStoreIndexInput_withInt_withLong_withOrgApacheLuceneIndexSegmentReader_(OrgApacheLuceneStoreIndexInput *inArg, jint number, jlong normSeek, OrgApacheLuceneIndexSegmentReader *owner) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentNorms *create_OrgApacheLuceneIndexSegmentNorms_initWithOrgApacheLuceneStoreIndexInput_withInt_withLong_withOrgApacheLuceneIndexSegmentReader_(OrgApacheLuceneStoreIndexInput *inArg, jint number, jlong normSeek, OrgApacheLuceneIndexSegmentReader *owner);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSegmentNorms)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexSegmentNorms")
