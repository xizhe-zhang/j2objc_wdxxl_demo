//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:gson-2.6.2-sources.jar!com/google/gson/internal/bind/MapTypeAdapterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleGsonInternalBindMapTypeAdapterFactory")
#ifdef RESTRICT_ComGoogleGsonInternalBindMapTypeAdapterFactory
#define INCLUDE_ALL_ComGoogleGsonInternalBindMapTypeAdapterFactory 0
#else
#define INCLUDE_ALL_ComGoogleGsonInternalBindMapTypeAdapterFactory 1
#endif
#undef RESTRICT_ComGoogleGsonInternalBindMapTypeAdapterFactory

#if !defined (ComGoogleGsonInternalBindMapTypeAdapterFactory_) && (INCLUDE_ALL_ComGoogleGsonInternalBindMapTypeAdapterFactory || defined(INCLUDE_ComGoogleGsonInternalBindMapTypeAdapterFactory))
#define ComGoogleGsonInternalBindMapTypeAdapterFactory_

#define RESTRICT_ComGoogleGsonTypeAdapterFactory 1
#define INCLUDE_ComGoogleGsonTypeAdapterFactory 1
#include "com/google/gson/TypeAdapterFactory.h"

@class ComGoogleGsonGson;
@class ComGoogleGsonInternalConstructorConstructor;
@class ComGoogleGsonReflectTypeToken;
@class ComGoogleGsonTypeAdapter;

@interface ComGoogleGsonInternalBindMapTypeAdapterFactory : NSObject < ComGoogleGsonTypeAdapterFactory > {
 @public
  jboolean complexMapKeySerialization_;
}

#pragma mark Public

- (instancetype)initWithComGoogleGsonInternalConstructorConstructor:(ComGoogleGsonInternalConstructorConstructor *)constructorConstructor
                                                        withBoolean:(jboolean)complexMapKeySerialization;

- (ComGoogleGsonTypeAdapter *)createWithComGoogleGsonGson:(ComGoogleGsonGson *)gson
                        withComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)typeToken;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonInternalBindMapTypeAdapterFactory)

FOUNDATION_EXPORT void ComGoogleGsonInternalBindMapTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_withBoolean_(ComGoogleGsonInternalBindMapTypeAdapterFactory *self, ComGoogleGsonInternalConstructorConstructor *constructorConstructor, jboolean complexMapKeySerialization);

FOUNDATION_EXPORT ComGoogleGsonInternalBindMapTypeAdapterFactory *new_ComGoogleGsonInternalBindMapTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_withBoolean_(ComGoogleGsonInternalConstructorConstructor *constructorConstructor, jboolean complexMapKeySerialization) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonInternalBindMapTypeAdapterFactory *create_ComGoogleGsonInternalBindMapTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_withBoolean_(ComGoogleGsonInternalConstructorConstructor *constructorConstructor, jboolean complexMapKeySerialization);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternalBindMapTypeAdapterFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleGsonInternalBindMapTypeAdapterFactory")
