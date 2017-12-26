//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/FilterIndexReader.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Collection.h"
#include "java/util/Map.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "org/apache/lucene/document/Document.h"
#include "org/apache/lucene/document/FieldSelector.h"
#include "org/apache/lucene/index/FilterIndexReader.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/TermDocs.h"
#include "org/apache/lucene/index/TermEnum.h"
#include "org/apache/lucene/index/TermFreqVector.h"
#include "org/apache/lucene/index/TermPositions.h"
#include "org/apache/lucene/index/TermVectorMapper.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/util/MapBackedSet.h"

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneIndexFilterIndexReader__Annotations$0(void);

@implementation OrgApacheLuceneIndexFilterIndexReader

- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)inArg {
  OrgApacheLuceneIndexFilterIndexReader_initWithOrgApacheLuceneIndexIndexReader_(self, inArg);
  return self;
}

- (OrgApacheLuceneStoreDirectory *)directory {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) directory];
}

- (IOSObjectArray *)getTermFreqVectorsWithInt:(jint)docNumber {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) getTermFreqVectorsWithInt:docNumber];
}

- (id<OrgApacheLuceneIndexTermFreqVector>)getTermFreqVectorWithInt:(jint)docNumber
                                                      withNSString:(NSString *)field {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) getTermFreqVectorWithInt:docNumber withNSString:field];
}

- (void)getTermFreqVectorWithInt:(jint)docNumber
                    withNSString:(NSString *)field
withOrgApacheLuceneIndexTermVectorMapper:(OrgApacheLuceneIndexTermVectorMapper *)mapper {
  [self ensureOpen];
  [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) getTermFreqVectorWithInt:docNumber withNSString:field withOrgApacheLuceneIndexTermVectorMapper:mapper];
}

- (void)getTermFreqVectorWithInt:(jint)docNumber
withOrgApacheLuceneIndexTermVectorMapper:(OrgApacheLuceneIndexTermVectorMapper *)mapper {
  [self ensureOpen];
  [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) getTermFreqVectorWithInt:docNumber withOrgApacheLuceneIndexTermVectorMapper:mapper];
}

- (jint)numDocs {
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) numDocs];
}

- (jint)maxDoc {
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) maxDoc];
}

- (OrgApacheLuceneDocumentDocument *)documentWithInt:(jint)n
            withOrgApacheLuceneDocumentFieldSelector:(id<OrgApacheLuceneDocumentFieldSelector>)fieldSelector {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) documentWithInt:n withOrgApacheLuceneDocumentFieldSelector:fieldSelector];
}

- (jboolean)isDeletedWithInt:(jint)n {
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) isDeletedWithInt:n];
}

- (jboolean)hasDeletions {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) hasDeletions];
}

- (void)doUndeleteAll {
  [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) undeleteAll];
}

- (jboolean)hasNormsWithNSString:(NSString *)field {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) hasNormsWithNSString:field];
}

- (IOSByteArray *)normsWithNSString:(NSString *)f {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) normsWithNSString:f];
}

- (void)normsWithNSString:(NSString *)f
            withByteArray:(IOSByteArray *)bytes
                  withInt:(jint)offset {
  [self ensureOpen];
  [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) normsWithNSString:f withByteArray:bytes withInt:offset];
}

- (void)doSetNormWithInt:(jint)d
            withNSString:(NSString *)f
                withByte:(jbyte)b {
  [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) setNormWithInt:d withNSString:f withByte:b];
}

- (OrgApacheLuceneIndexTermEnum *)terms {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) terms];
}

- (OrgApacheLuceneIndexTermEnum *)termsWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)t {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) termsWithOrgApacheLuceneIndexTerm:t];
}

- (jint)docFreqWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)t {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) docFreqWithOrgApacheLuceneIndexTerm:t];
}

- (id<OrgApacheLuceneIndexTermDocs>)termDocs {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) termDocs];
}

- (id<OrgApacheLuceneIndexTermDocs>)termDocsWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) termDocsWithOrgApacheLuceneIndexTerm:term];
}

- (id<OrgApacheLuceneIndexTermPositions>)termPositions {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) termPositions];
}

- (void)doDeleteWithInt:(jint)n {
  [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) deleteDocumentWithInt:n];
}

- (void)doCommitWithJavaUtilMap:(id<JavaUtilMap>)commitUserData {
  [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) commitWithJavaUtilMap:commitUserData];
}

- (void)doClose {
  [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) close];
}

- (id<JavaUtilCollection>)getFieldNamesWithOrgApacheLuceneIndexIndexReader_FieldOption:(OrgApacheLuceneIndexIndexReader_FieldOption *)fieldNames {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) getFieldNamesWithOrgApacheLuceneIndexIndexReader_FieldOption:fieldNames];
}

- (jlong)getVersion {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) getVersion];
}

- (jboolean)isCurrent {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) isCurrent];
}

- (jboolean)isOptimized {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) isOptimized];
}

- (IOSObjectArray *)getSequentialSubReaders {
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) getSequentialSubReaders];
}

- (id<JavaUtilMap>)getCommitUserData {
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) getCommitUserData];
}

- (id)getCoreCacheKey {
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) getCoreCacheKey];
}

- (id)getDeletesCacheKey {
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) getDeletesCacheKey];
}

- (NSString *)description {
  JavaLangStringBuilder *buffer = new_JavaLangStringBuilder_initWithNSString_(@"FilterReader(");
  (void) [buffer appendWithId:in_];
  (void) [buffer appendWithChar:')'];
  return [buffer description];
}

- (void)addReaderFinishedListenerWithOrgApacheLuceneIndexIndexReader_ReaderFinishedListener:(id<OrgApacheLuceneIndexIndexReader_ReaderFinishedListener>)listener {
  [super addReaderFinishedListenerWithOrgApacheLuceneIndexIndexReader_ReaderFinishedListener:listener];
  [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) addReaderFinishedListenerWithOrgApacheLuceneIndexIndexReader_ReaderFinishedListener:listener];
}

- (void)removeReaderFinishedListenerWithOrgApacheLuceneIndexIndexReader_ReaderFinishedListener:(id<OrgApacheLuceneIndexIndexReader_ReaderFinishedListener>)listener {
  [super removeReaderFinishedListenerWithOrgApacheLuceneIndexIndexReader_ReaderFinishedListener:listener];
  [((OrgApacheLuceneIndexIndexReader *) nil_chk(in_)) removeReaderFinishedListenerWithOrgApacheLuceneIndexIndexReader_ReaderFinishedListener:listener];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreDirectory;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LOrgApacheLuceneIndexTermFreqVector;", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermFreqVector;", 0x1, 4, 5, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 6, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 7, 3, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneDocumentDocument;", 0x1, 8, 9, 10, -1, -1, -1 },
    { NULL, "Z", 0x1, 11, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, 10, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 13, 3, -1, -1, -1 },
    { NULL, "[B", 0x1, 14, 13, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 15, 3, -1, -1, -1 },
    { NULL, "V", 0x4, 16, 17, 10, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermEnum;", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermEnum;", 0x1, 18, 19, 3, -1, -1, -1 },
    { NULL, "I", 0x1, 20, 19, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermDocs;", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermDocs;", 0x1, 21, 19, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermPositions;", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x4, 22, 2, 10, -1, -1, -1 },
    { NULL, "V", 0x4, 23, 24, 3, 25, -1, -1 },
    { NULL, "V", 0x4, -1, -1, 3, -1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x1, 26, 27, -1, 28, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 10, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, 29, -1 },
    { NULL, "[LOrgApacheLuceneIndexIndexReader;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x1, -1, -1, -1, 30, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 31, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 32, 33, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 34, 33, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexIndexReader:);
  methods[1].selector = @selector(directory);
  methods[2].selector = @selector(getTermFreqVectorsWithInt:);
  methods[3].selector = @selector(getTermFreqVectorWithInt:withNSString:);
  methods[4].selector = @selector(getTermFreqVectorWithInt:withNSString:withOrgApacheLuceneIndexTermVectorMapper:);
  methods[5].selector = @selector(getTermFreqVectorWithInt:withOrgApacheLuceneIndexTermVectorMapper:);
  methods[6].selector = @selector(numDocs);
  methods[7].selector = @selector(maxDoc);
  methods[8].selector = @selector(documentWithInt:withOrgApacheLuceneDocumentFieldSelector:);
  methods[9].selector = @selector(isDeletedWithInt:);
  methods[10].selector = @selector(hasDeletions);
  methods[11].selector = @selector(doUndeleteAll);
  methods[12].selector = @selector(hasNormsWithNSString:);
  methods[13].selector = @selector(normsWithNSString:);
  methods[14].selector = @selector(normsWithNSString:withByteArray:withInt:);
  methods[15].selector = @selector(doSetNormWithInt:withNSString:withByte:);
  methods[16].selector = @selector(terms);
  methods[17].selector = @selector(termsWithOrgApacheLuceneIndexTerm:);
  methods[18].selector = @selector(docFreqWithOrgApacheLuceneIndexTerm:);
  methods[19].selector = @selector(termDocs);
  methods[20].selector = @selector(termDocsWithOrgApacheLuceneIndexTerm:);
  methods[21].selector = @selector(termPositions);
  methods[22].selector = @selector(doDeleteWithInt:);
  methods[23].selector = @selector(doCommitWithJavaUtilMap:);
  methods[24].selector = @selector(doClose);
  methods[25].selector = @selector(getFieldNamesWithOrgApacheLuceneIndexIndexReader_FieldOption:);
  methods[26].selector = @selector(getVersion);
  methods[27].selector = @selector(isCurrent);
  methods[28].selector = @selector(isOptimized);
  methods[29].selector = @selector(getSequentialSubReaders);
  methods[30].selector = @selector(getCommitUserData);
  methods[31].selector = @selector(getCoreCacheKey);
  methods[32].selector = @selector(getDeletesCacheKey);
  methods[33].selector = @selector(description);
  methods[34].selector = @selector(addReaderFinishedListenerWithOrgApacheLuceneIndexIndexReader_ReaderFinishedListener:);
  methods[35].selector = @selector(removeReaderFinishedListenerWithOrgApacheLuceneIndexIndexReader_ReaderFinishedListener:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "in_", "LOrgApacheLuceneIndexIndexReader;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexIndexReader;", "getTermFreqVectors", "I", "LJavaIoIOException;", "getTermFreqVector", "ILNSString;", "ILNSString;LOrgApacheLuceneIndexTermVectorMapper;", "ILOrgApacheLuceneIndexTermVectorMapper;", "document", "ILOrgApacheLuceneDocumentFieldSelector;", "LOrgApacheLuceneIndexCorruptIndexException;LJavaIoIOException;", "isDeleted", "hasNorms", "LNSString;", "norms", "LNSString;[BI", "doSetNorm", "ILNSString;B", "terms", "LOrgApacheLuceneIndexTerm;", "docFreq", "termDocs", "doDelete", "doCommit", "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V", "getFieldNames", "LOrgApacheLuceneIndexIndexReader_FieldOption;", "(Lorg/apache/lucene/index/IndexReader$FieldOption;)Ljava/util/Collection<Ljava/lang/String;>;", (void *)&OrgApacheLuceneIndexFilterIndexReader__Annotations$0, "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;", "toString", "addReaderFinishedListener", "LOrgApacheLuceneIndexIndexReader_ReaderFinishedListener;", "removeReaderFinishedListener", "LOrgApacheLuceneIndexFilterIndexReader_FilterTermDocs;LOrgApacheLuceneIndexFilterIndexReader_FilterTermPositions;LOrgApacheLuceneIndexFilterIndexReader_FilterTermEnum;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFilterIndexReader = { "FilterIndexReader", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x1, 36, 1, -1, 35, -1, -1, -1 };
  return &_OrgApacheLuceneIndexFilterIndexReader;
}

@end

void OrgApacheLuceneIndexFilterIndexReader_initWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneIndexFilterIndexReader *self, OrgApacheLuceneIndexIndexReader *inArg) {
  OrgApacheLuceneIndexIndexReader_init(self);
  self->in_ = inArg;
  (void) JreVolatileStrongAssign(&self->readerFinishedListeners_, new_OrgApacheLuceneUtilMapBackedSet_initWithJavaUtilMap_(new_JavaUtilConcurrentConcurrentHashMap_init()));
}

OrgApacheLuceneIndexFilterIndexReader *new_OrgApacheLuceneIndexFilterIndexReader_initWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneIndexIndexReader *inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFilterIndexReader, initWithOrgApacheLuceneIndexIndexReader_, inArg)
}

