//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/FieldValueHitQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFieldValueHitQueue")
#ifdef RESTRICT_OrgApacheLuceneSearchFieldValueHitQueue
#define INCLUDE_ALL_OrgApacheLuceneSearchFieldValueHitQueue 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFieldValueHitQueue 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFieldValueHitQueue

#if !defined (OrgApacheLuceneSearchFieldValueHitQueue_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldValueHitQueue || defined(INCLUDE_OrgApacheLuceneSearchFieldValueHitQueue))
#define OrgApacheLuceneSearchFieldValueHitQueue_

#define RESTRICT_OrgApacheLuceneUtilPriorityQueue 1
#define INCLUDE_OrgApacheLuceneUtilPriorityQueue 1
#include "org/apache/lucene/util/PriorityQueue.h"

@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneSearchFieldDoc;
@class OrgApacheLuceneSearchFieldValueHitQueue_Entry;

@interface OrgApacheLuceneSearchFieldValueHitQueue : OrgApacheLuceneUtilPriorityQueue {
 @public
  IOSObjectArray *fields_;
  IOSObjectArray *comparators_;
  IOSIntArray *reverseMul_;
}

#pragma mark Public

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)addWithId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)arg0;

+ (OrgApacheLuceneSearchFieldValueHitQueue *)createWithOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)fields
                                                                                   withInt:(jint)size;

- (IOSObjectArray *)getComparators;

- (IOSIntArray *)getReverseMul;

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)insertWithOverflowWithId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)arg0;

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)pop;

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)top;

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)updateTop;

#pragma mark Protected

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)getSentinelObject;

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)a
                    withId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)b;

#pragma mark Package-Private

- (OrgApacheLuceneSearchFieldDoc *)fillFieldsWithOrgApacheLuceneSearchFieldValueHitQueue_Entry:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)entry_;

- (IOSObjectArray *)getFields;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldValueHitQueue)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldValueHitQueue, fields_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldValueHitQueue, comparators_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldValueHitQueue, reverseMul_, IOSIntArray *)

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldValueHitQueue *OrgApacheLuceneSearchFieldValueHitQueue_createWithOrgApacheLuceneSearchSortFieldArray_withInt_(IOSObjectArray *fields, jint size);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldValueHitQueue)

#endif

#if !defined (OrgApacheLuceneSearchFieldValueHitQueue_Entry_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldValueHitQueue || defined(INCLUDE_OrgApacheLuceneSearchFieldValueHitQueue_Entry))
#define OrgApacheLuceneSearchFieldValueHitQueue_Entry_

#define RESTRICT_OrgApacheLuceneSearchScoreDoc 1
#define INCLUDE_OrgApacheLuceneSearchScoreDoc 1
#include "org/apache/lucene/search/ScoreDoc.h"

@interface OrgApacheLuceneSearchFieldValueHitQueue_Entry : OrgApacheLuceneSearchScoreDoc {
 @public
  jint slot_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)slot
                    withInt:(jint)doc
                  withFloat:(jfloat)score;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithInt:(jint)arg0
                  withFloat:(jfloat)arg1 NS_UNAVAILABLE;

- (instancetype)initWithInt:(jint)arg0
                  withFloat:(jfloat)arg1
                    withInt:(jint)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldValueHitQueue_Entry)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldValueHitQueue_Entry_initWithInt_withInt_withFloat_(OrgApacheLuceneSearchFieldValueHitQueue_Entry *self, jint slot, jint doc, jfloat score);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldValueHitQueue_Entry *new_OrgApacheLuceneSearchFieldValueHitQueue_Entry_initWithInt_withInt_withFloat_(jint slot, jint doc, jfloat score) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldValueHitQueue_Entry *create_OrgApacheLuceneSearchFieldValueHitQueue_Entry_initWithInt_withInt_withFloat_(jint slot, jint doc, jfloat score);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldValueHitQueue_Entry)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFieldValueHitQueue")
