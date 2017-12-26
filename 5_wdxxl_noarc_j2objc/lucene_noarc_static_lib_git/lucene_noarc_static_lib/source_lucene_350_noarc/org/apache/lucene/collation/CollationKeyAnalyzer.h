//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/collation/CollationKeyAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCollationCollationKeyAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneCollationCollationKeyAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneCollationCollationKeyAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCollationCollationKeyAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneCollationCollationKeyAnalyzer

#if !defined (OrgApacheLuceneCollationCollationKeyAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneCollationCollationKeyAnalyzer || defined(INCLUDE_OrgApacheLuceneCollationCollationKeyAnalyzer))
#define OrgApacheLuceneCollationCollationKeyAnalyzer_

#define RESTRICT_OrgApacheLuceneAnalysisAnalyzer 1
#define INCLUDE_OrgApacheLuceneAnalysisAnalyzer 1
#include "org/apache/lucene/analysis/Analyzer.h"

@class JavaIoReader;
@class JavaTextCollator;
@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneCollationCollationKeyAnalyzer : OrgApacheLuceneAnalysisAnalyzer

#pragma mark Public

- (instancetype)initWithJavaTextCollator:(JavaTextCollator *)collator;

- (OrgApacheLuceneAnalysisTokenStream *)reusableTokenStreamWithNSString:(NSString *)fieldName
                                                       withJavaIoReader:(JavaIoReader *)reader;

- (OrgApacheLuceneAnalysisTokenStream *)tokenStreamWithNSString:(NSString *)fieldName
                                               withJavaIoReader:(JavaIoReader *)reader;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCollationCollationKeyAnalyzer)

FOUNDATION_EXPORT void OrgApacheLuceneCollationCollationKeyAnalyzer_initWithJavaTextCollator_(OrgApacheLuceneCollationCollationKeyAnalyzer *self, JavaTextCollator *collator);

FOUNDATION_EXPORT OrgApacheLuceneCollationCollationKeyAnalyzer *new_OrgApacheLuceneCollationCollationKeyAnalyzer_initWithJavaTextCollator_(JavaTextCollator *collator) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCollationCollationKeyAnalyzer *create_OrgApacheLuceneCollationCollationKeyAnalyzer_initWithJavaTextCollator_(JavaTextCollator *collator);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCollationCollationKeyAnalyzer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCollationCollationKeyAnalyzer")
