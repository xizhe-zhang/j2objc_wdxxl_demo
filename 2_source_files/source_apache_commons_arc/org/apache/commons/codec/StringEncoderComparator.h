//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-codec-1.10-sources.jar!org/apache/commons/codec/StringEncoderComparator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheCommonsCodecStringEncoderComparator")
#ifdef RESTRICT_OrgApacheCommonsCodecStringEncoderComparator
#define INCLUDE_ALL_OrgApacheCommonsCodecStringEncoderComparator 0
#else
#define INCLUDE_ALL_OrgApacheCommonsCodecStringEncoderComparator 1
#endif
#undef RESTRICT_OrgApacheCommonsCodecStringEncoderComparator

#if !defined (OrgApacheCommonsCodecStringEncoderComparator_) && (INCLUDE_ALL_OrgApacheCommonsCodecStringEncoderComparator || defined(INCLUDE_OrgApacheCommonsCodecStringEncoderComparator))
#define OrgApacheCommonsCodecStringEncoderComparator_

#define RESTRICT_JavaUtilComparator 1
#define INCLUDE_JavaUtilComparator 1
#include "java/util/Comparator.h"

@protocol JavaUtilFunctionFunction;
@protocol JavaUtilFunctionToDoubleFunction;
@protocol JavaUtilFunctionToIntFunction;
@protocol JavaUtilFunctionToLongFunction;
@protocol OrgApacheCommonsCodecStringEncoder;

@interface OrgApacheCommonsCodecStringEncoderComparator : NSObject < JavaUtilComparator >

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithOrgApacheCommonsCodecStringEncoder:(id<OrgApacheCommonsCodecStringEncoder>)stringEncoder;

- (jint)compareWithId:(id)o1
               withId:(id)o2;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheCommonsCodecStringEncoderComparator)

FOUNDATION_EXPORT void OrgApacheCommonsCodecStringEncoderComparator_init(OrgApacheCommonsCodecStringEncoderComparator *self);

FOUNDATION_EXPORT OrgApacheCommonsCodecStringEncoderComparator *new_OrgApacheCommonsCodecStringEncoderComparator_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsCodecStringEncoderComparator *create_OrgApacheCommonsCodecStringEncoderComparator_init(void);

FOUNDATION_EXPORT void OrgApacheCommonsCodecStringEncoderComparator_initWithOrgApacheCommonsCodecStringEncoder_(OrgApacheCommonsCodecStringEncoderComparator *self, id<OrgApacheCommonsCodecStringEncoder> stringEncoder);

FOUNDATION_EXPORT OrgApacheCommonsCodecStringEncoderComparator *new_OrgApacheCommonsCodecStringEncoderComparator_initWithOrgApacheCommonsCodecStringEncoder_(id<OrgApacheCommonsCodecStringEncoder> stringEncoder) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsCodecStringEncoderComparator *create_OrgApacheCommonsCodecStringEncoderComparator_initWithOrgApacheCommonsCodecStringEncoder_(id<OrgApacheCommonsCodecStringEncoder> stringEncoder);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsCodecStringEncoderComparator)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheCommonsCodecStringEncoderComparator")
