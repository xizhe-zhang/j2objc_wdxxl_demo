//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: Teacher.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Teacher")
#ifdef RESTRICT_Teacher
#define INCLUDE_ALL_Teacher 0
#else
#define INCLUDE_ALL_Teacher 1
#endif
#undef RESTRICT_Teacher

#if !defined (Teacher_) && (INCLUDE_ALL_Teacher || defined(INCLUDE_Teacher))
#define Teacher_

@protocol JavaUtilMap;

@interface Teacher : NSObject

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)name;

- (id<JavaUtilMap>)getStudents;

- (void)setStudentsWithJavaUtilMap:(id<JavaUtilMap>)students;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(Teacher)

FOUNDATION_EXPORT void Teacher_initWithNSString_(Teacher *self, NSString *name);

FOUNDATION_EXPORT Teacher *new_Teacher_initWithNSString_(NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT Teacher *create_Teacher_initWithNSString_(NSString *name);

J2OBJC_TYPE_LITERAL_HEADER(Teacher)

#endif

#pragma pop_macro("INCLUDE_ALL_Teacher")