//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:gson-2.6.2-sources.jar!com/google/gson/internal/$Gson$Types.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleGsonInternal$Gson$Types")
#ifdef RESTRICT_ComGoogleGsonInternal$Gson$Types
#define INCLUDE_ALL_ComGoogleGsonInternal$Gson$Types 0
#else
#define INCLUDE_ALL_ComGoogleGsonInternal$Gson$Types 1
#endif
#undef RESTRICT_ComGoogleGsonInternal$Gson$Types

#if !defined (ComGoogleGsonInternal_Gson_Types_) && (INCLUDE_ALL_ComGoogleGsonInternal$Gson$Types || defined(INCLUDE_ComGoogleGsonInternal_Gson_Types))
#define ComGoogleGsonInternal_Gson_Types_

@class IOSClass;
@class IOSObjectArray;
@protocol JavaLangReflectGenericArrayType;
@protocol JavaLangReflectParameterizedType;
@protocol JavaLangReflectType;
@protocol JavaLangReflectTypeVariable;
@protocol JavaLangReflectWildcardType;

@interface ComGoogleGsonInternal_Gson_Types : NSObject

#pragma mark Public

+ (id<JavaLangReflectGenericArrayType>)arrayOfWithJavaLangReflectType:(id<JavaLangReflectType>)componentType;

+ (id<JavaLangReflectType>)canonicalizeWithJavaLangReflectType:(id<JavaLangReflectType>)type;

+ (jboolean)equalsWithJavaLangReflectType:(id<JavaLangReflectType>)a
                  withJavaLangReflectType:(id<JavaLangReflectType>)b;

+ (id<JavaLangReflectType>)getArrayComponentTypeWithJavaLangReflectType:(id<JavaLangReflectType>)array;

+ (id<JavaLangReflectType>)getCollectionElementTypeWithJavaLangReflectType:(id<JavaLangReflectType>)context
                                                              withIOSClass:(IOSClass *)contextRawType;

+ (IOSObjectArray *)getMapKeyAndValueTypesWithJavaLangReflectType:(id<JavaLangReflectType>)context
                                                     withIOSClass:(IOSClass *)contextRawType;

+ (IOSClass *)getRawTypeWithJavaLangReflectType:(id<JavaLangReflectType>)type;

+ (id<JavaLangReflectParameterizedType>)newParameterizedTypeWithOwnerWithJavaLangReflectType:(id<JavaLangReflectType>)ownerType
                                                                     withJavaLangReflectType:(id<JavaLangReflectType>)rawType
                                                                withJavaLangReflectTypeArray:(IOSObjectArray *)typeArguments OBJC_METHOD_FAMILY_NONE;

+ (id<JavaLangReflectType>)resolveWithJavaLangReflectType:(id<JavaLangReflectType>)context
                                             withIOSClass:(IOSClass *)contextRawType
                                  withJavaLangReflectType:(id<JavaLangReflectType>)toResolve;

+ (id<JavaLangReflectWildcardType>)subtypeOfWithJavaLangReflectType:(id<JavaLangReflectType>)bound;

+ (id<JavaLangReflectWildcardType>)supertypeOfWithJavaLangReflectType:(id<JavaLangReflectType>)bound;

+ (NSString *)typeToStringWithJavaLangReflectType:(id<JavaLangReflectType>)type;

#pragma mark Package-Private

+ (void)checkNotPrimitiveWithJavaLangReflectType:(id<JavaLangReflectType>)type;

+ (jboolean)equalWithId:(id)a
                 withId:(id)b;

+ (id<JavaLangReflectType>)getGenericSupertypeWithJavaLangReflectType:(id<JavaLangReflectType>)context
                                                         withIOSClass:(IOSClass *)rawType
                                                         withIOSClass:(IOSClass *)toResolve;

+ (id<JavaLangReflectType>)getSupertypeWithJavaLangReflectType:(id<JavaLangReflectType>)context
                                                  withIOSClass:(IOSClass *)contextRawType
                                                  withIOSClass:(IOSClass *)supertype;

+ (jint)hashCodeOrZeroWithId:(id)o;

+ (id<JavaLangReflectType>)resolveTypeVariableWithJavaLangReflectType:(id<JavaLangReflectType>)context
                                                         withIOSClass:(IOSClass *)contextRawType
                                      withJavaLangReflectTypeVariable:(id<JavaLangReflectTypeVariable>)unknown;

@end

J2OBJC_STATIC_INIT(ComGoogleGsonInternal_Gson_Types)

inline IOSObjectArray *ComGoogleGsonInternal_Gson_Types_get_EMPTY_TYPE_ARRAY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *ComGoogleGsonInternal_Gson_Types_EMPTY_TYPE_ARRAY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleGsonInternal_Gson_Types, EMPTY_TYPE_ARRAY, IOSObjectArray *)

FOUNDATION_EXPORT id<JavaLangReflectParameterizedType> ComGoogleGsonInternal_Gson_Types_newParameterizedTypeWithOwnerWithJavaLangReflectType_withJavaLangReflectType_withJavaLangReflectTypeArray_(id<JavaLangReflectType> ownerType, id<JavaLangReflectType> rawType, IOSObjectArray *typeArguments);

FOUNDATION_EXPORT id<JavaLangReflectGenericArrayType> ComGoogleGsonInternal_Gson_Types_arrayOfWithJavaLangReflectType_(id<JavaLangReflectType> componentType);

FOUNDATION_EXPORT id<JavaLangReflectWildcardType> ComGoogleGsonInternal_Gson_Types_subtypeOfWithJavaLangReflectType_(id<JavaLangReflectType> bound);

FOUNDATION_EXPORT id<JavaLangReflectWildcardType> ComGoogleGsonInternal_Gson_Types_supertypeOfWithJavaLangReflectType_(id<JavaLangReflectType> bound);

FOUNDATION_EXPORT id<JavaLangReflectType> ComGoogleGsonInternal_Gson_Types_canonicalizeWithJavaLangReflectType_(id<JavaLangReflectType> type);

FOUNDATION_EXPORT IOSClass *ComGoogleGsonInternal_Gson_Types_getRawTypeWithJavaLangReflectType_(id<JavaLangReflectType> type);

FOUNDATION_EXPORT jboolean ComGoogleGsonInternal_Gson_Types_equalWithId_withId_(id a, id b);

FOUNDATION_EXPORT jboolean ComGoogleGsonInternal_Gson_Types_equalsWithJavaLangReflectType_withJavaLangReflectType_(id<JavaLangReflectType> a, id<JavaLangReflectType> b);

FOUNDATION_EXPORT jint ComGoogleGsonInternal_Gson_Types_hashCodeOrZeroWithId_(id o);

FOUNDATION_EXPORT NSString *ComGoogleGsonInternal_Gson_Types_typeToStringWithJavaLangReflectType_(id<JavaLangReflectType> type);

FOUNDATION_EXPORT id<JavaLangReflectType> ComGoogleGsonInternal_Gson_Types_getGenericSupertypeWithJavaLangReflectType_withIOSClass_withIOSClass_(id<JavaLangReflectType> context, IOSClass *rawType, IOSClass *toResolve);

FOUNDATION_EXPORT id<JavaLangReflectType> ComGoogleGsonInternal_Gson_Types_getSupertypeWithJavaLangReflectType_withIOSClass_withIOSClass_(id<JavaLangReflectType> context, IOSClass *contextRawType, IOSClass *supertype);

FOUNDATION_EXPORT id<JavaLangReflectType> ComGoogleGsonInternal_Gson_Types_getArrayComponentTypeWithJavaLangReflectType_(id<JavaLangReflectType> array);

FOUNDATION_EXPORT id<JavaLangReflectType> ComGoogleGsonInternal_Gson_Types_getCollectionElementTypeWithJavaLangReflectType_withIOSClass_(id<JavaLangReflectType> context, IOSClass *contextRawType);

FOUNDATION_EXPORT IOSObjectArray *ComGoogleGsonInternal_Gson_Types_getMapKeyAndValueTypesWithJavaLangReflectType_withIOSClass_(id<JavaLangReflectType> context, IOSClass *contextRawType);

FOUNDATION_EXPORT id<JavaLangReflectType> ComGoogleGsonInternal_Gson_Types_resolveWithJavaLangReflectType_withIOSClass_withJavaLangReflectType_(id<JavaLangReflectType> context, IOSClass *contextRawType, id<JavaLangReflectType> toResolve);

FOUNDATION_EXPORT id<JavaLangReflectType> ComGoogleGsonInternal_Gson_Types_resolveTypeVariableWithJavaLangReflectType_withIOSClass_withJavaLangReflectTypeVariable_(id<JavaLangReflectType> context, IOSClass *contextRawType, id<JavaLangReflectTypeVariable> unknown);

FOUNDATION_EXPORT void ComGoogleGsonInternal_Gson_Types_checkNotPrimitiveWithJavaLangReflectType_(id<JavaLangReflectType> type);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternal_Gson_Types)

@compatibility_alias ComGoogleGsonInternal$Gson$Types ComGoogleGsonInternal_Gson_Types;

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleGsonInternal$Gson$Types")
