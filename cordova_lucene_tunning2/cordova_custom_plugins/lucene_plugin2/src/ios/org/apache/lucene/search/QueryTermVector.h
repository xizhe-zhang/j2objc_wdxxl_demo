//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/QueryTermVector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchQueryTermVector")
#ifdef RESTRICT_OrgApacheLuceneSearchQueryTermVector
#define INCLUDE_ALL_OrgApacheLuceneSearchQueryTermVector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchQueryTermVector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchQueryTermVector

#if !defined (OrgApacheLuceneSearchQueryTermVector_) && (INCLUDE_ALL_OrgApacheLuceneSearchQueryTermVector || defined(INCLUDE_OrgApacheLuceneSearchQueryTermVector))
#define OrgApacheLuceneSearchQueryTermVector_

#define RESTRICT_OrgApacheLuceneIndexTermFreqVector 1
#define INCLUDE_OrgApacheLuceneIndexTermFreqVector 1
#include "org/apache/lucene/index/TermFreqVector.h"

@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneAnalysisAnalyzer;

@interface OrgApacheLuceneSearchQueryTermVector : NSObject < OrgApacheLuceneIndexTermFreqVector >

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)queryString
withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

- (instancetype)initWithNSStringArray:(IOSObjectArray *)queryTerms;

- (NSString *)getField;

- (IOSIntArray *)getTermFrequencies;

- (IOSObjectArray *)getTerms;

- (IOSIntArray *)indexesOfWithNSStringArray:(IOSObjectArray *)terms
                                    withInt:(jint)start
                                    withInt:(jint)len;

- (jint)indexOfWithNSString:(NSString *)term;

- (jint)size;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchQueryTermVector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchQueryTermVector_initWithNSStringArray_(OrgApacheLuceneSearchQueryTermVector *self, IOSObjectArray *queryTerms);

FOUNDATION_EXPORT OrgApacheLuceneSearchQueryTermVector *new_OrgApacheLuceneSearchQueryTermVector_initWithNSStringArray_(IOSObjectArray *queryTerms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchQueryTermVector *create_OrgApacheLuceneSearchQueryTermVector_initWithNSStringArray_(IOSObjectArray *queryTerms);

FOUNDATION_EXPORT void OrgApacheLuceneSearchQueryTermVector_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneSearchQueryTermVector *self, NSString *queryString, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneSearchQueryTermVector *new_OrgApacheLuceneSearchQueryTermVector_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(NSString *queryString, OrgApacheLuceneAnalysisAnalyzer *analyzer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchQueryTermVector *create_OrgApacheLuceneSearchQueryTermVector_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(NSString *queryString, OrgApacheLuceneAnalysisAnalyzer *analyzer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchQueryTermVector)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchQueryTermVector")
