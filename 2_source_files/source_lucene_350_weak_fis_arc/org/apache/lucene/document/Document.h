//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/document/Document.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneDocumentDocument")
#ifdef RESTRICT_OrgApacheLuceneDocumentDocument
#define INCLUDE_ALL_OrgApacheLuceneDocumentDocument 0
#else
#define INCLUDE_ALL_OrgApacheLuceneDocumentDocument 1
#endif
#undef RESTRICT_OrgApacheLuceneDocumentDocument

#if !defined (OrgApacheLuceneDocumentDocument_) && (INCLUDE_ALL_OrgApacheLuceneDocumentDocument || defined(INCLUDE_OrgApacheLuceneDocumentDocument))
#define OrgApacheLuceneDocumentDocument_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class IOSByteArray;
@class IOSObjectArray;
@class OrgApacheLuceneDocumentField;
@protocol JavaUtilList;
@protocol OrgApacheLuceneDocumentFieldable;

@interface OrgApacheLuceneDocumentDocument : NSObject < JavaIoSerializable > {
 @public
  id<JavaUtilList> fields_;
}

#pragma mark Public

- (instancetype)init;

- (void)addWithOrgApacheLuceneDocumentFieldable:(id<OrgApacheLuceneDocumentFieldable>)field;

- (NSString *)getWithNSString:(NSString *)name;

- (IOSByteArray *)getBinaryValueWithNSString:(NSString *)name;

- (IOSObjectArray *)getBinaryValuesWithNSString:(NSString *)name;

- (jfloat)getBoost;

- (OrgApacheLuceneDocumentField *)getFieldWithNSString:(NSString *)name;

- (id<OrgApacheLuceneDocumentFieldable>)getFieldableWithNSString:(NSString *)name;

- (IOSObjectArray *)getFieldablesWithNSString:(NSString *)name;

- (id<JavaUtilList>)getFields;

- (IOSObjectArray *)getFieldsWithNSString:(NSString *)name;

- (IOSObjectArray *)getValuesWithNSString:(NSString *)name;

- (void)removeFieldWithNSString:(NSString *)name;

- (void)removeFieldsWithNSString:(NSString *)name;

- (void)setBoostWithFloat:(jfloat)boost;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneDocumentDocument)

J2OBJC_FIELD_SETTER(OrgApacheLuceneDocumentDocument, fields_, id<JavaUtilList>)

FOUNDATION_EXPORT void OrgApacheLuceneDocumentDocument_init(OrgApacheLuceneDocumentDocument *self);

FOUNDATION_EXPORT OrgApacheLuceneDocumentDocument *new_OrgApacheLuceneDocumentDocument_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentDocument *create_OrgApacheLuceneDocumentDocument_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentDocument)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneDocumentDocument")