OrgApacheLuceneIndexFilterIndexReader *create_OrgApacheLuceneIndexFilterIndexReader_initWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneIndexIndexReader *inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFilterIndexReader, initWithOrgApacheLuceneIndexIndexReader_, inArg)
}

IOSObjectArray *OrgApacheLuceneIndexFilterIndexReader__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFilterIndexReader)

@implementation OrgApacheLuceneIndexFilterIndexReader_FilterTermDocs

- (instancetype)initWithOrgApacheLuceneIndexTermDocs:(id<OrgApacheLuceneIndexTermDocs>)inArg {
  OrgApacheLuceneIndexFilterIndexReader_FilterTermDocs_initWithOrgApacheLuceneIndexTermDocs_(self, inArg);
  return self;
}

- (void)seekWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  [((id<OrgApacheLuceneIndexTermDocs>) nil_chk(in_)) seekWithOrgApacheLuceneIndexTerm:term];
}

- (void)seekWithOrgApacheLuceneIndexTermEnum:(OrgApacheLuceneIndexTermEnum *)termEnum {
  [((id<OrgApacheLuceneIndexTermDocs>) nil_chk(in_)) seekWithOrgApacheLuceneIndexTermEnum:termEnum];
}

- (jint)doc {
  return [((id<OrgApacheLuceneIndexTermDocs>) nil_chk(in_)) doc];
}

- (jint)freq {
  return [((id<OrgApacheLuceneIndexTermDocs>) nil_chk(in_)) freq];
}

- (jboolean)next {
  return [((id<OrgApacheLuceneIndexTermDocs>) nil_chk(in_)) next];
}

- (jint)readWithIntArray:(IOSIntArray *)docs
            withIntArray:(IOSIntArray *)freqs {
  return [((id<OrgApacheLuceneIndexTermDocs>) nil_chk(in_)) readWithIntArray:docs withIntArray:freqs];
}

- (jboolean)skipToWithInt:(jint)i {
  return [((id<OrgApacheLuceneIndexTermDocs>) nil_chk(in_)) skipToWithInt:i];
}

- (void)close {
  [((id<OrgApacheLuceneIndexTermDocs>) nil_chk(in_)) close];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 4, 3, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "I", 0x1, 5, 6, 3, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 8, 3, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexTermDocs:);
  methods[1].selector = @selector(seekWithOrgApacheLuceneIndexTerm:);
  methods[2].selector = @selector(seekWithOrgApacheLuceneIndexTermEnum:);
  methods[3].selector = @selector(doc);
  methods[4].selector = @selector(freq);
  methods[5].selector = @selector(next);
  methods[6].selector = @selector(readWithIntArray:withIntArray:);
  methods[7].selector = @selector(skipToWithInt:);
  methods[8].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "in_", "LOrgApacheLuceneIndexTermDocs;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexTermDocs;", "seek", "LOrgApacheLuceneIndexTerm;", "LJavaIoIOException;", "LOrgApacheLuceneIndexTermEnum;", "read", "[I[I", "skipTo", "I", "LOrgApacheLuceneIndexFilterIndexReader;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFilterIndexReader_FilterTermDocs = { "FilterTermDocs", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x9, 9, 1, 9, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexFilterIndexReader_FilterTermDocs;
}

