//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/SegmentCoreReaders.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"
#include "org/apache/lucene/index/CompoundFileReader.h"
#include "org/apache/lucene/index/CorruptIndexException.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/FieldsReader.h"
#include "org/apache/lucene/index/IndexFileNames.h"
#include "org/apache/lucene/index/SegmentCoreReaders.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentReader.h"
#include "org/apache/lucene/index/TermInfosReader.h"
#include "org/apache/lucene/index/TermVectorsReader.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/util/IOUtils.h"

@interface OrgApacheLuceneIndexSegmentCoreReaders () {
 @public
  JavaUtilConcurrentAtomicAtomicInteger *ref_;
  OrgApacheLuceneIndexSegmentReader *owner_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentCoreReaders, ref_, JavaUtilConcurrentAtomicAtomicInteger *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentCoreReaders, owner_, OrgApacheLuceneIndexSegmentReader *)

@implementation OrgApacheLuceneIndexSegmentCoreReaders

- (instancetype)initWithOrgApacheLuceneIndexSegmentReader:(OrgApacheLuceneIndexSegmentReader *)owner
                        withOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                      withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                                                  withInt:(jint)readBufferSize
                                                  withInt:(jint)termsIndexDivisor {
  OrgApacheLuceneIndexSegmentCoreReaders_initWithOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withInt_withInt_(self, owner, dir, si, readBufferSize, termsIndexDivisor);
  return self;
}

- (OrgApacheLuceneIndexTermVectorsReader *)getTermVectorsReaderOrig {
  @synchronized(self) {
    return JreRetainedLocalValue(termVectorsReaderOrig_);
  }
}

- (OrgApacheLuceneIndexFieldsReader *)getFieldsReaderOrig {
  @synchronized(self) {
    return JreRetainedLocalValue(fieldsReaderOrig_);
  }
}

- (void)incRef {
  @synchronized(self) {
    [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(ref_)) incrementAndGet];
  }
}

- (OrgApacheLuceneStoreDirectory *)getCFSReader {
  @synchronized(self) {
    return JreRetainedLocalValue(cfsReader_);
  }
}

- (OrgApacheLuceneIndexTermInfosReader *)getTermsReader {
  @synchronized(self) {
    if (tis_ != nil) {
      return JreRetainedLocalValue(tis_);
    }
    else {
      return JreRetainedLocalValue(tisNoIndex_);
    }
  }
}

- (jboolean)termsIndexIsLoaded {
  @synchronized(self) {
    return tis_ != nil;
  }
}

- (void)loadTermsIndexWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                                                  withInt:(jint)termsIndexDivisor {
  @synchronized(self) {
    if (tis_ == nil) {
      OrgApacheLuceneStoreDirectory *dir0;
      if ([((OrgApacheLuceneIndexSegmentInfo *) nil_chk(si)) getUseCompoundFile]) {
        if (cfsReader_ == nil) {
          JreStrongAssignAndConsume(&cfsReader_, new_OrgApacheLuceneIndexCompoundFileReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withInt_(dir_, OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_(segment_, OrgApacheLuceneIndexIndexFileNames_COMPOUND_FILE_EXTENSION), readBufferSize_));
        }
        dir0 = cfsReader_;
      }
      else {
        dir0 = dir_;
      }
      JreStrongAssignAndConsume(&tis_, new_OrgApacheLuceneIndexTermInfosReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_withInt_(dir0, segment_, fieldInfos_, readBufferSize_, termsIndexDivisor));
    }
  }
}

- (void)decRef {
  @synchronized(self) {
    if ([((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(ref_)) decrementAndGet] == 0) {
      OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ tis_, tisNoIndex_, freqStream_, proxStream_, termVectorsReaderOrig_, fieldsReaderOrig_, cfsReader_, storeCFSReader_ } count:8 type:JavaIoCloseable_class_()]);
      JreStrongAssign(&tis_, nil);
      if (owner_ != nil) {
        [owner_ notifyReaderFinishedListeners];
      }
    }
  }
}

