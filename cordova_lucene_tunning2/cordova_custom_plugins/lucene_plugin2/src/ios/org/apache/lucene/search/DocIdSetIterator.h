//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/DocIdSetIterator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchDocIdSetIterator")
#ifdef RESTRICT_OrgApacheLuceneSearchDocIdSetIterator
#define INCLUDE_ALL_OrgApacheLuceneSearchDocIdSetIterator 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchDocIdSetIterator 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchDocIdSetIterator

#if !defined (OrgApacheLuceneSearchDocIdSetIterator_) && (INCLUDE_ALL_OrgApacheLuceneSearchDocIdSetIterator || defined(INCLUDE_OrgApacheLuceneSearchDocIdSetIterator))
#define OrgApacheLuceneSearchDocIdSetIterator_

@interface OrgApacheLuceneSearchDocIdSetIterator : NSObject

#pragma mark Public

- (instancetype)init;

- (jint)advanceWithInt:(jint)target;

- (jint)docID;

- (jint)nextDoc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDocIdSetIterator)

inline jint OrgApacheLuceneSearchDocIdSetIterator_get_NO_MORE_DOCS(void);
#define OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS 2147483647
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchDocIdSetIterator, NO_MORE_DOCS, jint)

FOUNDATION_EXPORT void OrgApacheLuceneSearchDocIdSetIterator_init(OrgApacheLuceneSearchDocIdSetIterator *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchDocIdSetIterator)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchDocIdSetIterator")