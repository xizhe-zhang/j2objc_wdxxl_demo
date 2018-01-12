//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/NormsWriterPerThread.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexNormsWriterPerThread")
#ifdef RESTRICT_OrgApacheLuceneIndexNormsWriterPerThread
#define INCLUDE_ALL_OrgApacheLuceneIndexNormsWriterPerThread 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexNormsWriterPerThread 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexNormsWriterPerThread

#if !defined (OrgApacheLuceneIndexNormsWriterPerThread_) && (INCLUDE_ALL_OrgApacheLuceneIndexNormsWriterPerThread || defined(INCLUDE_OrgApacheLuceneIndexNormsWriterPerThread))
#define OrgApacheLuceneIndexNormsWriterPerThread_

#define RESTRICT_OrgApacheLuceneIndexInvertedDocEndConsumerPerThread 1
#define INCLUDE_OrgApacheLuceneIndexInvertedDocEndConsumerPerThread 1
#include "org/apache/lucene/index/InvertedDocEndConsumerPerThread.h"

@class OrgApacheLuceneIndexDocInverterPerField;
@class OrgApacheLuceneIndexDocInverterPerThread;
@class OrgApacheLuceneIndexDocumentsWriter_DocState;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexInvertedDocEndConsumerPerField;
@class OrgApacheLuceneIndexNormsWriter;

@interface OrgApacheLuceneIndexNormsWriterPerThread : OrgApacheLuceneIndexInvertedDocEndConsumerPerThread {
 @public
  OrgApacheLuceneIndexNormsWriter *normsWriter_;
  OrgApacheLuceneIndexDocumentsWriter_DocState *docState_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexDocInverterPerThread:(OrgApacheLuceneIndexDocInverterPerThread *)docInverterPerThread
                             withOrgApacheLuceneIndexNormsWriter:(OrgApacheLuceneIndexNormsWriter *)normsWriter;

#pragma mark Package-Private

- (void)abort;

- (OrgApacheLuceneIndexInvertedDocEndConsumerPerField *)addFieldWithOrgApacheLuceneIndexDocInverterPerField:(OrgApacheLuceneIndexDocInverterPerField *)docInverterPerField
                                                                          withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo;

- (void)finishDocument;

- (jboolean)freeRAM;

- (void)startDocument;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexNormsWriterPerThread)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexNormsWriterPerThread, normsWriter_, OrgApacheLuceneIndexNormsWriter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexNormsWriterPerThread, docState_, OrgApacheLuceneIndexDocumentsWriter_DocState *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexNormsWriterPerThread_initWithOrgApacheLuceneIndexDocInverterPerThread_withOrgApacheLuceneIndexNormsWriter_(OrgApacheLuceneIndexNormsWriterPerThread *self, OrgApacheLuceneIndexDocInverterPerThread *docInverterPerThread, OrgApacheLuceneIndexNormsWriter *normsWriter);

FOUNDATION_EXPORT OrgApacheLuceneIndexNormsWriterPerThread *new_OrgApacheLuceneIndexNormsWriterPerThread_initWithOrgApacheLuceneIndexDocInverterPerThread_withOrgApacheLuceneIndexNormsWriter_(OrgApacheLuceneIndexDocInverterPerThread *docInverterPerThread, OrgApacheLuceneIndexNormsWriter *normsWriter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexNormsWriterPerThread *create_OrgApacheLuceneIndexNormsWriterPerThread_initWithOrgApacheLuceneIndexDocInverterPerThread_withOrgApacheLuceneIndexNormsWriter_(OrgApacheLuceneIndexDocInverterPerThread *docInverterPerThread, OrgApacheLuceneIndexNormsWriter *normsWriter);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexNormsWriterPerThread)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexNormsWriterPerThread")