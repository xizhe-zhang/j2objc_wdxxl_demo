//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/WordlistLoader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisWordlistLoader")
#ifdef RESTRICT_OrgApacheLuceneAnalysisWordlistLoader
#define INCLUDE_ALL_OrgApacheLuceneAnalysisWordlistLoader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisWordlistLoader 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisWordlistLoader

#if !defined (OrgApacheLuceneAnalysisWordlistLoader_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisWordlistLoader || defined(INCLUDE_OrgApacheLuceneAnalysisWordlistLoader))
#define OrgApacheLuceneAnalysisWordlistLoader_

@class JavaIoReader;
@class OrgApacheLuceneAnalysisCharArrayMap;
@class OrgApacheLuceneAnalysisCharArraySet;
@class OrgApacheLuceneUtilVersion;

@interface OrgApacheLuceneAnalysisWordlistLoader : NSObject

#pragma mark Public

- (instancetype)init;

+ (OrgApacheLuceneAnalysisCharArraySet *)getSnowballWordSetWithJavaIoReader:(JavaIoReader *)reader
                                    withOrgApacheLuceneAnalysisCharArraySet:(OrgApacheLuceneAnalysisCharArraySet *)result;

+ (OrgApacheLuceneAnalysisCharArraySet *)getSnowballWordSetWithJavaIoReader:(JavaIoReader *)reader
                                             withOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion;

+ (OrgApacheLuceneAnalysisCharArrayMap *)getStemDictWithJavaIoReader:(JavaIoReader *)reader
                             withOrgApacheLuceneAnalysisCharArrayMap:(OrgApacheLuceneAnalysisCharArrayMap *)result;

+ (OrgApacheLuceneAnalysisCharArraySet *)getWordSetWithJavaIoReader:(JavaIoReader *)reader
                            withOrgApacheLuceneAnalysisCharArraySet:(OrgApacheLuceneAnalysisCharArraySet *)result;

+ (OrgApacheLuceneAnalysisCharArraySet *)getWordSetWithJavaIoReader:(JavaIoReader *)reader
                                                       withNSString:(NSString *)comment
                            withOrgApacheLuceneAnalysisCharArraySet:(OrgApacheLuceneAnalysisCharArraySet *)result;

+ (OrgApacheLuceneAnalysisCharArraySet *)getWordSetWithJavaIoReader:(JavaIoReader *)reader
                                                       withNSString:(NSString *)comment
                                     withOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion;

+ (OrgApacheLuceneAnalysisCharArraySet *)getWordSetWithJavaIoReader:(JavaIoReader *)reader
                                     withOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisWordlistLoader)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisWordlistLoader_init(OrgApacheLuceneAnalysisWordlistLoader *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisWordlistLoader *new_OrgApacheLuceneAnalysisWordlistLoader_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisWordlistLoader *create_OrgApacheLuceneAnalysisWordlistLoader_init(void);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCharArraySet *OrgApacheLuceneAnalysisWordlistLoader_getWordSetWithJavaIoReader_withOrgApacheLuceneAnalysisCharArraySet_(JavaIoReader *reader, OrgApacheLuceneAnalysisCharArraySet *result);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCharArraySet *OrgApacheLuceneAnalysisWordlistLoader_getWordSetWithJavaIoReader_withOrgApacheLuceneUtilVersion_(JavaIoReader *reader, OrgApacheLuceneUtilVersion *matchVersion);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCharArraySet *OrgApacheLuceneAnalysisWordlistLoader_getWordSetWithJavaIoReader_withNSString_withOrgApacheLuceneUtilVersion_(JavaIoReader *reader, NSString *comment, OrgApacheLuceneUtilVersion *matchVersion);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCharArraySet *OrgApacheLuceneAnalysisWordlistLoader_getWordSetWithJavaIoReader_withNSString_withOrgApacheLuceneAnalysisCharArraySet_(JavaIoReader *reader, NSString *comment, OrgApacheLuceneAnalysisCharArraySet *result);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCharArraySet *OrgApacheLuceneAnalysisWordlistLoader_getSnowballWordSetWithJavaIoReader_withOrgApacheLuceneAnalysisCharArraySet_(JavaIoReader *reader, OrgApacheLuceneAnalysisCharArraySet *result);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCharArraySet *OrgApacheLuceneAnalysisWordlistLoader_getSnowballWordSetWithJavaIoReader_withOrgApacheLuceneUtilVersion_(JavaIoReader *reader, OrgApacheLuceneUtilVersion *matchVersion);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCharArrayMap *OrgApacheLuceneAnalysisWordlistLoader_getStemDictWithJavaIoReader_withOrgApacheLuceneAnalysisCharArrayMap_(JavaIoReader *reader, OrgApacheLuceneAnalysisCharArrayMap *result);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisWordlistLoader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisWordlistLoader")