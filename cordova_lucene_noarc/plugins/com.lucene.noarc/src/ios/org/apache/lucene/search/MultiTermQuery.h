//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources_arc.jar!org/apache/lucene/search/MultiTermQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchMultiTermQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchMultiTermQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchMultiTermQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchMultiTermQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchMultiTermQuery

#if !defined (OrgApacheLuceneSearchMultiTermQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchMultiTermQuery || defined(INCLUDE_OrgApacheLuceneSearchMultiTermQuery))
#define OrgApacheLuceneSearchMultiTermQuery_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchFilteredTermEnum;
@class OrgApacheLuceneSearchMultiTermQuery_RewriteMethod;

@interface OrgApacheLuceneSearchMultiTermQuery : OrgApacheLuceneSearchQuery {
 @public
  OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *rewriteMethod_;
  jint numberOfTerms_;
}

#pragma mark Public

- (instancetype)init;

- (void)clearTotalNumberOfTerms;

- (jboolean)isEqual:(id)obj;

- (OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)getRewriteMethod;

- (jint)getTotalNumberOfTerms;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (void)setRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)method;

#pragma mark Protected

- (OrgApacheLuceneSearchFilteredTermEnum *)getEnumWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (void)incTotalNumberOfTermsWithInt:(jint)inc;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchMultiTermQuery)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchMultiTermQuery, rewriteMethod_, OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)

inline OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *OrgApacheLuceneSearchMultiTermQuery_get_CONSTANT_SCORE_FILTER_REWRITE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_FILTER_REWRITE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchMultiTermQuery, CONSTANT_SCORE_FILTER_REWRITE, OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)

inline OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *OrgApacheLuceneSearchMultiTermQuery_get_SCORING_BOOLEAN_QUERY_REWRITE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *OrgApacheLuceneSearchMultiTermQuery_SCORING_BOOLEAN_QUERY_REWRITE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchMultiTermQuery, SCORING_BOOLEAN_QUERY_REWRITE, OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)

inline OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *OrgApacheLuceneSearchMultiTermQuery_get_CONSTANT_SCORE_BOOLEAN_QUERY_REWRITE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_BOOLEAN_QUERY_REWRITE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchMultiTermQuery, CONSTANT_SCORE_BOOLEAN_QUERY_REWRITE, OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)

inline OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *OrgApacheLuceneSearchMultiTermQuery_get_CONSTANT_SCORE_AUTO_REWRITE_DEFAULT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_AUTO_REWRITE_DEFAULT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchMultiTermQuery, CONSTANT_SCORE_AUTO_REWRITE_DEFAULT, OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchMultiTermQuery_init(OrgApacheLuceneSearchMultiTermQuery *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchMultiTermQuery)

#endif

#if !defined (OrgApacheLuceneSearchMultiTermQuery_RewriteMethod_) && (INCLUDE_ALL_OrgApacheLuceneSearchMultiTermQuery || defined(INCLUDE_OrgApacheLuceneSearchMultiTermQuery_RewriteMethod))
#define OrgApacheLuceneSearchMultiTermQuery_RewriteMethod_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchMultiTermQuery;
@class OrgApacheLuceneSearchQuery;

@interface OrgApacheLuceneSearchMultiTermQuery_RewriteMethod : NSObject < JavaIoSerializable >

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                   withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod)

FOUNDATION_EXPORT void OrgApacheLuceneSearchMultiTermQuery_RewriteMethod_init(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod)

#endif

#if !defined (OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite_) && (INCLUDE_ALL_OrgApacheLuceneSearchMultiTermQuery || defined(INCLUDE_OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite))
#define OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite_

#define RESTRICT_OrgApacheLuceneSearchTopTermsRewrite 1
#define INCLUDE_OrgApacheLuceneSearchTopTermsRewrite 1
#include "org/apache/lucene/search/TopTermsRewrite.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneSearchBooleanQuery;
@class OrgApacheLuceneSearchMultiTermQuery;

@interface OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite : OrgApacheLuceneSearchTopTermsRewrite

#pragma mark Public

- (instancetype)initWithInt:(jint)size;

- (OrgApacheLuceneSearchBooleanQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)arg0
                                          withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)arg1;

#pragma mark Protected

- (void)addClauseWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchBooleanQuery *)topLevel
                   withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                      withFloat:(jfloat)boost;

- (jint)getMaxSize;

- (OrgApacheLuceneSearchBooleanQuery *)getTopLevelQuery;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite)

FOUNDATION_EXPORT void OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite_initWithInt_(OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite *self, jint size);

FOUNDATION_EXPORT OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite *new_OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite_initWithInt_(jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite *create_OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite_initWithInt_(jint size);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite)

#endif

#if !defined (OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite_) && (INCLUDE_ALL_OrgApacheLuceneSearchMultiTermQuery || defined(INCLUDE_OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite))
#define OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite_

#define RESTRICT_OrgApacheLuceneSearchTopTermsRewrite 1
#define INCLUDE_OrgApacheLuceneSearchTopTermsRewrite 1
#include "org/apache/lucene/search/TopTermsRewrite.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneSearchBooleanQuery;
@class OrgApacheLuceneSearchMultiTermQuery;

@interface OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite : OrgApacheLuceneSearchTopTermsRewrite

#pragma mark Public

- (instancetype)initWithInt:(jint)size;

- (OrgApacheLuceneSearchBooleanQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)arg0
                                          withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)arg1;

#pragma mark Protected

- (void)addClauseWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchBooleanQuery *)topLevel
                   withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                      withFloat:(jfloat)boost;

- (jint)getMaxSize;

- (OrgApacheLuceneSearchBooleanQuery *)getTopLevelQuery;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite)

FOUNDATION_EXPORT void OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite_initWithInt_(OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite *self, jint size);

FOUNDATION_EXPORT OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite *new_OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite_initWithInt_(jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite *create_OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite_initWithInt_(jint size);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite)

#endif

#if !defined (OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite_) && (INCLUDE_ALL_OrgApacheLuceneSearchMultiTermQuery || defined(INCLUDE_OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite))
#define OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite_

#define RESTRICT_OrgApacheLuceneSearchConstantScoreAutoRewrite 1
#define INCLUDE_OrgApacheLuceneSearchConstantScoreAutoRewrite 1
#include "org/apache/lucene/search/ConstantScoreAutoRewrite.h"

@interface OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite : OrgApacheLuceneSearchConstantScoreAutoRewrite

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite)

FOUNDATION_EXPORT void OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite_init(OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite *new_OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite *create_OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchMultiTermQuery")