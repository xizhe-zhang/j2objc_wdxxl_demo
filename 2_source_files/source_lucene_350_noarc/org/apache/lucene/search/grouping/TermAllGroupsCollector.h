//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-grouping-3.5.0-sources.jar!org/apache/lucene/search/grouping/TermAllGroupsCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchGroupingTermAllGroupsCollector")
#ifdef RESTRICT_OrgApacheLuceneSearchGroupingTermAllGroupsCollector
#define INCLUDE_ALL_OrgApacheLuceneSearchGroupingTermAllGroupsCollector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchGroupingTermAllGroupsCollector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchGroupingTermAllGroupsCollector

#if !defined (OrgApacheLuceneSearchGroupingTermAllGroupsCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchGroupingTermAllGroupsCollector || defined(INCLUDE_OrgApacheLuceneSearchGroupingTermAllGroupsCollector))
#define OrgApacheLuceneSearchGroupingTermAllGroupsCollector_

#define RESTRICT_OrgApacheLuceneSearchGroupingAbstractAllGroupsCollector 1
#define INCLUDE_OrgApacheLuceneSearchGroupingAbstractAllGroupsCollector 1
#include "org/apache/lucene/search/grouping/AbstractAllGroupsCollector.h"

@class OrgApacheLuceneIndexIndexReader;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneSearchGroupingTermAllGroupsCollector : OrgApacheLuceneSearchGroupingAbstractAllGroupsCollector

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)groupField;

- (instancetype)initWithNSString:(NSString *)groupField
                         withInt:(jint)initialSize;

- (void)collectWithInt:(jint)doc;

- (id<JavaUtilCollection>)getGroups;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingTermAllGroupsCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingTermAllGroupsCollector_initWithNSString_withInt_(OrgApacheLuceneSearchGroupingTermAllGroupsCollector *self, NSString *groupField, jint initialSize);

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingTermAllGroupsCollector *new_OrgApacheLuceneSearchGroupingTermAllGroupsCollector_initWithNSString_withInt_(NSString *groupField, jint initialSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingTermAllGroupsCollector *create_OrgApacheLuceneSearchGroupingTermAllGroupsCollector_initWithNSString_withInt_(NSString *groupField, jint initialSize);

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingTermAllGroupsCollector_initWithNSString_(OrgApacheLuceneSearchGroupingTermAllGroupsCollector *self, NSString *groupField);

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingTermAllGroupsCollector *new_OrgApacheLuceneSearchGroupingTermAllGroupsCollector_initWithNSString_(NSString *groupField) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingTermAllGroupsCollector *create_OrgApacheLuceneSearchGroupingTermAllGroupsCollector_initWithNSString_(NSString *groupField);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingTermAllGroupsCollector)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchGroupingTermAllGroupsCollector")
