//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/TermInfosWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermInfosWriter")
#ifdef RESTRICT_OrgApacheLuceneIndexTermInfosWriter
#define INCLUDE_ALL_OrgApacheLuceneIndexTermInfosWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexTermInfosWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexTermInfosWriter

#if !defined (OrgApacheLuceneIndexTermInfosWriter_) && (INCLUDE_ALL_OrgApacheLuceneIndexTermInfosWriter || defined(INCLUDE_OrgApacheLuceneIndexTermInfosWriter))
#define OrgApacheLuceneIndexTermInfosWriter_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class IOSByteArray;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneIndexTermInfo;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneUtilUnicodeUtil_UTF16Result;

@interface OrgApacheLuceneIndexTermInfosWriter : NSObject < JavaIoCloseable > {
 @public
  jint indexInterval_;
  jint skipInterval_;
  jint maxSkipLevels_;
  OrgApacheLuceneUtilUnicodeUtil_UTF16Result *utf16Result1_;
  OrgApacheLuceneUtilUnicodeUtil_UTF16Result *utf16Result2_;
}

#pragma mark Public

- (void)close;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                         withNSString:(NSString *)segment
                   withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fis
                                              withInt:(jint)interval;

- (void)addWithInt:(jint)fieldNumber
     withByteArray:(IOSByteArray *)termBytes
           withInt:(jint)termBytesLength
withOrgApacheLuceneIndexTermInfo:(OrgApacheLuceneIndexTermInfo *)ti;

- (void)addWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
       withOrgApacheLuceneIndexTermInfo:(OrgApacheLuceneIndexTermInfo *)ti;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTermInfosWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermInfosWriter, utf16Result1_, OrgApacheLuceneUtilUnicodeUtil_UTF16Result *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermInfosWriter, utf16Result2_, OrgApacheLuceneUtilUnicodeUtil_UTF16Result *)

inline jint OrgApacheLuceneIndexTermInfosWriter_get_FORMAT(void);
#define OrgApacheLuceneIndexTermInfosWriter_FORMAT -3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexTermInfosWriter, FORMAT, jint)

inline jint OrgApacheLuceneIndexTermInfosWriter_get_FORMAT_VERSION_UTF8_LENGTH_IN_BYTES(void);
#define OrgApacheLuceneIndexTermInfosWriter_FORMAT_VERSION_UTF8_LENGTH_IN_BYTES -4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexTermInfosWriter, FORMAT_VERSION_UTF8_LENGTH_IN_BYTES, jint)

inline jint OrgApacheLuceneIndexTermInfosWriter_get_FORMAT_CURRENT(void);
#define OrgApacheLuceneIndexTermInfosWriter_FORMAT_CURRENT -4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexTermInfosWriter, FORMAT_CURRENT, jint)

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermInfosWriter_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_(OrgApacheLuceneIndexTermInfosWriter *self, OrgApacheLuceneStoreDirectory *directory, NSString *segment, OrgApacheLuceneIndexFieldInfos *fis, jint interval);

FOUNDATION_EXPORT OrgApacheLuceneIndexTermInfosWriter *new_OrgApacheLuceneIndexTermInfosWriter_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_(OrgApacheLuceneStoreDirectory *directory, NSString *segment, OrgApacheLuceneIndexFieldInfos *fis, jint interval) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexTermInfosWriter *create_OrgApacheLuceneIndexTermInfosWriter_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_(OrgApacheLuceneStoreDirectory *directory, NSString *segment, OrgApacheLuceneIndexFieldInfos *fis, jint interval);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermInfosWriter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermInfosWriter")
