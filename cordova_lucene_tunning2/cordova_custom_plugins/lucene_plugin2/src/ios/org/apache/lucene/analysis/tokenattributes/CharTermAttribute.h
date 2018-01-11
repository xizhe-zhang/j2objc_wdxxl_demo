//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/tokenattributes/CharTermAttribute.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesCharTermAttribute")
#ifdef RESTRICT_OrgApacheLuceneAnalysisTokenattributesCharTermAttribute
#define INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesCharTermAttribute 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesCharTermAttribute 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisTokenattributesCharTermAttribute

#if !defined (OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesCharTermAttribute || defined(INCLUDE_OrgApacheLuceneAnalysisTokenattributesCharTermAttribute))
#define OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_

#define RESTRICT_OrgApacheLuceneUtilAttribute 1
#define INCLUDE_OrgApacheLuceneUtilAttribute 1
#include "org/apache/lucene/util/Attribute.h"

#define RESTRICT_JavaLangCharSequence 1
#define INCLUDE_JavaLangCharSequence 1
#include "java/lang/CharSequence.h"

#define RESTRICT_JavaLangAppendable 1
#define INCLUDE_JavaLangAppendable 1
#include "java/lang/Appendable.h"

@class IOSCharArray;
@class JavaLangStringBuilder;

@protocol OrgApacheLuceneAnalysisTokenattributesCharTermAttribute < OrgApacheLuceneUtilAttribute, JavaLangCharSequence, JavaLangAppendable, JavaObject >

- (void)copyBufferWithCharArray:(IOSCharArray *)buffer
                        withInt:(jint)offset
                        withInt:(jint)length OBJC_METHOD_FAMILY_NONE;

- (IOSCharArray *)buffer;

- (IOSCharArray *)resizeBufferWithInt:(jint)newSize;

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)setLengthWithInt:(jint)length;

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)setEmpty;

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq;

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq
                                                                                      withInt:(jint)start
                                                                                      withInt:(jint)end;

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithChar:(jchar)c;

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithNSString:(NSString *)s;

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb;

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:(id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)termAtt;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisTokenattributesCharTermAttribute)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTokenattributesCharTermAttribute)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesCharTermAttribute")