@end

void OrgApacheLuceneIndexFilterIndexReader_FilterTermDocs_initWithOrgApacheLuceneIndexTermDocs_(OrgApacheLuceneIndexFilterIndexReader_FilterTermDocs *self, id<OrgApacheLuceneIndexTermDocs> inArg) {
  NSObject_init(self);
  self->in_ = inArg;
}

OrgApacheLuceneIndexFilterIndexReader_FilterTermDocs *new_OrgApacheLuceneIndexFilterIndexReader_FilterTermDocs_initWithOrgApacheLuceneIndexTermDocs_(id<OrgApacheLuceneIndexTermDocs> inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFilterIndexReader_FilterTermDocs, initWithOrgApacheLuceneIndexTermDocs_, inArg)
}

OrgApacheLuceneIndexFilterIndexReader_FilterTermDocs *create_OrgApacheLuceneIndexFilterIndexReader_FilterTermDocs_initWithOrgApacheLuceneIndexTermDocs_(id<OrgApacheLuceneIndexTermDocs> inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFilterIndexReader_FilterTermDocs, initWithOrgApacheLuceneIndexTermDocs_, inArg)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFilterIndexReader_FilterTermDocs)

@implementation OrgApacheLuceneIndexFilterIndexReader_FilterTermPositions

- (instancetype)initWithOrgApacheLuceneIndexTermPositions:(id<OrgApacheLuceneIndexTermPositions>)inArg {
  OrgApacheLuceneIndexFilterIndexReader_FilterTermPositions_initWithOrgApacheLuceneIndexTermPositions_(self, inArg);
  return self;
}

- (jint)nextPosition {
  return [((id<OrgApacheLuceneIndexTermPositions>) nil_chk(((id<OrgApacheLuceneIndexTermPositions>) cast_check(self->in_, OrgApacheLuceneIndexTermPositions_class_())))) nextPosition];
}

- (jint)getPayloadLength {
  return [((id<OrgApacheLuceneIndexTermPositions>) nil_chk(((id<OrgApacheLuceneIndexTermPositions>) cast_check(self->in_, OrgApacheLuceneIndexTermPositions_class_())))) getPayloadLength];
}

- (IOSByteArray *)getPayloadWithByteArray:(IOSByteArray *)data
                                  withInt:(jint)offset {
  return [((id<OrgApacheLuceneIndexTermPositions>) nil_chk(((id<OrgApacheLuceneIndexTermPositions>) cast_check(self->in_, OrgApacheLuceneIndexTermPositions_class_())))) getPayloadWithByteArray:data withInt:offset];
}

- (jboolean)isPayloadAvailable {
  return [((id<OrgApacheLuceneIndexTermPositions>) nil_chk(((id<OrgApacheLuceneIndexTermPositions>) cast_check(self->in_, OrgApacheLuceneIndexTermPositions_class_())))) isPayloadAvailable];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexTermPositions:);
  methods[1].selector = @selector(nextPosition);
  methods[2].selector = @selector(getPayloadLength);
  methods[3].selector = @selector(getPayloadWithByteArray:withInt:);
  methods[4].selector = @selector(isPayloadAvailable);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexTermPositions;", "LJavaIoIOException;", "getPayload", "[BI", "LOrgApacheLuceneIndexFilterIndexReader;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFilterIndexReader_FilterTermPositions = { "FilterTermPositions", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x9, 5, 0, 4, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexFilterIndexReader_FilterTermPositions;
}

@end

void OrgApacheLuceneIndexFilterIndexReader_FilterTermPositions_initWithOrgApacheLuceneIndexTermPositions_(OrgApacheLuceneIndexFilterIndexReader_FilterTermPositions *self, id<OrgApacheLuceneIndexTermPositions> inArg) {
  OrgApacheLuceneIndexFilterIndexReader_FilterTermDocs_initWithOrgApacheLuceneIndexTermDocs_(self, inArg);
}

OrgApacheLuceneIndexFilterIndexReader_FilterTermPositions *new_OrgApacheLuceneIndexFilterIndexReader_FilterTermPositions_initWithOrgApacheLuceneIndexTermPositions_(id<OrgApacheLuceneIndexTermPositions> inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFilterIndexReader_FilterTermPositions, initWithOrgApacheLuceneIndexTermPositions_, inArg)
}

