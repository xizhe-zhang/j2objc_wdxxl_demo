//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/AttributeImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilAttributeImpl")
#ifdef RESTRICT_OrgApacheLuceneUtilAttributeImpl
#define INCLUDE_ALL_OrgApacheLuceneUtilAttributeImpl 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilAttributeImpl 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilAttributeImpl

#if !defined (OrgApacheLuceneUtilAttributeImpl_) && (INCLUDE_ALL_OrgApacheLuceneUtilAttributeImpl || defined(INCLUDE_OrgApacheLuceneUtilAttributeImpl))
#define OrgApacheLuceneUtilAttributeImpl_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

#define RESTRICT_OrgApacheLuceneUtilAttribute 1
#define INCLUDE_OrgApacheLuceneUtilAttribute 1
#include "org/apache/lucene/util/Attribute.h"

@protocol OrgApacheLuceneUtilAttributeReflector;

@interface OrgApacheLuceneUtilAttributeImpl : NSObject < NSCopying, JavaIoSerializable, OrgApacheLuceneUtilAttribute > {
 @public
  jboolean enableBackwards_;
}

#pragma mark Public

- (instancetype)init;

- (void)clear;

- (id)java_clone;

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target OBJC_METHOD_FAMILY_NONE;

- (NSString *)reflectAsStringWithBoolean:(jboolean)prependAttClass;

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilAttributeImpl)

FOUNDATION_EXPORT void OrgApacheLuceneUtilAttributeImpl_init(OrgApacheLuceneUtilAttributeImpl *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAttributeImpl)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilAttributeImpl")
