//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/spans/SpanPositionCheckQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanPositionCheckQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchSpansSpanPositionCheckQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanPositionCheckQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanPositionCheckQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpansSpanPositionCheckQuery

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSpansSpanPositionCheckQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanPositionCheckQuery || defined(INCLUDE_OrgApacheLuceneSearchSpansSpanPositionCheckQuery))
#define OrgApacheLuceneSearchSpansSpanPositionCheckQuery_

#define RESTRICT_OrgApacheLuceneSearchSpansSpanQuery 1
#define INCLUDE_OrgApacheLuceneSearchSpansSpanQuery 1
#include "org/apache/lucene/search/spans/SpanQuery.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchQuery;
@class OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus;
@class OrgApacheLuceneSearchSpansSpans;
@protocol JavaUtilSet;

@interface OrgApacheLuceneSearchSpansSpanPositionCheckQuery : OrgApacheLuceneSearchSpansSpanQuery < NSCopying > {
 @public
  OrgApacheLuceneSearchSpansSpanQuery *match_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)match;

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms;

- (NSString *)getField;

- (OrgApacheLuceneSearchSpansSpanQuery *)getMatch;

- (OrgApacheLuceneSearchSpansSpans *)getSpansWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

#pragma mark Protected

- (OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *)acceptPositionWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanPositionCheckQuery)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanPositionCheckQuery, match_, OrgApacheLuceneSearchSpansSpanQuery *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansSpanPositionCheckQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_(OrgApacheLuceneSearchSpansSpanPositionCheckQuery *self, OrgApacheLuceneSearchSpansSpanQuery *match);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanPositionCheckQuery)

#endif

#if !defined (OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanPositionCheckQuery || defined(INCLUDE_OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus))
#define OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_Enum) {
  OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_Enum_YES = 0,
  OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_Enum_NO = 1,
  OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_Enum_NO_AND_ADVANCE = 2,
};

@interface OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus : JavaLangEnum

#pragma mark Public

+ (OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_values_[];

inline OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_get_YES(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus, YES)

inline OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_get_NO(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus, NO)

inline OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_get_NO_AND_ADVANCE(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus, NO_AND_ADVANCE)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_values(void);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus)

#endif

#if !defined (OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanPositionCheckQuery || defined(INCLUDE_OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan))
#define OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan_

#define RESTRICT_OrgApacheLuceneSearchSpansSpans 1
#define INCLUDE_OrgApacheLuceneSearchSpansSpans 1
#include "org/apache/lucene/search/spans/Spans.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchSpansSpanPositionCheckQuery;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan : OrgApacheLuceneSearchSpansSpans

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanPositionCheckQuery:(OrgApacheLuceneSearchSpansSpanPositionCheckQuery *)outer$
                                     withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (jint)doc;

- (jint)end;

- (id<JavaUtilCollection>)getPayload;

- (jboolean)isPayloadAvailable;

- (jboolean)next;

- (jboolean)skipToWithInt:(jint)target;

- (jint)start;

- (NSString *)description;

#pragma mark Protected

- (jboolean)doNext;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan_initWithOrgApacheLuceneSearchSpansSpanPositionCheckQuery_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan *self, OrgApacheLuceneSearchSpansSpanPositionCheckQuery *outer$, OrgApacheLuceneIndexIndexReader *reader);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan *new_OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan_initWithOrgApacheLuceneSearchSpansSpanPositionCheckQuery_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchSpansSpanPositionCheckQuery *outer$, OrgApacheLuceneIndexIndexReader *reader) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan *create_OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan_initWithOrgApacheLuceneSearchSpansSpanPositionCheckQuery_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchSpansSpanPositionCheckQuery *outer$, OrgApacheLuceneIndexIndexReader *reader);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_PositionCheckSpan)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanPositionCheckQuery")
