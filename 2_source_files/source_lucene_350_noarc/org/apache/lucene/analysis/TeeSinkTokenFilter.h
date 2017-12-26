//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/analysis/TeeSinkTokenFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisTeeSinkTokenFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisTeeSinkTokenFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisTeeSinkTokenFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisTeeSinkTokenFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisTeeSinkTokenFilter

#if !defined (OrgApacheLuceneAnalysisTeeSinkTokenFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisTeeSinkTokenFilter || defined(INCLUDE_OrgApacheLuceneAnalysisTeeSinkTokenFilter))
#define OrgApacheLuceneAnalysisTeeSinkTokenFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkFilter;
@class OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkTokenStream;
@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisTeeSinkTokenFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (void)addSinkTokenStreamWithOrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkTokenStream:(OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkTokenStream *)sink;

- (void)consumeAllTokens;

- (void)end;

- (jboolean)incrementToken;

- (OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkTokenStream *)newSinkTokenStream OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkTokenStream *)newSinkTokenStreamWithOrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkFilter:(OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkFilter *)filter OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisTeeSinkTokenFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTeeSinkTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTeeSinkTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisTeeSinkTokenFilter *new_OrgApacheLuceneAnalysisTeeSinkTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisTeeSinkTokenFilter *create_OrgApacheLuceneAnalysisTeeSinkTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTeeSinkTokenFilter)

#endif

#if !defined (OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisTeeSinkTokenFilter || defined(INCLUDE_OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkFilter))
#define OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkFilter_

@class OrgApacheLuceneUtilAttributeSource;

@interface OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkFilter : NSObject

#pragma mark Public

- (instancetype)init;

- (jboolean)acceptWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkFilter_init(OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkFilter *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkFilter)

#endif

#if !defined (OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkTokenStream_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisTeeSinkTokenFilter || defined(INCLUDE_OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkTokenStream))
#define OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkTokenStream_

#define RESTRICT_OrgApacheLuceneAnalysisTokenStream 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenStream 1
#include "org/apache/lucene/analysis/TokenStream.h"

@class OrgApacheLuceneUtilAttributeSource;
@class OrgApacheLuceneUtilAttributeSource_AttributeFactory;

@interface OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkTokenStream : OrgApacheLuceneAnalysisTokenStream

#pragma mark Public

- (void)end;

- (jboolean)incrementToken;

- (void)reset;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkTokenStream)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTeeSinkTokenFilter_SinkTokenStream)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisTeeSinkTokenFilter")
