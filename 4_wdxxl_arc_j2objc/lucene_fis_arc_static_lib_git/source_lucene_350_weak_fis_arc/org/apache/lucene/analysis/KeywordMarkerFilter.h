//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/KeywordMarkerFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisKeywordMarkerFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisKeywordMarkerFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisKeywordMarkerFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisKeywordMarkerFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisKeywordMarkerFilter

#if !defined (OrgApacheLuceneAnalysisKeywordMarkerFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisKeywordMarkerFilter || defined(INCLUDE_OrgApacheLuceneAnalysisKeywordMarkerFilter))
#define OrgApacheLuceneAnalysisKeywordMarkerFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisCharArraySet;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilSet;

@interface OrgApacheLuceneAnalysisKeywordMarkerFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                   withOrgApacheLuceneAnalysisCharArraySet:(OrgApacheLuceneAnalysisCharArraySet *)keywordSet;

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                           withJavaUtilSet:(id<JavaUtilSet>)keywordSet;

- (jboolean)incrementToken;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisKeywordMarkerFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCharArraySet_(OrgApacheLuceneAnalysisKeywordMarkerFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisCharArraySet *keywordSet);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisKeywordMarkerFilter *new_OrgApacheLuceneAnalysisKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCharArraySet_(OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisCharArraySet *keywordSet) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisKeywordMarkerFilter *create_OrgApacheLuceneAnalysisKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCharArraySet_(OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisCharArraySet *keywordSet);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_(OrgApacheLuceneAnalysisKeywordMarkerFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, id<JavaUtilSet> keywordSet);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisKeywordMarkerFilter *new_OrgApacheLuceneAnalysisKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_(OrgApacheLuceneAnalysisTokenStream *inArg, id<JavaUtilSet> keywordSet) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisKeywordMarkerFilter *create_OrgApacheLuceneAnalysisKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_(OrgApacheLuceneAnalysisTokenStream *inArg, id<JavaUtilSet> keywordSet);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisKeywordMarkerFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisKeywordMarkerFilter")