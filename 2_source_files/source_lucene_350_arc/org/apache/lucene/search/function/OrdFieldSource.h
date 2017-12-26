//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/function/OrdFieldSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFunctionOrdFieldSource")
#ifdef RESTRICT_OrgApacheLuceneSearchFunctionOrdFieldSource
#define INCLUDE_ALL_OrgApacheLuceneSearchFunctionOrdFieldSource 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFunctionOrdFieldSource 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFunctionOrdFieldSource

#if !defined (OrgApacheLuceneSearchFunctionOrdFieldSource_) && (INCLUDE_ALL_OrgApacheLuceneSearchFunctionOrdFieldSource || defined(INCLUDE_OrgApacheLuceneSearchFunctionOrdFieldSource))
#define OrgApacheLuceneSearchFunctionOrdFieldSource_

#define RESTRICT_OrgApacheLuceneSearchFunctionValueSource 1
#define INCLUDE_OrgApacheLuceneSearchFunctionValueSource 1
#include "org/apache/lucene/search/function/ValueSource.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchFunctionDocValues;

@interface OrgApacheLuceneSearchFunctionOrdFieldSource : OrgApacheLuceneSearchFunctionValueSource {
 @public
  NSString *field_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneSearchFunctionDocValues *)getValuesWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (NSUInteger)hash;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchFunctionOrdFieldSource)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFunctionOrdFieldSource, field_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFunctionOrdFieldSource_initWithNSString_(OrgApacheLuceneSearchFunctionOrdFieldSource *self, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneSearchFunctionOrdFieldSource *new_OrgApacheLuceneSearchFunctionOrdFieldSource_initWithNSString_(NSString *field) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFunctionOrdFieldSource *create_OrgApacheLuceneSearchFunctionOrdFieldSource_initWithNSString_(NSString *field);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFunctionOrdFieldSource)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFunctionOrdFieldSource")
