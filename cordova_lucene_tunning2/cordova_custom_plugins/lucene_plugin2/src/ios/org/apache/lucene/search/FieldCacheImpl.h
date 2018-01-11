//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/FieldCacheImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheImpl")
#ifdef RESTRICT_OrgApacheLuceneSearchFieldCacheImpl
#define INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheImpl 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheImpl 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFieldCacheImpl
#ifdef INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_StringIndexCache
#define INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_Cache 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_StringCache
#define INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_Cache 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_DoubleCache
#define INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_Cache 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_LongCache
#define INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_Cache 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_FloatCache
#define INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_Cache 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_DocsWithFieldCache
#define INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_Cache 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_IntCache
#define INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_Cache 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_ShortCache
#define INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_Cache 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_ByteCache
#define INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_Cache 1
#endif

#if !defined (OrgApacheLuceneSearchFieldCacheImpl_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheImpl || defined(INCLUDE_OrgApacheLuceneSearchFieldCacheImpl))
#define OrgApacheLuceneSearchFieldCacheImpl_

#define RESTRICT_OrgApacheLuceneSearchFieldCache 1
#define INCLUDE_OrgApacheLuceneSearchFieldCache 1
#include "org/apache/lucene/search/FieldCache.h"

@class IOSByteArray;
@class IOSDoubleArray;
@class IOSFloatArray;
@class IOSIntArray;
@class IOSLongArray;
@class IOSObjectArray;
@class IOSShortArray;
@class JavaIoPrintStream;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchFieldCache_StringIndex;
@protocol OrgApacheLuceneIndexIndexReader_ReaderFinishedListener;
@protocol OrgApacheLuceneSearchFieldCache_ByteParser;
@protocol OrgApacheLuceneSearchFieldCache_DoubleParser;
@protocol OrgApacheLuceneSearchFieldCache_FloatParser;
@protocol OrgApacheLuceneSearchFieldCache_IntParser;
@protocol OrgApacheLuceneSearchFieldCache_LongParser;
@protocol OrgApacheLuceneSearchFieldCache_ShortParser;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneSearchFieldCacheImpl : NSObject < OrgApacheLuceneSearchFieldCache >

#pragma mark Public

- (IOSByteArray *)getBytesWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withNSString:(NSString *)field;

- (IOSByteArray *)getBytesWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withNSString:(NSString *)field
               withOrgApacheLuceneSearchFieldCache_ByteParser:(id<OrgApacheLuceneSearchFieldCache_ByteParser>)parser;

- (IOSByteArray *)getBytesWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withNSString:(NSString *)field
               withOrgApacheLuceneSearchFieldCache_ByteParser:(id<OrgApacheLuceneSearchFieldCache_ByteParser>)parser
                                                  withBoolean:(jboolean)setDocsWithField;

- (IOSObjectArray *)getCacheEntries;

- (id<OrgApacheLuceneUtilBits>)getDocsWithFieldWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                                      withNSString:(NSString *)field;

- (IOSDoubleArray *)getDoublesWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                     withNSString:(NSString *)field;

- (IOSDoubleArray *)getDoublesWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                     withNSString:(NSString *)field
                 withOrgApacheLuceneSearchFieldCache_DoubleParser:(id<OrgApacheLuceneSearchFieldCache_DoubleParser>)parser;

- (IOSDoubleArray *)getDoublesWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                     withNSString:(NSString *)field
                 withOrgApacheLuceneSearchFieldCache_DoubleParser:(id<OrgApacheLuceneSearchFieldCache_DoubleParser>)parser
                                                      withBoolean:(jboolean)setDocsWithField;

- (IOSFloatArray *)getFloatsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                   withNSString:(NSString *)field;

- (IOSFloatArray *)getFloatsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                   withNSString:(NSString *)field
                withOrgApacheLuceneSearchFieldCache_FloatParser:(id<OrgApacheLuceneSearchFieldCache_FloatParser>)parser;

- (IOSFloatArray *)getFloatsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                   withNSString:(NSString *)field
                withOrgApacheLuceneSearchFieldCache_FloatParser:(id<OrgApacheLuceneSearchFieldCache_FloatParser>)parser
                                                    withBoolean:(jboolean)setDocsWithField;

- (JavaIoPrintStream *)getInfoStream;

- (IOSIntArray *)getIntsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                               withNSString:(NSString *)field;

- (IOSIntArray *)getIntsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                               withNSString:(NSString *)field
              withOrgApacheLuceneSearchFieldCache_IntParser:(id<OrgApacheLuceneSearchFieldCache_IntParser>)parser;

- (IOSIntArray *)getIntsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                               withNSString:(NSString *)field
              withOrgApacheLuceneSearchFieldCache_IntParser:(id<OrgApacheLuceneSearchFieldCache_IntParser>)parser
                                                withBoolean:(jboolean)setDocsWithField;

- (IOSLongArray *)getLongsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withNSString:(NSString *)field;

- (IOSLongArray *)getLongsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withNSString:(NSString *)field
               withOrgApacheLuceneSearchFieldCache_LongParser:(id<OrgApacheLuceneSearchFieldCache_LongParser>)parser;

- (IOSLongArray *)getLongsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withNSString:(NSString *)field
               withOrgApacheLuceneSearchFieldCache_LongParser:(id<OrgApacheLuceneSearchFieldCache_LongParser>)parser
                                                  withBoolean:(jboolean)setDocsWithField;

- (IOSShortArray *)getShortsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                   withNSString:(NSString *)field;

- (IOSShortArray *)getShortsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                   withNSString:(NSString *)field
                withOrgApacheLuceneSearchFieldCache_ShortParser:(id<OrgApacheLuceneSearchFieldCache_ShortParser>)parser;

- (IOSShortArray *)getShortsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                   withNSString:(NSString *)field
                withOrgApacheLuceneSearchFieldCache_ShortParser:(id<OrgApacheLuceneSearchFieldCache_ShortParser>)parser
                                                    withBoolean:(jboolean)setDocsWithField;

- (OrgApacheLuceneSearchFieldCache_StringIndex *)getStringIndexWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                                                      withNSString:(NSString *)field;

- (IOSObjectArray *)getStringsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                     withNSString:(NSString *)field;

- (void)purgeWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)r;

- (void)purgeAllCaches;

- (void)setInfoStreamWithJavaIoPrintStream:(JavaIoPrintStream *)stream;

#pragma mark Package-Private

- (instancetype)init;

- (void)setDocsWithFieldWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                               withNSString:(NSString *)field
                                withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)docsWithField;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchFieldCacheImpl)

inline id<OrgApacheLuceneIndexIndexReader_ReaderFinishedListener> OrgApacheLuceneSearchFieldCacheImpl_get_purgeReader(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id<OrgApacheLuceneIndexIndexReader_ReaderFinishedListener> OrgApacheLuceneSearchFieldCacheImpl_purgeReader;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchFieldCacheImpl, purgeReader, id<OrgApacheLuceneIndexIndexReader_ReaderFinishedListener>)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldCacheImpl_init(OrgApacheLuceneSearchFieldCacheImpl *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl *new_OrgApacheLuceneSearchFieldCacheImpl_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl *create_OrgApacheLuceneSearchFieldCacheImpl_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldCacheImpl)

#endif

#if !defined (OrgApacheLuceneSearchFieldCacheImpl_StopFillCacheException_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheImpl || defined(INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_StopFillCacheException))
#define OrgApacheLuceneSearchFieldCacheImpl_StopFillCacheException_

#define RESTRICT_JavaLangRuntimeException 1
#define INCLUDE_JavaLangRuntimeException 1
#include "java/lang/RuntimeException.h"

@class JavaLangThrowable;

@interface OrgApacheLuceneSearchFieldCacheImpl_StopFillCacheException : JavaLangRuntimeException

#pragma mark Package-Private

- (instancetype)init;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0
           withJavaLangThrowable:(JavaLangThrowable *)arg1 NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0
           withJavaLangThrowable:(JavaLangThrowable *)arg1
                     withBoolean:(jboolean)arg2
                     withBoolean:(jboolean)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldCacheImpl_StopFillCacheException)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldCacheImpl_StopFillCacheException_init(OrgApacheLuceneSearchFieldCacheImpl_StopFillCacheException *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_StopFillCacheException *new_OrgApacheLuceneSearchFieldCacheImpl_StopFillCacheException_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_StopFillCacheException *create_OrgApacheLuceneSearchFieldCacheImpl_StopFillCacheException_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldCacheImpl_StopFillCacheException)

#endif

#if !defined (OrgApacheLuceneSearchFieldCacheImpl_Cache_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheImpl || defined(INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_Cache))
#define OrgApacheLuceneSearchFieldCacheImpl_Cache_

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchFieldCacheImpl;
@class OrgApacheLuceneSearchFieldCacheImpl_Entry;
@protocol JavaUtilMap;

@interface OrgApacheLuceneSearchFieldCacheImpl_Cache : NSObject {
 @public
  OrgApacheLuceneSearchFieldCacheImpl *wrapper_;
  id<JavaUtilMap> readerCache_;
}

#pragma mark Public

- (id)getWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
withOrgApacheLuceneSearchFieldCacheImpl_Entry:(OrgApacheLuceneSearchFieldCacheImpl_Entry *)key
                                 withBoolean:(jboolean)setDocsWithField;

- (void)purgeWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)r;

- (void)putWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
 withOrgApacheLuceneSearchFieldCacheImpl_Entry:(OrgApacheLuceneSearchFieldCacheImpl_Entry *)key
                                        withId:(id)value;

#pragma mark Protected

- (id)createValueWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
       withOrgApacheLuceneSearchFieldCacheImpl_Entry:(OrgApacheLuceneSearchFieldCacheImpl_Entry *)key
                                         withBoolean:(jboolean)setDocsWithField;

#pragma mark Package-Private

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneSearchFieldCacheImpl:(OrgApacheLuceneSearchFieldCacheImpl *)wrapper;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldCacheImpl_Cache)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldCacheImpl_Cache, wrapper_, OrgApacheLuceneSearchFieldCacheImpl *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldCacheImpl_Cache, readerCache_, id<JavaUtilMap>)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldCacheImpl_Cache_init(OrgApacheLuceneSearchFieldCacheImpl_Cache *self);

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldCacheImpl_Cache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl_Cache *self, OrgApacheLuceneSearchFieldCacheImpl *wrapper);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldCacheImpl_Cache)

#endif

#if !defined (OrgApacheLuceneSearchFieldCacheImpl_Entry_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheImpl || defined(INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_Entry))
#define OrgApacheLuceneSearchFieldCacheImpl_Entry_

@interface OrgApacheLuceneSearchFieldCacheImpl_Entry : NSObject {
 @public
  NSString *field_;
  id custom_;
}

#pragma mark Public

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

#pragma mark Package-Private

- (instancetype)initWithNSString:(NSString *)field
                          withId:(id)custom;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldCacheImpl_Entry)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldCacheImpl_Entry, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldCacheImpl_Entry, custom_, id)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldCacheImpl_Entry_initWithNSString_withId_(OrgApacheLuceneSearchFieldCacheImpl_Entry *self, NSString *field, id custom);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_Entry *new_OrgApacheLuceneSearchFieldCacheImpl_Entry_initWithNSString_withId_(NSString *field, id custom) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_Entry *create_OrgApacheLuceneSearchFieldCacheImpl_Entry_initWithNSString_withId_(NSString *field, id custom);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldCacheImpl_Entry)

#endif

#if !defined (OrgApacheLuceneSearchFieldCacheImpl_ByteCache_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheImpl || defined(INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_ByteCache))
#define OrgApacheLuceneSearchFieldCacheImpl_ByteCache_

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchFieldCacheImpl;
@class OrgApacheLuceneSearchFieldCacheImpl_Entry;

@interface OrgApacheLuceneSearchFieldCacheImpl_ByteCache : OrgApacheLuceneSearchFieldCacheImpl_Cache

#pragma mark Protected

- (id)createValueWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
       withOrgApacheLuceneSearchFieldCacheImpl_Entry:(OrgApacheLuceneSearchFieldCacheImpl_Entry *)entryKey
                                         withBoolean:(jboolean)setDocsWithField;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchFieldCacheImpl:(OrgApacheLuceneSearchFieldCacheImpl *)wrapper;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldCacheImpl_ByteCache)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldCacheImpl_ByteCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl_ByteCache *self, OrgApacheLuceneSearchFieldCacheImpl *wrapper);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_ByteCache *new_OrgApacheLuceneSearchFieldCacheImpl_ByteCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl *wrapper) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_ByteCache *create_OrgApacheLuceneSearchFieldCacheImpl_ByteCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl *wrapper);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldCacheImpl_ByteCache)

#endif

#if !defined (OrgApacheLuceneSearchFieldCacheImpl_ShortCache_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheImpl || defined(INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_ShortCache))
#define OrgApacheLuceneSearchFieldCacheImpl_ShortCache_

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchFieldCacheImpl;
@class OrgApacheLuceneSearchFieldCacheImpl_Entry;

@interface OrgApacheLuceneSearchFieldCacheImpl_ShortCache : OrgApacheLuceneSearchFieldCacheImpl_Cache

#pragma mark Protected

- (id)createValueWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
       withOrgApacheLuceneSearchFieldCacheImpl_Entry:(OrgApacheLuceneSearchFieldCacheImpl_Entry *)entryKey
                                         withBoolean:(jboolean)setDocsWithField;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchFieldCacheImpl:(OrgApacheLuceneSearchFieldCacheImpl *)wrapper;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldCacheImpl_ShortCache)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldCacheImpl_ShortCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl_ShortCache *self, OrgApacheLuceneSearchFieldCacheImpl *wrapper);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_ShortCache *new_OrgApacheLuceneSearchFieldCacheImpl_ShortCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl *wrapper) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_ShortCache *create_OrgApacheLuceneSearchFieldCacheImpl_ShortCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl *wrapper);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldCacheImpl_ShortCache)

#endif

#if !defined (OrgApacheLuceneSearchFieldCacheImpl_IntCache_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheImpl || defined(INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_IntCache))
#define OrgApacheLuceneSearchFieldCacheImpl_IntCache_

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchFieldCacheImpl;
@class OrgApacheLuceneSearchFieldCacheImpl_Entry;

@interface OrgApacheLuceneSearchFieldCacheImpl_IntCache : OrgApacheLuceneSearchFieldCacheImpl_Cache

#pragma mark Protected

- (id)createValueWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
       withOrgApacheLuceneSearchFieldCacheImpl_Entry:(OrgApacheLuceneSearchFieldCacheImpl_Entry *)entryKey
                                         withBoolean:(jboolean)setDocsWithField;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchFieldCacheImpl:(OrgApacheLuceneSearchFieldCacheImpl *)wrapper;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldCacheImpl_IntCache)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldCacheImpl_IntCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl_IntCache *self, OrgApacheLuceneSearchFieldCacheImpl *wrapper);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_IntCache *new_OrgApacheLuceneSearchFieldCacheImpl_IntCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl *wrapper) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_IntCache *create_OrgApacheLuceneSearchFieldCacheImpl_IntCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl *wrapper);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldCacheImpl_IntCache)

#endif

#if !defined (OrgApacheLuceneSearchFieldCacheImpl_DocsWithFieldCache_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheImpl || defined(INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_DocsWithFieldCache))
#define OrgApacheLuceneSearchFieldCacheImpl_DocsWithFieldCache_

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchFieldCacheImpl;
@class OrgApacheLuceneSearchFieldCacheImpl_Entry;

