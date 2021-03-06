//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/CharTokenizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCharTokenizer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCharTokenizer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCharTokenizer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCharTokenizer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCharTokenizer

#if !defined (OrgApacheLuceneAnalysisCharTokenizer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCharTokenizer || defined(INCLUDE_OrgApacheLuceneAnalysisCharTokenizer))
#define OrgApacheLuceneAnalysisCharTokenizer_

#define RESTRICT_OrgApacheLuceneAnalysisTokenizer 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenizer 1
#include "org/apache/lucene/analysis/Tokenizer.h"

@class JavaIoReader;
@class OrgApacheLuceneUtilAttributeSource;
@class OrgApacheLuceneUtilAttributeSource_AttributeFactory;
@class OrgApacheLuceneUtilVersion;

@interface OrgApacheLuceneAnalysisCharTokenizer : OrgApacheLuceneAnalysisTokenizer

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)factory
                                                           withJavaIoReader:(JavaIoReader *)input;

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source
                                          withJavaIoReader:(JavaIoReader *)input;

- (instancetype)initWithJavaIoReader:(JavaIoReader *)input;

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
withOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)factory
                                  withJavaIoReader:(JavaIoReader *)input;

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
            withOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source
                                  withJavaIoReader:(JavaIoReader *)input;

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                                  withJavaIoReader:(JavaIoReader *)input;

- (void)end;

- (jboolean)incrementToken;

- (void)resetWithJavaIoReader:(JavaIoReader *)input;

#pragma mark Protected

- (jboolean)isTokenCharWithChar:(jchar)c;

- (jboolean)isTokenCharWithInt:(jint)c;

- (jchar)normalizeWithChar:(jchar)c;

- (jint)normalizeWithInt:(jint)c;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisCharTokenizer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCharTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneAnalysisCharTokenizer *self, OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *input);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCharTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneAnalysisCharTokenizer *self, OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *input);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCharTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneAnalysisCharTokenizer *self, OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *input);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCharTokenizer_initWithJavaIoReader_(OrgApacheLuceneAnalysisCharTokenizer *self, JavaIoReader *input);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCharTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneAnalysisCharTokenizer *self, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *input);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCharTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneAnalysisCharTokenizer *self, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCharTokenizer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCharTokenizer")
