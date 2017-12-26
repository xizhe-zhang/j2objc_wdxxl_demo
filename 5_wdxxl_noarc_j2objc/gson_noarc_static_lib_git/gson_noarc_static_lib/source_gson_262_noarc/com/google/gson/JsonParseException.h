//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:gson-2.6.2-sources.jar!com/google/gson/JsonParseException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleGsonJsonParseException")
#ifdef RESTRICT_ComGoogleGsonJsonParseException
#define INCLUDE_ALL_ComGoogleGsonJsonParseException 0
#else
#define INCLUDE_ALL_ComGoogleGsonJsonParseException 1
#endif
#undef RESTRICT_ComGoogleGsonJsonParseException

#if !defined (ComGoogleGsonJsonParseException_) && (INCLUDE_ALL_ComGoogleGsonJsonParseException || defined(INCLUDE_ComGoogleGsonJsonParseException))
#define ComGoogleGsonJsonParseException_

#define RESTRICT_JavaLangRuntimeException 1
#define INCLUDE_JavaLangRuntimeException 1
#include "java/lang/RuntimeException.h"

@class JavaLangThrowable;

@interface ComGoogleGsonJsonParseException : JavaLangRuntimeException

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)msg;

- (instancetype)initWithNSString:(NSString *)msg
           withJavaLangThrowable:(JavaLangThrowable *)cause;

- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)cause;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0
           withJavaLangThrowable:(JavaLangThrowable *)arg1
                     withBoolean:(jboolean)arg2
                     withBoolean:(jboolean)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonJsonParseException)

inline jlong ComGoogleGsonJsonParseException_get_serialVersionUID(void);
#define ComGoogleGsonJsonParseException_serialVersionUID -4086729973971783390LL
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleGsonJsonParseException, serialVersionUID, jlong)

FOUNDATION_EXPORT void ComGoogleGsonJsonParseException_initWithNSString_(ComGoogleGsonJsonParseException *self, NSString *msg);

FOUNDATION_EXPORT ComGoogleGsonJsonParseException *new_ComGoogleGsonJsonParseException_initWithNSString_(NSString *msg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonJsonParseException *create_ComGoogleGsonJsonParseException_initWithNSString_(NSString *msg);

FOUNDATION_EXPORT void ComGoogleGsonJsonParseException_initWithNSString_withJavaLangThrowable_(ComGoogleGsonJsonParseException *self, NSString *msg, JavaLangThrowable *cause);

FOUNDATION_EXPORT ComGoogleGsonJsonParseException *new_ComGoogleGsonJsonParseException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonJsonParseException *create_ComGoogleGsonJsonParseException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *cause);

FOUNDATION_EXPORT void ComGoogleGsonJsonParseException_initWithJavaLangThrowable_(ComGoogleGsonJsonParseException *self, JavaLangThrowable *cause);

FOUNDATION_EXPORT ComGoogleGsonJsonParseException *new_ComGoogleGsonJsonParseException_initWithJavaLangThrowable_(JavaLangThrowable *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonJsonParseException *create_ComGoogleGsonJsonParseException_initWithJavaLangThrowable_(JavaLangThrowable *cause);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonJsonParseException)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleGsonJsonParseException")
