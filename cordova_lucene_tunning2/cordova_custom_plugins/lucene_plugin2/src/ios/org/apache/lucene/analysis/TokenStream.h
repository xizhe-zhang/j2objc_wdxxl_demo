//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/TokenStream.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisTokenStream")
#ifdef RESTRICT_OrgApacheLuceneAnalysisTokenStream
#define INCLUDE_ALL_OrgApacheLuceneAnalysisTokenStream 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisTokenStream 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisTokenStream

#if !defined (OrgApacheLuceneAnalysisTokenStream_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisTokenStream || defined(INCLUDE_OrgApacheLuceneAnalysisTokenStream))
#define OrgApacheLuceneAnalysisTokenStream_

#define RESTRICT_OrgApacheLuceneUtilAttributeSource 1
#define INCLUDE_OrgApacheLuceneUtilAttributeSource 1
#include "org/apache/lucene/util/AttributeSource.h"

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class OrgApacheLuceneUtilAttributeSource_AttributeFactory;

@interface OrgApacheLuceneAnalysisTokenStream : OrgApacheLuceneUtilAttributeSource < JavaIoCloseable >

#pragma mark Public

- (void)close;

- (void)end;

- (jboolean)incrementToken;

- (void)reset;

#pragma mark Protected

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)factory;

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisTokenStream)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenStream_init(OrgApacheLuceneAnalysisTokenStream *self);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeSource_(OrgApacheLuceneAnalysisTokenStream *self, OrgApacheLuceneUtilAttributeSource *input);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_(OrgApacheLuceneAnalysisTokenStream *self, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTokenStream)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisTokenStream")
