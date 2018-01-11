//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/NormalizeCharMap.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisNormalizeCharMap")
#ifdef RESTRICT_OrgApacheLuceneAnalysisNormalizeCharMap
#define INCLUDE_ALL_OrgApacheLuceneAnalysisNormalizeCharMap 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisNormalizeCharMap 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisNormalizeCharMap

#if !defined (OrgApacheLuceneAnalysisNormalizeCharMap_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisNormalizeCharMap || defined(INCLUDE_OrgApacheLuceneAnalysisNormalizeCharMap))
#define OrgApacheLuceneAnalysisNormalizeCharMap_

@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisNormalizeCharMap : NSObject {
 @public
  id<JavaUtilMap> submap_;
  NSString *normStr_;
  jint diff_;
}

#pragma mark Public

- (instancetype)init;

- (void)addWithNSString:(NSString *)singleMatch
           withNSString:(NSString *)replacement;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisNormalizeCharMap)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNormalizeCharMap, submap_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNormalizeCharMap, normStr_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNormalizeCharMap_init(OrgApacheLuceneAnalysisNormalizeCharMap *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNormalizeCharMap *new_OrgApacheLuceneAnalysisNormalizeCharMap_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNormalizeCharMap *create_OrgApacheLuceneAnalysisNormalizeCharMap_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNormalizeCharMap)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisNormalizeCharMap")
