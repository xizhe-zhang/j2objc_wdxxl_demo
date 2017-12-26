//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/FuzzyQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFuzzyQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchFuzzyQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchFuzzyQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFuzzyQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFuzzyQuery

#if !defined (OrgApacheLuceneSearchFuzzyQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchFuzzyQuery || defined(INCLUDE_OrgApacheLuceneSearchFuzzyQuery))
#define OrgApacheLuceneSearchFuzzyQuery_

#define RESTRICT_OrgApacheLuceneSearchMultiTermQuery 1
#define INCLUDE_OrgApacheLuceneSearchMultiTermQuery 1
#include "org/apache/lucene/search/MultiTermQuery.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneSearchFilteredTermEnum;

@interface OrgApacheLuceneSearchFuzzyQuery : OrgApacheLuceneSearchMultiTermQuery {
 @public
  OrgApacheLuceneIndexTerm *term_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                       withFloat:(jfloat)minimumSimilarity;

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                       withFloat:(jfloat)minimumSimilarity
                                         withInt:(jint)prefixLength;

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                       withFloat:(jfloat)minimumSimilarity
                                         withInt:(jint)prefixLength
                                         withInt:(jint)maxExpansions;

- (jboolean)isEqual:(id)obj;

- (jfloat)getMinSimilarity;

- (jint)getPrefixLength;

- (OrgApacheLuceneIndexTerm *)getTerm;

- (NSUInteger)hash;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

- (OrgApacheLuceneSearchFilteredTermEnum *)getEnumWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFuzzyQuery)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFuzzyQuery, term_, OrgApacheLuceneIndexTerm *)

inline jfloat OrgApacheLuceneSearchFuzzyQuery_get_defaultMinSimilarity(void);
#define OrgApacheLuceneSearchFuzzyQuery_defaultMinSimilarity 0.5f
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchFuzzyQuery, defaultMinSimilarity, jfloat)

inline jint OrgApacheLuceneSearchFuzzyQuery_get_defaultPrefixLength(void);
#define OrgApacheLuceneSearchFuzzyQuery_defaultPrefixLength 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchFuzzyQuery, defaultPrefixLength, jint)

inline jint OrgApacheLuceneSearchFuzzyQuery_get_defaultMaxExpansions(void);
#define OrgApacheLuceneSearchFuzzyQuery_defaultMaxExpansions 2147483647
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchFuzzyQuery, defaultMaxExpansions, jint)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withFloat_withInt_withInt_(OrgApacheLuceneSearchFuzzyQuery *self, OrgApacheLuceneIndexTerm *term, jfloat minimumSimilarity, jint prefixLength, jint maxExpansions);

FOUNDATION_EXPORT OrgApacheLuceneSearchFuzzyQuery *new_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withFloat_withInt_withInt_(OrgApacheLuceneIndexTerm *term, jfloat minimumSimilarity, jint prefixLength, jint maxExpansions) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFuzzyQuery *create_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withFloat_withInt_withInt_(OrgApacheLuceneIndexTerm *term, jfloat minimumSimilarity, jint prefixLength, jint maxExpansions);

FOUNDATION_EXPORT void OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withFloat_withInt_(OrgApacheLuceneSearchFuzzyQuery *self, OrgApacheLuceneIndexTerm *term, jfloat minimumSimilarity, jint prefixLength);

FOUNDATION_EXPORT OrgApacheLuceneSearchFuzzyQuery *new_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withFloat_withInt_(OrgApacheLuceneIndexTerm *term, jfloat minimumSimilarity, jint prefixLength) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFuzzyQuery *create_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withFloat_withInt_(OrgApacheLuceneIndexTerm *term, jfloat minimumSimilarity, jint prefixLength);

FOUNDATION_EXPORT void OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withFloat_(OrgApacheLuceneSearchFuzzyQuery *self, OrgApacheLuceneIndexTerm *term, jfloat minimumSimilarity);

FOUNDATION_EXPORT OrgApacheLuceneSearchFuzzyQuery *new_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withFloat_(OrgApacheLuceneIndexTerm *term, jfloat minimumSimilarity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFuzzyQuery *create_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withFloat_(OrgApacheLuceneIndexTerm *term, jfloat minimumSimilarity);

FOUNDATION_EXPORT void OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchFuzzyQuery *self, OrgApacheLuceneIndexTerm *term);

FOUNDATION_EXPORT OrgApacheLuceneSearchFuzzyQuery *new_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFuzzyQuery *create_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFuzzyQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFuzzyQuery")