OrgApacheLuceneIndexFilterIndexReader_FilterTermPositions *create_OrgApacheLuceneIndexFilterIndexReader_FilterTermPositions_initWithOrgApacheLuceneIndexTermPositions_(id<OrgApacheLuceneIndexTermPositions> inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFilterIndexReader_FilterTermPositions, initWithOrgApacheLuceneIndexTermPositions_, inArg)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFilterIndexReader_FilterTermPositions)

@implementation OrgApacheLuceneIndexFilterIndexReader_FilterTermEnum

- (instancetype)initWithOrgApacheLuceneIndexTermEnum:(OrgApacheLuceneIndexTermEnum *)inArg {
  OrgApacheLuceneIndexFilterIndexReader_FilterTermEnum_initWithOrgApacheLuceneIndexTermEnum_(self, inArg);
  return self;
}

- (jboolean)next {
  return [((OrgApacheLuceneIndexTermEnum *) nil_chk(in_)) next];
}

- (OrgApacheLuceneIndexTerm *)term {
  return [((OrgApacheLuceneIndexTermEnum *) nil_chk(in_)) term];
}

- (jint)docFreq {
  return [((OrgApacheLuceneIndexTermEnum *) nil_chk(in_)) docFreq];
}

- (void)close {
  [((OrgApacheLuceneIndexTermEnum *) nil_chk(in_)) close];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTerm;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexTermEnum:);
  methods[1].selector = @selector(next);
  methods[2].selector = @selector(term);
  methods[3].selector = @selector(docFreq);
  methods[4].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "in_", "LOrgApacheLuceneIndexTermEnum;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexTermEnum;", "LJavaIoIOException;", "LOrgApacheLuceneIndexFilterIndexReader;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFilterIndexReader_FilterTermEnum = { "FilterTermEnum", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x9, 5, 1, 2, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexFilterIndexReader_FilterTermEnum;
}

@end

void OrgApacheLuceneIndexFilterIndexReader_FilterTermEnum_initWithOrgApacheLuceneIndexTermEnum_(OrgApacheLuceneIndexFilterIndexReader_FilterTermEnum *self, OrgApacheLuceneIndexTermEnum *inArg) {
  OrgApacheLuceneIndexTermEnum_init(self);
  self->in_ = inArg;
}

OrgApacheLuceneIndexFilterIndexReader_FilterTermEnum *new_OrgApacheLuceneIndexFilterIndexReader_FilterTermEnum_initWithOrgApacheLuceneIndexTermEnum_(OrgApacheLuceneIndexTermEnum *inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFilterIndexReader_FilterTermEnum, initWithOrgApacheLuceneIndexTermEnum_, inArg)
}

OrgApacheLuceneIndexFilterIndexReader_FilterTermEnum *create_OrgApacheLuceneIndexFilterIndexReader_FilterTermEnum_initWithOrgApacheLuceneIndexTermEnum_(OrgApacheLuceneIndexTermEnum *inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFilterIndexReader_FilterTermEnum, initWithOrgApacheLuceneIndexTermEnum_, inArg)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFilterIndexReader_FilterTermEnum)
