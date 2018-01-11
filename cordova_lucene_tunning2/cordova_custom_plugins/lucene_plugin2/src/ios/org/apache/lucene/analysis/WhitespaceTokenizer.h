//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/WhitespaceTokenizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisWhitespaceTokenizer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisWhitespaceTokenizer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisWhitespaceTokenizer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisWhitespaceTokenizer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisWhitespaceTokenizer

#if !defined (OrgApacheLuceneAnalysisWhitespaceTokenizer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisWhitespaceTokenizer || defined(INCLUDE_OrgApacheLuceneAnalysisWhitespaceTokenizer))
#define OrgApacheLuceneAnalysisWhitespaceTokenizer_

#define RESTRICT_OrgApacheLuceneAnalysisCharTokenizer 1
#define INCLUDE_OrgApacheLuceneAnalysisCharTokenizer 1
#include "org/apache/lucene/analysis/CharTokenizer.h"

@class JavaIoReader;
@class OrgApacheLuceneUtilAttributeSource;
@class OrgApacheLuceneUtilAttributeSource_AttributeFactory;
@class OrgApacheLuceneUtilVersion;

@interface OrgApacheLuceneAnalysisWhitespaceTokenizer : OrgApacheLuceneAnalysisCharTokenizer

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)factory
                                                           withJavaIoReader:(JavaIoReader *)inArg;

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source
                                          withJavaIoReader:(JavaIoReader *)inArg;

- (instancetype)initWithJavaIoReader:(JavaIoReader *)inArg;

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
withOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)factory
                                  withJavaIoReader:(JavaIoReader *)inArg;

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
            withOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source
                                  withJavaIoReader:(JavaIoReader *)inArg;

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                                  withJavaIoReader:(JavaIoReader *)inArg;

#pragma mark Protected

- (jboolean)isTokenCharWithInt:(jint)c;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisWhitespaceTokenizer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisWhitespaceTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneAnalysisWhitespaceTokenizer *self, OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisWhitespaceTokenizer *new_OrgApacheLuceneAnalysisWhitespaceTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisWhitespaceTokenizer *create_OrgApacheLuceneAnalysisWhitespaceTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *inArg);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisWhitespaceTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneAnalysisWhitespaceTokenizer *self, OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisWhitespaceTokenizer *new_OrgApacheLuceneAnalysisWhitespaceTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisWhitespaceTokenizer *create_OrgApacheLuceneAnalysisWhitespaceTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *inArg);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisWhitespaceTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneAnalysisWhitespaceTokenizer *self, OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisWhitespaceTokenizer *new_OrgApacheLuceneAnalysisWhitespaceTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisWhitespaceTokenizer *create_OrgApacheLuceneAnalysisWhitespaceTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *inArg);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisWhitespaceTokenizer_initWithJavaIoReader_(OrgApacheLuceneAnalysisWhitespaceTokenizer *self, JavaIoReader *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisWhitespaceTokenizer *new_OrgApacheLuceneAnalysisWhitespaceTokenizer_initWithJavaIoReader_(JavaIoReader *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisWhitespaceTokenizer *create_OrgApacheLuceneAnalysisWhitespaceTokenizer_initWithJavaIoReader_(JavaIoReader *inArg);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisWhitespaceTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneAnalysisWhitespaceTokenizer *self, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisWhitespaceTokenizer *new_OrgApacheLuceneAnalysisWhitespaceTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisWhitespaceTokenizer *create_OrgApacheLuceneAnalysisWhitespaceTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *inArg);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisWhitespaceTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneAnalysisWhitespaceTokenizer *self, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisWhitespaceTokenizer *new_OrgApacheLuceneAnalysisWhitespaceTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisWhitespaceTokenizer *create_OrgApacheLuceneAnalysisWhitespaceTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisWhitespaceTokenizer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisWhitespaceTokenizer")
