//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/helper/StringUtil.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJsoupHelperStringUtil")
#ifdef RESTRICT_OrgJsoupHelperStringUtil
#define INCLUDE_ALL_OrgJsoupHelperStringUtil 0
#else
#define INCLUDE_ALL_OrgJsoupHelperStringUtil 1
#endif
#undef RESTRICT_OrgJsoupHelperStringUtil

#if !defined (OrgJsoupHelperStringUtil_) && (INCLUDE_ALL_OrgJsoupHelperStringUtil || defined(INCLUDE_OrgJsoupHelperStringUtil))
#define OrgJsoupHelperStringUtil_

@class IOSObjectArray;
@class JavaLangStringBuilder;
@class JavaNetURL;
@protocol JavaUtilCollection;
@protocol JavaUtilIterator;

@interface OrgJsoupHelperStringUtil : NSObject

#pragma mark Public

- (instancetype)init;

+ (void)appendNormalisedWhitespaceWithJavaLangStringBuilder:(JavaLangStringBuilder *)accum
                                               withNSString:(NSString *)string
                                                withBoolean:(jboolean)stripLeading;

+ (jboolean)inWithNSString:(NSString *)needle
         withNSStringArray:(IOSObjectArray *)haystack;

+ (jboolean)inSortedWithNSString:(NSString *)needle
               withNSStringArray:(IOSObjectArray *)haystack;

+ (jboolean)isBlankWithNSString:(NSString *)string;

+ (jboolean)isNumericWithNSString:(NSString *)string;

+ (jboolean)isWhitespaceWithInt:(jint)c;

+ (NSString *)joinWithJavaUtilCollection:(id<JavaUtilCollection>)strings
                            withNSString:(NSString *)sep;

+ (NSString *)joinWithJavaUtilIterator:(id<JavaUtilIterator>)strings
                          withNSString:(NSString *)sep;

+ (NSString *)normaliseWhitespaceWithNSString:(NSString *)string;

+ (NSString *)paddingWithInt:(jint)width;

+ (NSString *)resolveWithNSString:(NSString *)baseUrl
                     withNSString:(NSString *)relUrl;

+ (JavaNetURL *)resolveWithJavaNetURL:(JavaNetURL *)base
                         withNSString:(NSString *)relUrl;

@end

J2OBJC_STATIC_INIT(OrgJsoupHelperStringUtil)

FOUNDATION_EXPORT void OrgJsoupHelperStringUtil_init(OrgJsoupHelperStringUtil *self);

FOUNDATION_EXPORT OrgJsoupHelperStringUtil *new_OrgJsoupHelperStringUtil_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupHelperStringUtil *create_OrgJsoupHelperStringUtil_init(void);

FOUNDATION_EXPORT NSString *OrgJsoupHelperStringUtil_joinWithJavaUtilCollection_withNSString_(id<JavaUtilCollection> strings, NSString *sep);

FOUNDATION_EXPORT NSString *OrgJsoupHelperStringUtil_joinWithJavaUtilIterator_withNSString_(id<JavaUtilIterator> strings, NSString *sep);

FOUNDATION_EXPORT NSString *OrgJsoupHelperStringUtil_paddingWithInt_(jint width);

FOUNDATION_EXPORT jboolean OrgJsoupHelperStringUtil_isBlankWithNSString_(NSString *string);

FOUNDATION_EXPORT jboolean OrgJsoupHelperStringUtil_isNumericWithNSString_(NSString *string);

FOUNDATION_EXPORT jboolean OrgJsoupHelperStringUtil_isWhitespaceWithInt_(jint c);

FOUNDATION_EXPORT NSString *OrgJsoupHelperStringUtil_normaliseWhitespaceWithNSString_(NSString *string);

FOUNDATION_EXPORT void OrgJsoupHelperStringUtil_appendNormalisedWhitespaceWithJavaLangStringBuilder_withNSString_withBoolean_(JavaLangStringBuilder *accum, NSString *string, jboolean stripLeading);

FOUNDATION_EXPORT jboolean OrgJsoupHelperStringUtil_inWithNSString_withNSStringArray_(NSString *needle, IOSObjectArray *haystack);

FOUNDATION_EXPORT jboolean OrgJsoupHelperStringUtil_inSortedWithNSString_withNSStringArray_(NSString *needle, IOSObjectArray *haystack);

FOUNDATION_EXPORT JavaNetURL *OrgJsoupHelperStringUtil_resolveWithJavaNetURL_withNSString_(JavaNetURL *base, NSString *relUrl);

FOUNDATION_EXPORT NSString *OrgJsoupHelperStringUtil_resolveWithNSString_withNSString_(NSString *baseUrl, NSString *relUrl);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupHelperStringUtil)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJsoupHelperStringUtil")
