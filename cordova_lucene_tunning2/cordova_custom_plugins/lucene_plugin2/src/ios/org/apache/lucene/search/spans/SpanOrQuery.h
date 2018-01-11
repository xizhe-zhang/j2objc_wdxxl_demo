//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/spans/SpanOrQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanOrQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchSpansSpanOrQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanOrQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanOrQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpansSpanOrQuery

#if !defined (OrgApacheLuceneSearchSpansSpanOrQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanOrQuery || defined(INCLUDE_OrgApacheLuceneSearchSpansSpanOrQuery))
#define OrgApacheLuceneSearchSpansSpanOrQuery_

#define RESTRICT_OrgApacheLuceneSearchSpansSpanQuery 1
#define INCLUDE_OrgApacheLuceneSearchSpansSpanQuery 1
#include "org/apache/lucene/search/spans/SpanQuery.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchQuery;
@class OrgApacheLuceneSearchSpansSpans;
@protocol JavaUtilSet;

@interface OrgApacheLuceneSearchSpansSpanOrQuery : OrgApacheLuceneSearchSpansSpanQuery < NSCopying >

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQueryArray:(IOSObjectArray *)clauses;

- (void)addClauseWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)clause;

- (id)java_clone;

- (jboolean)isEqual:(id)o;

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms;

- (IOSObjectArray *)getClauses;

- (NSString *)getField;

- (OrgApacheLuceneSearchSpansSpans *)getSpansWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (NSString *)toStringWithNSString:(NSString *)field;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanOrQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansSpanOrQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_(OrgApacheLuceneSearchSpansSpanOrQuery *self, IOSObjectArray *clauses);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanOrQuery *new_OrgApacheLuceneSearchSpansSpanOrQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_(IOSObjectArray *clauses) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanOrQuery *create_OrgApacheLuceneSearchSpansSpanOrQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_(IOSObjectArray *clauses);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanOrQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanOrQuery")
