//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/IndexFormatTooOldException.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/CorruptIndexException.h"
#include "org/apache/lucene/index/IndexFormatTooOldException.h"
#include "org/apache/lucene/store/DataInput.h"

@implementation OrgApacheLuceneIndexIndexFormatTooOldException

- (instancetype)initWithNSString:(NSString *)resourceDesc
                    withNSString:(NSString *)version_ {
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(self, resourceDesc, version_);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                         withNSString:(NSString *)version_ {
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(self, inArg, version_);
  return self;
}

- (instancetype)initWithNSString:(NSString *)resourceDesc
                         withInt:(jint)version_
                         withInt:(jint)minVersion
                         withInt:(jint)maxVersion {
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(self, resourceDesc, version_, minVersion, maxVersion);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                              withInt:(jint)version_
                                              withInt:(jint)minVersion
                                              withInt:(jint)maxVersion {
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(self, inArg, version_, minVersion, maxVersion);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:withNSString:);
  methods[1].selector = @selector(initWithOrgApacheLuceneStoreDataInput:withNSString:);
  methods[2].selector = @selector(initWithNSString:withInt:withInt:withInt:);
  methods[3].selector = @selector(initWithOrgApacheLuceneStoreDataInput:withInt:withInt:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;LNSString;", "LOrgApacheLuceneStoreDataInput;LNSString;", "LNSString;III", "LOrgApacheLuceneStoreDataInput;III" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexIndexFormatTooOldException = { "IndexFormatTooOldException", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x1, 4, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexIndexFormatTooOldException;
}

@end

void OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(OrgApacheLuceneIndexIndexFormatTooOldException *self, NSString *resourceDesc, NSString *version_) {
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_(self, JreStrcat("$$$$$", @"Format version is not supported (resource: ", resourceDesc, @"): ", version_, @". This version of Lucene only supports indexes created with release 1.9 and later."));
  JreAssert(resourceDesc != nil, @"org/apache/lucene/index/IndexFormatTooOldException.java:32 condition failed: assert resourceDesc != null;");
}

OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(NSString *resourceDesc, NSString *version_) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexIndexFormatTooOldException, initWithNSString_withNSString_, resourceDesc, version_)
}

OrgApacheLuceneIndexIndexFormatTooOldException *create_OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(NSString *resourceDesc, NSString *version_) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexIndexFormatTooOldException, initWithNSString_withNSString_, resourceDesc, version_)
}

void OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(OrgApacheLuceneIndexIndexFormatTooOldException *self, OrgApacheLuceneStoreDataInput *inArg, NSString *version_) {
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(self, [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) description], version_);
}

OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(OrgApacheLuceneStoreDataInput *inArg, NSString *version_) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexIndexFormatTooOldException, initWithOrgApacheLuceneStoreDataInput_withNSString_, inArg, version_)
}

OrgApacheLuceneIndexIndexFormatTooOldException *create_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(OrgApacheLuceneStoreDataInput *inArg, NSString *version_) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexIndexFormatTooOldException, initWithOrgApacheLuceneStoreDataInput_withNSString_, inArg, version_)
}

void OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(OrgApacheLuceneIndexIndexFormatTooOldException *self, NSString *resourceDesc, jint version_, jint minVersion, jint maxVersion) {
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_(self, JreStrcat("$$$I$I$I$", @"Format version is not supported (resource: ", resourceDesc, @"): ", version_, @" (needs to be between ", minVersion, @" and ", maxVersion, @"). This version of Lucene only supports indexes created with release 1.9 and later."));
  JreAssert(resourceDesc != nil, @"org/apache/lucene/index/IndexFormatTooOldException.java:45 condition failed: assert resourceDesc != null;");
}

OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(NSString *resourceDesc, jint version_, jint minVersion, jint maxVersion) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexIndexFormatTooOldException, initWithNSString_withInt_withInt_withInt_, resourceDesc, version_, minVersion, maxVersion)
}

OrgApacheLuceneIndexIndexFormatTooOldException *create_OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(NSString *resourceDesc, jint version_, jint minVersion, jint maxVersion) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexIndexFormatTooOldException, initWithNSString_withInt_withInt_withInt_, resourceDesc, version_, minVersion, maxVersion)
}

void OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(OrgApacheLuceneIndexIndexFormatTooOldException *self, OrgApacheLuceneStoreDataInput *inArg, jint version_, jint minVersion, jint maxVersion) {
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(self, [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) description], version_, minVersion, maxVersion);
}

OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint version_, jint minVersion, jint maxVersion) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexIndexFormatTooOldException, initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_, inArg, version_, minVersion, maxVersion)
}

OrgApacheLuceneIndexIndexFormatTooOldException *create_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint version_, jint minVersion, jint maxVersion) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexIndexFormatTooOldException, initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_, inArg, version_, minVersion, maxVersion)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexIndexFormatTooOldException)
