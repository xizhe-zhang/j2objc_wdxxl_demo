//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/tokenattributes/FlagsAttributeImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl")
#ifdef RESTRICT_OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl
#define INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl

#if !defined (OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl || defined(INCLUDE_OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl))
#define OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_

#define RESTRICT_OrgApacheLuceneUtilAttributeImpl 1
#define INCLUDE_OrgApacheLuceneUtilAttributeImpl 1
#include "org/apache/lucene/util/AttributeImpl.h"

#define RESTRICT_OrgApacheLuceneAnalysisTokenattributesFlagsAttribute 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenattributesFlagsAttribute 1
#include "org/apache/lucene/analysis/tokenattributes/FlagsAttribute.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@interface OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl : OrgApacheLuceneUtilAttributeImpl < OrgApacheLuceneAnalysisTokenattributesFlagsAttribute, NSCopying, JavaIoSerializable >

#pragma mark Public

- (instancetype)init;

- (void)clear;

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target OBJC_METHOD_FAMILY_NONE;

- (jboolean)isEqual:(id)other;

- (jint)getFlags;

- (NSUInteger)hash;

- (void)setFlagsWithInt:(jint)flags;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_init(OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl *create_OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl")
