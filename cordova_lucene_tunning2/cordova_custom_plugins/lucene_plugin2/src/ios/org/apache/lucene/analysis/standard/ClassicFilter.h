//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/standard/ClassicFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisStandardClassicFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisStandardClassicFilter

#if !defined (OrgApacheLuceneAnalysisStandardClassicFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicFilter || defined(INCLUDE_OrgApacheLuceneAnalysisStandardClassicFilter))
#define OrgApacheLuceneAnalysisStandardClassicFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisStandardClassicFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg;

- (jboolean)incrementToken;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisStandardClassicFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardClassicFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardClassicFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicFilter *new_OrgApacheLuceneAnalysisStandardClassicFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicFilter *create_OrgApacheLuceneAnalysisStandardClassicFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisStandardClassicFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicFilter")
