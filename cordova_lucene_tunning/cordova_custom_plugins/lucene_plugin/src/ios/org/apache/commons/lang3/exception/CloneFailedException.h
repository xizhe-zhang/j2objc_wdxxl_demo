//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/exception/CloneFailedException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheCommonsLang3ExceptionCloneFailedException")
#ifdef RESTRICT_OrgApacheCommonsLang3ExceptionCloneFailedException
#define INCLUDE_ALL_OrgApacheCommonsLang3ExceptionCloneFailedException 0
#else
#define INCLUDE_ALL_OrgApacheCommonsLang3ExceptionCloneFailedException 1
#endif
#undef RESTRICT_OrgApacheCommonsLang3ExceptionCloneFailedException

#if !defined (OrgApacheCommonsLang3ExceptionCloneFailedException_) && (INCLUDE_ALL_OrgApacheCommonsLang3ExceptionCloneFailedException || defined(INCLUDE_OrgApacheCommonsLang3ExceptionCloneFailedException))
#define OrgApacheCommonsLang3ExceptionCloneFailedException_

#define RESTRICT_JavaLangRuntimeException 1
#define INCLUDE_JavaLangRuntimeException 1
#include "java/lang/RuntimeException.h"

@class JavaLangThrowable;

@interface OrgApacheCommonsLang3ExceptionCloneFailedException : JavaLangRuntimeException

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)message;

- (instancetype)initWithNSString:(NSString *)message
           withJavaLangThrowable:(JavaLangThrowable *)cause;

- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)cause;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0
           withJavaLangThrowable:(JavaLangThrowable *)arg1
                     withBoolean:(jboolean)arg2
                     withBoolean:(jboolean)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheCommonsLang3ExceptionCloneFailedException)

FOUNDATION_EXPORT void OrgApacheCommonsLang3ExceptionCloneFailedException_initWithNSString_(OrgApacheCommonsLang3ExceptionCloneFailedException *self, NSString *message);

FOUNDATION_EXPORT OrgApacheCommonsLang3ExceptionCloneFailedException *new_OrgApacheCommonsLang3ExceptionCloneFailedException_initWithNSString_(NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3ExceptionCloneFailedException *create_OrgApacheCommonsLang3ExceptionCloneFailedException_initWithNSString_(NSString *message);

FOUNDATION_EXPORT void OrgApacheCommonsLang3ExceptionCloneFailedException_initWithJavaLangThrowable_(OrgApacheCommonsLang3ExceptionCloneFailedException *self, JavaLangThrowable *cause);

FOUNDATION_EXPORT OrgApacheCommonsLang3ExceptionCloneFailedException *new_OrgApacheCommonsLang3ExceptionCloneFailedException_initWithJavaLangThrowable_(JavaLangThrowable *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3ExceptionCloneFailedException *create_OrgApacheCommonsLang3ExceptionCloneFailedException_initWithJavaLangThrowable_(JavaLangThrowable *cause);

FOUNDATION_EXPORT void OrgApacheCommonsLang3ExceptionCloneFailedException_initWithNSString_withJavaLangThrowable_(OrgApacheCommonsLang3ExceptionCloneFailedException *self, NSString *message, JavaLangThrowable *cause);

FOUNDATION_EXPORT OrgApacheCommonsLang3ExceptionCloneFailedException *new_OrgApacheCommonsLang3ExceptionCloneFailedException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3ExceptionCloneFailedException *create_OrgApacheCommonsLang3ExceptionCloneFailedException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsLang3ExceptionCloneFailedException)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheCommonsLang3ExceptionCloneFailedException")
