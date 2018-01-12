//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/IndexFormatTooOldException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexIndexFormatTooOldException")
#ifdef RESTRICT_OrgApacheLuceneIndexIndexFormatTooOldException
#define INCLUDE_ALL_OrgApacheLuceneIndexIndexFormatTooOldException 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexIndexFormatTooOldException 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexIndexFormatTooOldException

#if !defined (OrgApacheLuceneIndexIndexFormatTooOldException_) && (INCLUDE_ALL_OrgApacheLuceneIndexIndexFormatTooOldException || defined(INCLUDE_OrgApacheLuceneIndexIndexFormatTooOldException))
#define OrgApacheLuceneIndexIndexFormatTooOldException_

#define RESTRICT_OrgApacheLuceneIndexCorruptIndexException 1
#define INCLUDE_OrgApacheLuceneIndexCorruptIndexException 1
#include "org/apache/lucene/index/CorruptIndexException.h"

@class OrgApacheLuceneStoreDataInput;

@interface OrgApacheLuceneIndexIndexFormatTooOldException : OrgApacheLuceneIndexCorruptIndexException

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                              withInt:(jint)version_
                                              withInt:(jint)minVersion
                                              withInt:(jint)maxVersion;

- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                         withNSString:(NSString *)version_;

- (instancetype)initWithNSString:(NSString *)resourceDesc
                         withInt:(jint)version_
                         withInt:(jint)minVersion
                         withInt:(jint)maxVersion;

- (instancetype)initWithNSString:(NSString *)resourceDesc
                    withNSString:(NSString *)version_;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexIndexFormatTooOldException)

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(OrgApacheLuceneIndexIndexFormatTooOldException *self, NSString *resourceDesc, NSString *version_);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(NSString *resourceDesc, NSString *version_) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexFormatTooOldException *create_OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(NSString *resourceDesc, NSString *version_);

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(OrgApacheLuceneIndexIndexFormatTooOldException *self, OrgApacheLuceneStoreDataInput *inArg, NSString *version_);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(OrgApacheLuceneStoreDataInput *inArg, NSString *version_) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexFormatTooOldException *create_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(OrgApacheLuceneStoreDataInput *inArg, NSString *version_);

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(OrgApacheLuceneIndexIndexFormatTooOldException *self, NSString *resourceDesc, jint version_, jint minVersion, jint maxVersion);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(NSString *resourceDesc, jint version_, jint minVersion, jint maxVersion) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexFormatTooOldException *create_OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(NSString *resourceDesc, jint version_, jint minVersion, jint maxVersion);

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(OrgApacheLuceneIndexIndexFormatTooOldException *self, OrgApacheLuceneStoreDataInput *inArg, jint version_, jint minVersion, jint maxVersion);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint version_, jint minVersion, jint maxVersion) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexFormatTooOldException *create_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint version_, jint minVersion, jint maxVersion);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexFormatTooOldException)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexIndexFormatTooOldException")
