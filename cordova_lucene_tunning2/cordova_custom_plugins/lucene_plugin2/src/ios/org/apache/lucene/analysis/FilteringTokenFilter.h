//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/FilteringTokenFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisFilteringTokenFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisFilteringTokenFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisFilteringTokenFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisFilteringTokenFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisFilteringTokenFilter

#if !defined (OrgApacheLuceneAnalysisFilteringTokenFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisFilteringTokenFilter || defined(INCLUDE_OrgApacheLuceneAnalysisFilteringTokenFilter))
#define OrgApacheLuceneAnalysisFilteringTokenFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisFilteringTokenFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithBoolean:(jboolean)enablePositionIncrements
withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)getEnablePositionIncrements;

- (jboolean)incrementToken;

- (void)setEnablePositionIncrementsWithBoolean:(jboolean)enable;

#pragma mark Protected

- (jboolean)accept;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisFilteringTokenFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisFilteringTokenFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisFilteringTokenFilter *self, jboolean enablePositionIncrements, OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisFilteringTokenFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisFilteringTokenFilter")