@interface OrgApacheLuceneSearchFieldCacheImpl_DocsWithFieldCache : OrgApacheLuceneSearchFieldCacheImpl_Cache

#pragma mark Protected

- (id)createValueWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
       withOrgApacheLuceneSearchFieldCacheImpl_Entry:(OrgApacheLuceneSearchFieldCacheImpl_Entry *)entryKey
                                         withBoolean:(jboolean)setDocsWithField;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchFieldCacheImpl:(OrgApacheLuceneSearchFieldCacheImpl *)wrapper;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldCacheImpl_DocsWithFieldCache)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldCacheImpl_DocsWithFieldCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl_DocsWithFieldCache *self, OrgApacheLuceneSearchFieldCacheImpl *wrapper);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_DocsWithFieldCache *new_OrgApacheLuceneSearchFieldCacheImpl_DocsWithFieldCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl *wrapper) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_DocsWithFieldCache *create_OrgApacheLuceneSearchFieldCacheImpl_DocsWithFieldCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl *wrapper);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldCacheImpl_DocsWithFieldCache)

#endif

#if !defined (OrgApacheLuceneSearchFieldCacheImpl_FloatCache_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheImpl || defined(INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_FloatCache))
#define OrgApacheLuceneSearchFieldCacheImpl_FloatCache_

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchFieldCacheImpl;
@class OrgApacheLuceneSearchFieldCacheImpl_Entry;

@interface OrgApacheLuceneSearchFieldCacheImpl_FloatCache : OrgApacheLuceneSearchFieldCacheImpl_Cache

#pragma mark Protected

- (id)createValueWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
       withOrgApacheLuceneSearchFieldCacheImpl_Entry:(OrgApacheLuceneSearchFieldCacheImpl_Entry *)entryKey
                                         withBoolean:(jboolean)setDocsWithField;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchFieldCacheImpl:(OrgApacheLuceneSearchFieldCacheImpl *)wrapper;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldCacheImpl_FloatCache)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldCacheImpl_FloatCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl_FloatCache *self, OrgApacheLuceneSearchFieldCacheImpl *wrapper);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_FloatCache *new_OrgApacheLuceneSearchFieldCacheImpl_FloatCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl *wrapper) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_FloatCache *create_OrgApacheLuceneSearchFieldCacheImpl_FloatCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl *wrapper);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldCacheImpl_FloatCache)

#endif

#if !defined (OrgApacheLuceneSearchFieldCacheImpl_LongCache_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheImpl || defined(INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_LongCache))
#define OrgApacheLuceneSearchFieldCacheImpl_LongCache_

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchFieldCacheImpl;
@class OrgApacheLuceneSearchFieldCacheImpl_Entry;

@interface OrgApacheLuceneSearchFieldCacheImpl_LongCache : OrgApacheLuceneSearchFieldCacheImpl_Cache

#pragma mark Protected

- (id)createValueWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
       withOrgApacheLuceneSearchFieldCacheImpl_Entry:(OrgApacheLuceneSearchFieldCacheImpl_Entry *)entry_
                                         withBoolean:(jboolean)setDocsWithField;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchFieldCacheImpl:(OrgApacheLuceneSearchFieldCacheImpl *)wrapper;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldCacheImpl_LongCache)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldCacheImpl_LongCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl_LongCache *self, OrgApacheLuceneSearchFieldCacheImpl *wrapper);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_LongCache *new_OrgApacheLuceneSearchFieldCacheImpl_LongCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl *wrapper) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_LongCache *create_OrgApacheLuceneSearchFieldCacheImpl_LongCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl *wrapper);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldCacheImpl_LongCache)

#endif

#if !defined (OrgApacheLuceneSearchFieldCacheImpl_DoubleCache_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheImpl || defined(INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_DoubleCache))
#define OrgApacheLuceneSearchFieldCacheImpl_DoubleCache_

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchFieldCacheImpl;
@class OrgApacheLuceneSearchFieldCacheImpl_Entry;

