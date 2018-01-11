//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/SegmentTermPositionVector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexSegmentTermPositionVector")
#ifdef RESTRICT_OrgApacheLuceneIndexSegmentTermPositionVector
#define INCLUDE_ALL_OrgApacheLuceneIndexSegmentTermPositionVector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexSegmentTermPositionVector 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexSegmentTermPositionVector

#if !defined (OrgApacheLuceneIndexSegmentTermPositionVector_) && (INCLUDE_ALL_OrgApacheLuceneIndexSegmentTermPositionVector || defined(INCLUDE_OrgApacheLuceneIndexSegmentTermPositionVector))
#define OrgApacheLuceneIndexSegmentTermPositionVector_

#define RESTRICT_OrgApacheLuceneIndexSegmentTermVector 1
#define INCLUDE_OrgApacheLuceneIndexSegmentTermVector 1
#include "org/apache/lucene/index/SegmentTermVector.h"

#define RESTRICT_OrgApacheLuceneIndexTermPositionVector 1
#define INCLUDE_OrgApacheLuceneIndexTermPositionVector 1
#include "org/apache/lucene/index/TermPositionVector.h"

@class IOSIntArray;
@class IOSObjectArray;

@interface OrgApacheLuceneIndexSegmentTermPositionVector : OrgApacheLuceneIndexSegmentTermVector < OrgApacheLuceneIndexTermPositionVector > {
 @public
  IOSObjectArray *positions_;
  IOSObjectArray *offsets_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
               withNSStringArray:(IOSObjectArray *)terms
                    withIntArray:(IOSIntArray *)termFreqs
                   withIntArray2:(IOSObjectArray *)positions
withOrgApacheLuceneIndexTermVectorOffsetInfoArray2:(IOSObjectArray *)offsets;

- (IOSObjectArray *)getOffsetsWithInt:(jint)index;

- (IOSIntArray *)getTermPositionsWithInt:(jint)index;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0
               withNSStringArray:(IOSObjectArray *)arg1
                    withIntArray:(IOSIntArray *)arg2 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexSegmentTermPositionVector)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentTermPositionVector, positions_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentTermPositionVector, offsets_, IOSObjectArray *)

inline IOSIntArray *OrgApacheLuceneIndexSegmentTermPositionVector_get_EMPTY_TERM_POS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *OrgApacheLuceneIndexSegmentTermPositionVector_EMPTY_TERM_POS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexSegmentTermPositionVector, EMPTY_TERM_POS, IOSIntArray *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSegmentTermPositionVector_initWithNSString_withNSStringArray_withIntArray_withIntArray2_withOrgApacheLuceneIndexTermVectorOffsetInfoArray2_(OrgApacheLuceneIndexSegmentTermPositionVector *self, NSString *field, IOSObjectArray *terms, IOSIntArray *termFreqs, IOSObjectArray *positions, IOSObjectArray *offsets);

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentTermPositionVector *new_OrgApacheLuceneIndexSegmentTermPositionVector_initWithNSString_withNSStringArray_withIntArray_withIntArray2_withOrgApacheLuceneIndexTermVectorOffsetInfoArray2_(NSString *field, IOSObjectArray *terms, IOSIntArray *termFreqs, IOSObjectArray *positions, IOSObjectArray *offsets) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentTermPositionVector *create_OrgApacheLuceneIndexSegmentTermPositionVector_initWithNSString_withNSStringArray_withIntArray_withIntArray2_withOrgApacheLuceneIndexTermVectorOffsetInfoArray2_(NSString *field, IOSObjectArray *terms, IOSIntArray *termFreqs, IOSObjectArray *positions, IOSObjectArray *offsets);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSegmentTermPositionVector)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexSegmentTermPositionVector")