- (void)openDocStoresWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si {
  @synchronized(self) {
    JreAssert([((NSString *) nil_chk(((OrgApacheLuceneIndexSegmentInfo *) nil_chk(si))->name_)) isEqual:segment_], @"org/apache/lucene/index/SegmentCoreReaders.java:175 condition failed: assert si.name.equals(segment);");
    if (fieldsReaderOrig_ == nil) {
      OrgApacheLuceneStoreDirectory *storeDir;
      if ([si getDocStoreOffset] != -1) {
        if ([si getDocStoreIsCompoundFile]) {
          JreAssert(storeCFSReader_ == nil, @"org/apache/lucene/index/SegmentCoreReaders.java:181 condition failed: assert storeCFSReader == null;");
          JreStrongAssignAndConsume(&storeCFSReader_, new_OrgApacheLuceneIndexCompoundFileReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withInt_(dir_, OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_([si getDocStoreSegment], OrgApacheLuceneIndexIndexFileNames_COMPOUND_FILE_STORE_EXTENSION), readBufferSize_));
          storeDir = storeCFSReader_;
          JreAssert(storeDir != nil, @"org/apache/lucene/index/SegmentCoreReaders.java:186 condition failed: assert storeDir != null;");
        }
        else {
          storeDir = dir_;
          JreAssert(storeDir != nil, @"org/apache/lucene/index/SegmentCoreReaders.java:189 condition failed: assert storeDir != null;");
        }
      }
      else if ([si getUseCompoundFile]) {
        if (cfsReader_ == nil) {
          JreStrongAssignAndConsume(&cfsReader_, new_OrgApacheLuceneIndexCompoundFileReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withInt_(dir_, OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_(segment_, OrgApacheLuceneIndexIndexFileNames_COMPOUND_FILE_EXTENSION), readBufferSize_));
        }
        storeDir = cfsReader_;
        JreAssert(storeDir != nil, @"org/apache/lucene/index/SegmentCoreReaders.java:199 condition failed: assert storeDir != null;");
      }
      else {
        storeDir = dir_;
        JreAssert(storeDir != nil, @"org/apache/lucene/index/SegmentCoreReaders.java:202 condition failed: assert storeDir != null;");
      }
      NSString *storesSegment;
      if ([si getDocStoreOffset] != -1) {
        storesSegment = [si getDocStoreSegment];
      }
      else {
        storesSegment = segment_;
      }
      JreStrongAssignAndConsume(&fieldsReaderOrig_, new_OrgApacheLuceneIndexFieldsReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_withInt_withInt_(storeDir, storesSegment, fieldInfos_, readBufferSize_, [si getDocStoreOffset], si->docCount_));
      if ([si getDocStoreOffset] == -1 && [((OrgApacheLuceneIndexFieldsReader *) nil_chk(fieldsReaderOrig_)) size] != si->docCount_) {
        @throw create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_(JreStrcat("$$$I$I", @"doc counts differ for segment ", segment_, @": fieldsReader shows ", [((OrgApacheLuceneIndexFieldsReader *) nil_chk(fieldsReaderOrig_)) size], @" but segmentInfo shows ", si->docCount_));
      }
      if ([si getHasVectors]) {
        JreStrongAssignAndConsume(&termVectorsReaderOrig_, new_OrgApacheLuceneIndexTermVectorsReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_withInt_withInt_(storeDir, storesSegment, fieldInfos_, readBufferSize_, [si getDocStoreOffset], si->docCount_));
      }
    }
  }
}

- (NSString *)description {
  return JreStrcat("$@C", @"SegmentCoreReader(owner=", owner_, ')');
}

