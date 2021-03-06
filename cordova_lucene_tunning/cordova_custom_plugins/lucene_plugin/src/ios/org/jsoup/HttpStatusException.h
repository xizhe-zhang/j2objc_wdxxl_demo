//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/HttpStatusException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJsoupHttpStatusException")
#ifdef RESTRICT_OrgJsoupHttpStatusException
#define INCLUDE_ALL_OrgJsoupHttpStatusException 0
#else
#define INCLUDE_ALL_OrgJsoupHttpStatusException 1
#endif
#undef RESTRICT_OrgJsoupHttpStatusException

#if !defined (OrgJsoupHttpStatusException_) && (INCLUDE_ALL_OrgJsoupHttpStatusException || defined(INCLUDE_OrgJsoupHttpStatusException))
#define OrgJsoupHttpStatusException_

#define RESTRICT_JavaIoIOException 1
#define INCLUDE_JavaIoIOException 1
#include "java/io/IOException.h"

@class JavaLangThrowable;

@interface OrgJsoupHttpStatusException : JavaIoIOException

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)message
                         withInt:(jint)statusCode
                    withNSString:(NSString *)url;

- (jint)getStatusCode;

- (NSString *)getUrl;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0
           withJavaLangThrowable:(JavaLangThrowable *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupHttpStatusException)

FOUNDATION_EXPORT void OrgJsoupHttpStatusException_initWithNSString_withInt_withNSString_(OrgJsoupHttpStatusException *self, NSString *message, jint statusCode, NSString *url);

FOUNDATION_EXPORT OrgJsoupHttpStatusException *new_OrgJsoupHttpStatusException_initWithNSString_withInt_withNSString_(NSString *message, jint statusCode, NSString *url) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupHttpStatusException *create_OrgJsoupHttpStatusException_initWithNSString_withInt_withNSString_(NSString *message, jint statusCode, NSString *url);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupHttpStatusException)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJsoupHttpStatusException")
