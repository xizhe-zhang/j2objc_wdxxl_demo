//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/FieldCacheTermsFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheTermsFilter")
#ifdef RESTRICT_OrgApacheLuceneSearchFieldCacheTermsFilter
#define INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheTermsFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheTermsFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFieldCacheTermsFilter

#if !defined (OrgApacheLuceneSearchFieldCacheTermsFilter_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheTermsFilter || defined(INCLUDE_OrgApacheLuceneSearchFieldCacheTermsFilter))
#define OrgApacheLuceneSearchFieldCacheTermsFilter_

#define RESTRICT_OrgApacheLuceneSearchFilter 1
#define INCLUDE_OrgApacheLuceneSearchFilter 1
#include "org/apache/lucene/search/Filter.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchDocIdSet;
@protocol OrgApacheLuceneSearchFieldCache;

@interface OrgApacheLuceneSearchFieldCacheTermsFilter : OrgApacheLuceneSearchFilter

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
               withNSStringArray:(IOSObjectArray *)terms;

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (id<OrgApacheLuceneSearchFieldCache>)getFieldCache;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldCacheTermsFilter)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldCacheTermsFilter_initWithNSString_withNSStringArray_(OrgApacheLuceneSearchFieldCacheTermsFilter *self, NSString *field, IOSObjectArray *terms);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheTermsFilter *new_OrgApacheLuceneSearchFieldCacheTermsFilter_initWithNSString_withNSStringArray_(NSString *field, IOSObjectArray *terms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheTermsFilter *create_OrgApacheLuceneSearchFieldCacheTermsFilter_initWithNSString_withNSStringArray_(NSString *field, IOSObjectArray *terms);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldCacheTermsFilter)

#endif

#if !defined (OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheTermsFilter || defined(INCLUDE_OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet))
#define OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_

#define RESTRICT_OrgApacheLuceneSearchDocIdSet 1
#define INCLUDE_OrgApacheLuceneSearchDocIdSet 1
#include "org/apache/lucene/search/DocIdSet.h"

@class OrgApacheLuceneSearchDocIdSetIterator;
@class OrgApacheLuceneSearchFieldCacheTermsFilter;
@class OrgApacheLuceneSearchFieldCache_StringIndex;

@interface OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet : OrgApacheLuceneSearchDocIdSet

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchFieldCacheTermsFilter:(OrgApacheLuceneSearchFieldCacheTermsFilter *)outer$
                   withOrgApacheLuceneSearchFieldCache_StringIndex:(OrgApacheLuceneSearchFieldCache_StringIndex *)fcsi;

- (jboolean)isCacheable;

- (OrgApacheLuceneSearchDocIdSetIterator *)iterator;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_initWithOrgApacheLuceneSearchFieldCacheTermsFilter_withOrgApacheLuceneSearchFieldCache_StringIndex_(OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet *self, OrgApacheLuceneSearchFieldCacheTermsFilter *outer$, OrgApacheLuceneSearchFieldCache_StringIndex *fcsi);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet *new_OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_initWithOrgApacheLuceneSearchFieldCacheTermsFilter_withOrgApacheLuceneSearchFieldCache_StringIndex_(OrgApacheLuceneSearchFieldCacheTermsFilter *outer$, OrgApacheLuceneSearchFieldCache_StringIndex *fcsi) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet *create_OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_initWithOrgApacheLuceneSearchFieldCacheTermsFilter_withOrgApacheLuceneSearchFieldCache_StringIndex_(OrgApacheLuceneSearchFieldCacheTermsFilter *outer$, OrgApacheLuceneSearchFieldCache_StringIndex *fcsi);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet)

#endif

#if !defined (OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_FieldCacheTermsFilterDocIdSetIterator_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheTermsFilter || defined(INCLUDE_OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_FieldCacheTermsFilterDocIdSetIterator))
#define OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_FieldCacheTermsFilterDocIdSetIterator_

#define RESTRICT_OrgApacheLuceneSearchDocIdSetIterator 1
#define INCLUDE_OrgApacheLuceneSearchDocIdSetIterator 1
#include "org/apache/lucene/search/DocIdSetIterator.h"

@class OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet;

@interface OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_FieldCacheTermsFilterDocIdSetIterator : OrgApacheLuceneSearchDocIdSetIterator

#pragma mark Public

- (jint)advanceWithInt:(jint)target;

- (jint)docID;

- (jint)nextDoc;

#pragma mark Protected

- (instancetype)initWithOrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet:(OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet *)outer$;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_FieldCacheTermsFilterDocIdSetIterator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_FieldCacheTermsFilterDocIdSetIterator_initWithOrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_(OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_FieldCacheTermsFilterDocIdSetIterator *self, OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet *outer$);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_FieldCacheTermsFilterDocIdSetIterator *new_OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_FieldCacheTermsFilterDocIdSetIterator_initWithOrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_(OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_FieldCacheTermsFilterDocIdSetIterator *create_OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_FieldCacheTermsFilterDocIdSetIterator_initWithOrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_(OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldCacheTermsFilter_FieldCacheTermsFilterDocIdSet_FieldCacheTermsFilterDocIdSetIterator)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheTermsFilter")
