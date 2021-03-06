//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/reflect/MemberUtils.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheCommonsLang3ReflectMemberUtils")
#ifdef RESTRICT_OrgApacheCommonsLang3ReflectMemberUtils
#define INCLUDE_ALL_OrgApacheCommonsLang3ReflectMemberUtils 0
#else
#define INCLUDE_ALL_OrgApacheCommonsLang3ReflectMemberUtils 1
#endif
#undef RESTRICT_OrgApacheCommonsLang3ReflectMemberUtils

#if !defined (OrgApacheCommonsLang3ReflectMemberUtils_) && (INCLUDE_ALL_OrgApacheCommonsLang3ReflectMemberUtils || defined(INCLUDE_OrgApacheCommonsLang3ReflectMemberUtils))
#define OrgApacheCommonsLang3ReflectMemberUtils_

@class IOSObjectArray;
@class JavaLangReflectAccessibleObject;
@protocol JavaLangReflectMember;

@interface OrgApacheCommonsLang3ReflectMemberUtils : NSObject

#pragma mark Package-Private

- (instancetype)init;

+ (jint)compareParameterTypesWithIOSClassArray:(IOSObjectArray *)left
                             withIOSClassArray:(IOSObjectArray *)right
                             withIOSClassArray:(IOSObjectArray *)actual;

+ (jboolean)isAccessibleWithJavaLangReflectMember:(id<JavaLangReflectMember>)m;

+ (jboolean)isPackageAccessWithInt:(jint)modifiers;

+ (jboolean)setAccessibleWorkaroundWithJavaLangReflectAccessibleObject:(JavaLangReflectAccessibleObject *)o;

@end

J2OBJC_STATIC_INIT(OrgApacheCommonsLang3ReflectMemberUtils)

FOUNDATION_EXPORT void OrgApacheCommonsLang3ReflectMemberUtils_init(OrgApacheCommonsLang3ReflectMemberUtils *self);

FOUNDATION_EXPORT jboolean OrgApacheCommonsLang3ReflectMemberUtils_setAccessibleWorkaroundWithJavaLangReflectAccessibleObject_(JavaLangReflectAccessibleObject *o);

FOUNDATION_EXPORT jboolean OrgApacheCommonsLang3ReflectMemberUtils_isPackageAccessWithInt_(jint modifiers);

FOUNDATION_EXPORT jboolean OrgApacheCommonsLang3ReflectMemberUtils_isAccessibleWithJavaLangReflectMember_(id<JavaLangReflectMember> m);

FOUNDATION_EXPORT jint OrgApacheCommonsLang3ReflectMemberUtils_compareParameterTypesWithIOSClassArray_withIOSClassArray_withIOSClassArray_(IOSObjectArray *left, IOSObjectArray *right, IOSObjectArray *actual);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsLang3ReflectMemberUtils)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheCommonsLang3ReflectMemberUtils")
