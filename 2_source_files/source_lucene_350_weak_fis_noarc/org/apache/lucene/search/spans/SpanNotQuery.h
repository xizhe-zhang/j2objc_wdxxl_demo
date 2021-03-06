//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/spans/SpanNotQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanNotQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchSpansSpanNotQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanNotQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanNotQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpansSpanNotQuery

#if !defined (OrgApacheLuceneSearchSpansSpanNotQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanNotQuery || defined(INCLUDE_OrgApacheLuceneSearchSpansSpanNotQuery))
#define OrgApacheLuceneSearchSpansSpanNotQuery_

#define RESTRICT_OrgApacheLuceneSearchSpansSpanQuery 1
#define INCLUDE_OrgApacheLuceneSearchSpansSpanQuery 1
#include "org/apache/lucene/search/spans/SpanQuery.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchQuery;
@class OrgApacheLuceneSearchSpansSpans;
@protocol JavaUtilSet;

@interface OrgApacheLuceneSearchSpansSpanNotQuery : OrgApacheLuceneSearchSpansSpanQuery < NSCopying >

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)include
                    withOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)exclude;

- (id)java_clone;

- (jboolean)isEqual:(id)o;

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms;

- (OrgApacheLuceneSearchSpansSpanQuery *)getExclude;

- (NSString *)getField;

- (OrgApacheLuceneSearchSpansSpanQuery *)getInclude;

- (OrgApacheLuceneSearchSpansSpans *)getSpansWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (NSString *)toStringWithNSString:(NSString *)field;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanNotQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansSpanNotQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_(OrgApacheLuceneSearchSpansSpanNotQuery *self, OrgApacheLuceneSearchSpansSpanQuery *include, OrgApacheLuceneSearchSpansSpanQuery *exclude);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanNotQuery *new_OrgApacheLuceneSearchSpansSpanNotQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_(OrgApacheLuceneSearchSpansSpanQuery *include, OrgApacheLuceneSearchSpansSpanQuery *exclude) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanNotQuery *create_OrgApacheLuceneSearchSpansSpanNotQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_(OrgApacheLuceneSearchSpansSpanQuery *include, OrgApacheLuceneSearchSpansSpanQuery *exclude);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanNotQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanNotQuery")