- (void)dealloc {
  RELEASE_(ref_);
  RELEASE_(segment_);
  RELEASE_(fieldInfos_);
  RELEASE_(freqStream_);
  RELEASE_(proxStream_);
  RELEASE_(tisNoIndex_);
  RELEASE_(dir_);
  RELEASE_(cfsDir_);
  RELEASE_(owner_);
  RELEASE_(tis_);
  RELEASE_(fieldsReaderOrig_);
  RELEASE_(termVectorsReaderOrig_);
  RELEASE_(cfsReader_);
  RELEASE_(storeCFSReader_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermVectorsReader;", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexFieldsReader;", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreDirectory;", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermInfosReader;", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x20, 2, 3, 1, -1, -1, -1 },
    { NULL, "V", 0x20, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x20, 4, 5, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexSegmentReader:withOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexSegmentInfo:withInt:withInt:);
  methods[1].selector = @selector(getTermVectorsReaderOrig);
  methods[2].selector = @selector(getFieldsReaderOrig);
  methods[3].selector = @selector(incRef);
  methods[4].selector = @selector(getCFSReader);
  methods[5].selector = @selector(getTermsReader);
  methods[6].selector = @selector(termsIndexIsLoaded);
  methods[7].selector = @selector(loadTermsIndexWithOrgApacheLuceneIndexSegmentInfo:withInt:);
  methods[8].selector = @selector(decRef);
  methods[9].selector = @selector(openDocStoresWithOrgApacheLuceneIndexSegmentInfo:);
  methods[10].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ref_", "LJavaUtilConcurrentAtomicAtomicInteger;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "segment_", "LNSString;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "fieldInfos_", "LOrgApacheLuceneIndexFieldInfos;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "freqStream_", "LOrgApacheLuceneStoreIndexInput;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "proxStream_", "LOrgApacheLuceneStoreIndexInput;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "tisNoIndex_", "LOrgApacheLuceneIndexTermInfosReader;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "dir_", "LOrgApacheLuceneStoreDirectory;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "cfsDir_", "LOrgApacheLuceneStoreDirectory;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "readBufferSize_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "termsIndexDivisor_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "owner_", "LOrgApacheLuceneIndexSegmentReader;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "tis_", "LOrgApacheLuceneIndexTermInfosReader;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "fieldsReaderOrig_", "LOrgApacheLuceneIndexFieldsReader;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "termVectorsReaderOrig_", "LOrgApacheLuceneIndexTermVectorsReader;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "cfsReader_", "LOrgApacheLuceneIndexCompoundFileReader;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "storeCFSReader_", "LOrgApacheLuceneIndexCompoundFileReader;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexSegmentReader;LOrgApacheLuceneStoreDirectory;LOrgApacheLuceneIndexSegmentInfo;II", "LJavaIoIOException;", "loadTermsIndex", "LOrgApacheLuceneIndexSegmentInfo;I", "openDocStores", "LOrgApacheLuceneIndexSegmentInfo;", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSegmentCoreReaders = { "SegmentCoreReaders", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 11, 16, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexSegmentCoreReaders;
}

@end

void OrgApacheLuceneIndexSegmentCoreReaders_initWithOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withInt_withInt_(OrgApacheLuceneIndexSegmentCoreReaders *self, OrgApacheLuceneIndexSegmentReader *owner, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneIndexSegmentInfo *si, jint readBufferSize, jint termsIndexDivisor) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->ref_, new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(1));
  JreStrongAssign(&self->segment_, ((OrgApacheLuceneIndexSegmentInfo *) nil_chk(si))->name_);
  self->readBufferSize_ = readBufferSize;
  JreStrongAssign(&self->dir_, dir);
  jboolean success = false;
  @try {
    OrgApacheLuceneStoreDirectory *dir0 = dir;
    if ([si getUseCompoundFile]) {
      JreStrongAssignAndConsume(&self->cfsReader_, new_OrgApacheLuceneIndexCompoundFileReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withInt_(dir, OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_(self->segment_, OrgApacheLuceneIndexIndexFileNames_COMPOUND_FILE_EXTENSION), readBufferSize));
      dir0 = self->cfsReader_;
    }
    JreStrongAssign(&self->cfsDir_, dir0);
    JreStrongAssignAndConsume(&self->fieldInfos_, new_OrgApacheLuceneIndexFieldInfos_initWithOrgApacheLuceneStoreDirectory_withNSString_(self->cfsDir_, OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_(self->segment_, OrgApacheLuceneIndexIndexFileNames_FIELD_INFOS_EXTENSION)));
    self->termsIndexDivisor_ = termsIndexDivisor;
    OrgApacheLuceneIndexTermInfosReader *reader = create_OrgApacheLuceneIndexTermInfosReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_withInt_(self->cfsDir_, self->segment_, self->fieldInfos_, readBufferSize, termsIndexDivisor);
    if (termsIndexDivisor == -1) {
      JreStrongAssign(&self->tisNoIndex_, reader);
    }
    else {
      JreStrongAssign(&self->tis_, reader);
      JreStrongAssign(&self->tisNoIndex_, nil);
    }
    JreStrongAssign(&self->freqStream_, [((OrgApacheLuceneStoreDirectory *) nil_chk(self->cfsDir_)) openInputWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_(self->segment_, OrgApacheLuceneIndexIndexFileNames_FREQ_EXTENSION) withInt:readBufferSize]);
    if ([self->fieldInfos_ hasProx]) {
      JreStrongAssign(&self->proxStream_, [self->cfsDir_ openInputWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_(self->segment_, OrgApacheLuceneIndexIndexFileNames_PROX_EXTENSION) withInt:readBufferSize]);
    }
    else {
      JreStrongAssign(&self->proxStream_, nil);
    }
    success = true;
  }
  @finally {
    if (!success) {
      [self decRef];
    }
  }
  JreStrongAssign(&self->owner_, owner);
}

OrgApacheLuceneIndexSegmentCoreReaders *new_OrgApacheLuceneIndexSegmentCoreReaders_initWithOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withInt_withInt_(OrgApacheLuceneIndexSegmentReader *owner, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneIndexSegmentInfo *si, jint readBufferSize, jint termsIndexDivisor) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexSegmentCoreReaders, initWithOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withInt_withInt_, owner, dir, si, readBufferSize, termsIndexDivisor)
}

OrgApacheLuceneIndexSegmentCoreReaders *create_OrgApacheLuceneIndexSegmentCoreReaders_initWithOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withInt_withInt_(OrgApacheLuceneIndexSegmentReader *owner, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneIndexSegmentInfo *si, jint readBufferSize, jint termsIndexDivisor) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexSegmentCoreReaders, initWithOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withInt_withInt_, owner, dir, si, readBufferSize, termsIndexDivisor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSegmentCoreReaders)