@interface OrgApacheLuceneSearchFieldCacheImpl_DoubleCache : OrgApacheLuceneSearchFieldCacheImpl_Cache

#pragma mark Protected

- (id)createValueWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
       withOrgApacheLuceneSearchFieldCacheImpl_Entry:(OrgApacheLuceneSearchFieldCacheImpl_Entry *)entryKey
                                         withBoolean:(jboolean)setDocsWithField;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchFieldCacheImpl:(OrgApacheLuceneSearchFieldCacheImpl *)wrapper;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldCacheImpl_DoubleCache)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldCacheImpl_DoubleCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl_DoubleCache *self, OrgApacheLuceneSearchFieldCacheImpl *wrapper);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_DoubleCache *new_OrgApacheLuceneSearchFieldCacheImpl_DoubleCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl *wrapper) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_DoubleCache *create_OrgApacheLuceneSearchFieldCacheImpl_DoubleCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl *wrapper);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldCacheImpl_DoubleCache)

#endif

#if !defined (OrgApacheLuceneSearchFieldCacheImpl_StringCache_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheImpl || defined(INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_StringCache))
#define OrgApacheLuceneSearchFieldCacheImpl_StringCache_

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchFieldCacheImpl;
@class OrgApacheLuceneSearchFieldCacheImpl_Entry;

@interface OrgApacheLuceneSearchFieldCacheImpl_StringCache : OrgApacheLuceneSearchFieldCacheImpl_Cache

#pragma mark Protected

- (id)createValueWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
       withOrgApacheLuceneSearchFieldCacheImpl_Entry:(OrgApacheLuceneSearchFieldCacheImpl_Entry *)entryKey
                                         withBoolean:(jboolean)setDocsWithField;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchFieldCacheImpl:(OrgApacheLuceneSearchFieldCacheImpl *)wrapper;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldCacheImpl_StringCache)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldCacheImpl_StringCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl_StringCache *self, OrgApacheLuceneSearchFieldCacheImpl *wrapper);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_StringCache *new_OrgApacheLuceneSearchFieldCacheImpl_StringCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl *wrapper) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_StringCache *create_OrgApacheLuceneSearchFieldCacheImpl_StringCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl *wrapper);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldCacheImpl_StringCache)

#endif

#if !defined (OrgApacheLuceneSearchFieldCacheImpl_StringIndexCache_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheImpl || defined(INCLUDE_OrgApacheLuceneSearchFieldCacheImpl_StringIndexCache))
#define OrgApacheLuceneSearchFieldCacheImpl_StringIndexCache_

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchFieldCacheImpl;
@class OrgApacheLuceneSearchFieldCacheImpl_Entry;

@interface OrgApacheLuceneSearchFieldCacheImpl_StringIndexCache : OrgApacheLuceneSearchFieldCacheImpl_Cache

#pragma mark Protected

- (id)createValueWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
       withOrgApacheLuceneSearchFieldCacheImpl_Entry:(OrgApacheLuceneSearchFieldCacheImpl_Entry *)entryKey
                                         withBoolean:(jboolean)setDocsWithField;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchFieldCacheImpl:(OrgApacheLuceneSearchFieldCacheImpl *)wrapper;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldCacheImpl_StringIndexCache)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldCacheImpl_StringIndexCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl_StringIndexCache *self, OrgApacheLuceneSearchFieldCacheImpl *wrapper);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_StringIndexCache *new_OrgApacheLuceneSearchFieldCacheImpl_StringIndexCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl *wrapper) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldCacheImpl_StringIndexCache *create_OrgApacheLuceneSearchFieldCacheImpl_StringIndexCache_initWithOrgApacheLuceneSearchFieldCacheImpl_(OrgApacheLuceneSearchFieldCacheImpl *wrapper);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldCacheImpl_StringIndexCache)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFieldCacheImpl")