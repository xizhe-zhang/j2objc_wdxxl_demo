//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/text/StrLookup.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheCommonsLang3TextStrLookup")
#ifdef RESTRICT_OrgApacheCommonsLang3TextStrLookup
#define INCLUDE_ALL_OrgApacheCommonsLang3TextStrLookup 0
#else
#define INCLUDE_ALL_OrgApacheCommonsLang3TextStrLookup 1
#endif
#undef RESTRICT_OrgApacheCommonsLang3TextStrLookup
#ifdef INCLUDE_OrgApacheCommonsLang3TextStrLookup_MapStrLookup
#define INCLUDE_OrgApacheCommonsLang3TextStrLookup 1
#endif

#if !defined (OrgApacheCommonsLang3TextStrLookup_) && (INCLUDE_ALL_OrgApacheCommonsLang3TextStrLookup || defined(INCLUDE_OrgApacheCommonsLang3TextStrLookup))
#define OrgApacheCommonsLang3TextStrLookup_

@protocol JavaUtilMap;

@interface OrgApacheCommonsLang3TextStrLookup : NSObject

#pragma mark Public

- (NSString *)lookupWithNSString:(NSString *)key;

+ (OrgApacheCommonsLang3TextStrLookup *)mapLookupWithJavaUtilMap:(id<JavaUtilMap>)map;

+ (OrgApacheCommonsLang3TextStrLookup *)noneLookup;

+ (OrgApacheCommonsLang3TextStrLookup *)systemPropertiesLookup;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgApacheCommonsLang3TextStrLookup)

FOUNDATION_EXPORT OrgApacheCommonsLang3TextStrLookup *OrgApacheCommonsLang3TextStrLookup_noneLookup(void);

FOUNDATION_EXPORT OrgApacheCommonsLang3TextStrLookup *OrgApacheCommonsLang3TextStrLookup_systemPropertiesLookup(void);

FOUNDATION_EXPORT OrgApacheCommonsLang3TextStrLookup *OrgApacheCommonsLang3TextStrLookup_mapLookupWithJavaUtilMap_(id<JavaUtilMap> map);

FOUNDATION_EXPORT void OrgApacheCommonsLang3TextStrLookup_init(OrgApacheCommonsLang3TextStrLookup *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsLang3TextStrLookup)

#endif

#if !defined (OrgApacheCommonsLang3TextStrLookup_MapStrLookup_) && (INCLUDE_ALL_OrgApacheCommonsLang3TextStrLookup || defined(INCLUDE_OrgApacheCommonsLang3TextStrLookup_MapStrLookup))
#define OrgApacheCommonsLang3TextStrLookup_MapStrLookup_

@protocol JavaUtilMap;

@interface OrgApacheCommonsLang3TextStrLookup_MapStrLookup : OrgApacheCommonsLang3TextStrLookup

#pragma mark Public

- (NSString *)lookupWithNSString:(NSString *)key;

#pragma mark Package-Private

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)map;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheCommonsLang3TextStrLookup_MapStrLookup)

FOUNDATION_EXPORT void OrgApacheCommonsLang3TextStrLookup_MapStrLookup_initWithJavaUtilMap_(OrgApacheCommonsLang3TextStrLookup_MapStrLookup *self, id<JavaUtilMap> map);

FOUNDATION_EXPORT OrgApacheCommonsLang3TextStrLookup_MapStrLookup *new_OrgApacheCommonsLang3TextStrLookup_MapStrLookup_initWithJavaUtilMap_(id<JavaUtilMap> map) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3TextStrLookup_MapStrLookup *create_OrgApacheCommonsLang3TextStrLookup_MapStrLookup_initWithJavaUtilMap_(id<JavaUtilMap> map);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsLang3TextStrLookup_MapStrLookup)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheCommonsLang3TextStrLookup")
