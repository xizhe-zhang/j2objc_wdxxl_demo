//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/ScoreDoc.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchScoreDoc")
#ifdef RESTRICT_OrgApacheLuceneSearchScoreDoc
#define INCLUDE_ALL_OrgApacheLuceneSearchScoreDoc 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchScoreDoc 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchScoreDoc

#if !defined (OrgApacheLuceneSearchScoreDoc_) && (INCLUDE_ALL_OrgApacheLuceneSearchScoreDoc || defined(INCLUDE_OrgApacheLuceneSearchScoreDoc))
#define OrgApacheLuceneSearchScoreDoc_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@interface OrgApacheLuceneSearchScoreDoc : NSObject < JavaIoSerializable > {
 @public
  jfloat score_;
  jint doc_;
  jint shardIndex_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)doc
                  withFloat:(jfloat)score;

- (instancetype)initWithInt:(jint)doc
                  withFloat:(jfloat)score
                    withInt:(jint)shardIndex;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchScoreDoc)

FOUNDATION_EXPORT void OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(OrgApacheLuceneSearchScoreDoc *self, jint doc, jfloat score);

FOUNDATION_EXPORT OrgApacheLuceneSearchScoreDoc *new_OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(jint doc, jfloat score) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchScoreDoc *create_OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(jint doc, jfloat score);

FOUNDATION_EXPORT void OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_withInt_(OrgApacheLuceneSearchScoreDoc *self, jint doc, jfloat score, jint shardIndex);

FOUNDATION_EXPORT OrgApacheLuceneSearchScoreDoc *new_OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_withInt_(jint doc, jfloat score, jint shardIndex) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchScoreDoc *create_OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_withInt_(jint doc, jfloat score, jint shardIndex);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchScoreDoc)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchScoreDoc")
