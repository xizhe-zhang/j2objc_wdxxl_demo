//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/queryParser/QueryParserTokenManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryParserQueryParserTokenManager")
#ifdef RESTRICT_OrgApacheLuceneQueryParserQueryParserTokenManager
#define INCLUDE_ALL_OrgApacheLuceneQueryParserQueryParserTokenManager 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryParserQueryParserTokenManager 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryParserQueryParserTokenManager

#if !defined (OrgApacheLuceneQueryParserQueryParserTokenManager_) && (INCLUDE_ALL_OrgApacheLuceneQueryParserQueryParserTokenManager || defined(INCLUDE_OrgApacheLuceneQueryParserQueryParserTokenManager))
#define OrgApacheLuceneQueryParserQueryParserTokenManager_

#define RESTRICT_OrgApacheLuceneQueryParserQueryParserConstants 1
#define INCLUDE_OrgApacheLuceneQueryParserQueryParserConstants 1
#include "org/apache/lucene/queryParser/QueryParserConstants.h"

@class IOSIntArray;
@class IOSLongArray;
@class IOSObjectArray;
@class JavaIoPrintStream;
@class OrgApacheLuceneQueryParserToken;
@protocol OrgApacheLuceneQueryParserCharStream;

@interface OrgApacheLuceneQueryParserQueryParserTokenManager : NSObject < OrgApacheLuceneQueryParserQueryParserConstants > {
 @public
  JavaIoPrintStream *debugStream_;
  id<OrgApacheLuceneQueryParserCharStream> input_stream_;
  jchar curChar_;
  jint curLexState_;
  jint defaultLexState_;
  jint jjnewStateCnt_;
  jint jjround_;
  jint jjmatchedPos_;
  jint jjmatchedKind_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueryParserCharStream:(id<OrgApacheLuceneQueryParserCharStream>)stream;

- (instancetype)initWithOrgApacheLuceneQueryParserCharStream:(id<OrgApacheLuceneQueryParserCharStream>)stream
                                                     withInt:(jint)lexState;

- (OrgApacheLuceneQueryParserToken *)getNextToken;

- (void)ReInitWithOrgApacheLuceneQueryParserCharStream:(id<OrgApacheLuceneQueryParserCharStream>)stream;

- (void)ReInitWithOrgApacheLuceneQueryParserCharStream:(id<OrgApacheLuceneQueryParserCharStream>)stream
                                               withInt:(jint)lexState;

- (void)setDebugStreamWithJavaIoPrintStream:(JavaIoPrintStream *)ds;

- (void)SwitchToWithInt:(jint)lexState;

#pragma mark Protected

- (OrgApacheLuceneQueryParserToken *)jjFillToken;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneQueryParserQueryParserTokenManager)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryParserQueryParserTokenManager, debugStream_, JavaIoPrintStream *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryParserQueryParserTokenManager, input_stream_, id<OrgApacheLuceneQueryParserCharStream>)

inline IOSLongArray *OrgApacheLuceneQueryParserQueryParserTokenManager_get_jjbitVec0(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryParserQueryParserTokenManager_jjbitVec0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryParserQueryParserTokenManager, jjbitVec0, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneQueryParserQueryParserTokenManager_get_jjbitVec1(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryParserQueryParserTokenManager_jjbitVec1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryParserQueryParserTokenManager, jjbitVec1, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneQueryParserQueryParserTokenManager_get_jjbitVec3(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryParserQueryParserTokenManager_jjbitVec3;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryParserQueryParserTokenManager, jjbitVec3, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneQueryParserQueryParserTokenManager_get_jjbitVec4(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryParserQueryParserTokenManager_jjbitVec4;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryParserQueryParserTokenManager, jjbitVec4, IOSLongArray *)

inline IOSIntArray *OrgApacheLuceneQueryParserQueryParserTokenManager_get_jjnextStates(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *OrgApacheLuceneQueryParserQueryParserTokenManager_jjnextStates;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryParserQueryParserTokenManager, jjnextStates, IOSIntArray *)

inline IOSObjectArray *OrgApacheLuceneQueryParserQueryParserTokenManager_get_jjstrLiteralImages(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneQueryParserQueryParserTokenManager_jjstrLiteralImages;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryParserQueryParserTokenManager, jjstrLiteralImages, IOSObjectArray *)

inline IOSObjectArray *OrgApacheLuceneQueryParserQueryParserTokenManager_get_lexStateNames(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneQueryParserQueryParserTokenManager_lexStateNames;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryParserQueryParserTokenManager, lexStateNames, IOSObjectArray *)

inline IOSIntArray *OrgApacheLuceneQueryParserQueryParserTokenManager_get_jjnewLexState(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *OrgApacheLuceneQueryParserQueryParserTokenManager_jjnewLexState;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryParserQueryParserTokenManager, jjnewLexState, IOSIntArray *)

inline IOSLongArray *OrgApacheLuceneQueryParserQueryParserTokenManager_get_jjtoToken(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryParserQueryParserTokenManager_jjtoToken;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryParserQueryParserTokenManager, jjtoToken, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneQueryParserQueryParserTokenManager_get_jjtoSkip(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryParserQueryParserTokenManager_jjtoSkip;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryParserQueryParserTokenManager, jjtoSkip, IOSLongArray *)

FOUNDATION_EXPORT void OrgApacheLuceneQueryParserQueryParserTokenManager_initWithOrgApacheLuceneQueryParserCharStream_(OrgApacheLuceneQueryParserQueryParserTokenManager *self, id<OrgApacheLuceneQueryParserCharStream> stream);

FOUNDATION_EXPORT OrgApacheLuceneQueryParserQueryParserTokenManager *new_OrgApacheLuceneQueryParserQueryParserTokenManager_initWithOrgApacheLuceneQueryParserCharStream_(id<OrgApacheLuceneQueryParserCharStream> stream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryParserQueryParserTokenManager *create_OrgApacheLuceneQueryParserQueryParserTokenManager_initWithOrgApacheLuceneQueryParserCharStream_(id<OrgApacheLuceneQueryParserCharStream> stream);

FOUNDATION_EXPORT void OrgApacheLuceneQueryParserQueryParserTokenManager_initWithOrgApacheLuceneQueryParserCharStream_withInt_(OrgApacheLuceneQueryParserQueryParserTokenManager *self, id<OrgApacheLuceneQueryParserCharStream> stream, jint lexState);

FOUNDATION_EXPORT OrgApacheLuceneQueryParserQueryParserTokenManager *new_OrgApacheLuceneQueryParserQueryParserTokenManager_initWithOrgApacheLuceneQueryParserCharStream_withInt_(id<OrgApacheLuceneQueryParserCharStream> stream, jint lexState) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryParserQueryParserTokenManager *create_OrgApacheLuceneQueryParserQueryParserTokenManager_initWithOrgApacheLuceneQueryParserCharStream_withInt_(id<OrgApacheLuceneQueryParserCharStream> stream, jint lexState);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryParserQueryParserTokenManager)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryParserQueryParserTokenManager")
