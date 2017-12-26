//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/analysis/standard/ClassicAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisStandardClassicAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisStandardClassicAnalyzer

#if !defined (OrgApacheLuceneAnalysisStandardClassicAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicAnalyzer || defined(INCLUDE_OrgApacheLuceneAnalysisStandardClassicAnalyzer))
#define OrgApacheLuceneAnalysisStandardClassicAnalyzer_

#define RESTRICT_OrgApacheLuceneAnalysisStopwordAnalyzerBase 1
#define INCLUDE_OrgApacheLuceneAnalysisStopwordAnalyzerBase 1
#include "org/apache/lucene/analysis/StopwordAnalyzerBase.h"

@class JavaIoFile;
@class JavaIoReader;
@class OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents;
@class OrgApacheLuceneUtilVersion;
@protocol JavaUtilSet;

@interface OrgApacheLuceneAnalysisStandardClassicAnalyzer : OrgApacheLuceneAnalysisStopwordAnalyzerBase

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion;

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                                    withJavaIoFile:(JavaIoFile *)stopwords;

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                                  withJavaIoReader:(JavaIoReader *)stopwords;

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                                   withJavaUtilSet:(id<JavaUtilSet>)stopWords;

- (jint)getMaxTokenLength;

- (void)setMaxTokenLengthWithInt:(jint)length;

#pragma mark Protected

- (OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName
                                                                                   withJavaIoReader:(JavaIoReader *)reader;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisStandardClassicAnalyzer)

inline jint OrgApacheLuceneAnalysisStandardClassicAnalyzer_get_DEFAULT_MAX_TOKEN_LENGTH(void);
#define OrgApacheLuceneAnalysisStandardClassicAnalyzer_DEFAULT_MAX_TOKEN_LENGTH 255
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardClassicAnalyzer, DEFAULT_MAX_TOKEN_LENGTH, jint)

inline id<JavaUtilSet> OrgApacheLuceneAnalysisStandardClassicAnalyzer_get_STOP_WORDS_SET(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id<JavaUtilSet> OrgApacheLuceneAnalysisStandardClassicAnalyzer_STOP_WORDS_SET;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisStandardClassicAnalyzer, STOP_WORDS_SET, id<JavaUtilSet>)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(OrgApacheLuceneAnalysisStandardClassicAnalyzer *self, OrgApacheLuceneUtilVersion *matchVersion, id<JavaUtilSet> stopWords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicAnalyzer *new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(OrgApacheLuceneUtilVersion *matchVersion, id<JavaUtilSet> stopWords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicAnalyzer *create_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(OrgApacheLuceneUtilVersion *matchVersion, id<JavaUtilSet> stopWords);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_(OrgApacheLuceneAnalysisStandardClassicAnalyzer *self, OrgApacheLuceneUtilVersion *matchVersion);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicAnalyzer *new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_(OrgApacheLuceneUtilVersion *matchVersion) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicAnalyzer *create_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_(OrgApacheLuceneUtilVersion *matchVersion);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoFile_(OrgApacheLuceneAnalysisStandardClassicAnalyzer *self, OrgApacheLuceneUtilVersion *matchVersion, JavaIoFile *stopwords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicAnalyzer *new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoFile_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoFile *stopwords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicAnalyzer *create_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoFile_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoFile *stopwords);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneAnalysisStandardClassicAnalyzer *self, OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *stopwords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicAnalyzer *new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *stopwords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardClassicAnalyzer *create_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *stopwords);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisStandardClassicAnalyzer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisStandardClassicAnalyzer")
