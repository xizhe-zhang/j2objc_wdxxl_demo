//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/util/fst/Outputs.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilFstOutputs")
#ifdef RESTRICT_OrgApacheLuceneUtilFstOutputs
#define INCLUDE_ALL_OrgApacheLuceneUtilFstOutputs 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilFstOutputs 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilFstOutputs

#if !defined (OrgApacheLuceneUtilFstOutputs_) && (INCLUDE_ALL_OrgApacheLuceneUtilFstOutputs || defined(INCLUDE_OrgApacheLuceneUtilFstOutputs))
#define OrgApacheLuceneUtilFstOutputs_

@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneStoreDataOutput;

@interface OrgApacheLuceneUtilFstOutputs : NSObject

#pragma mark Public

- (instancetype)init;

- (id)addWithId:(id)prefix
         withId:(id)output;

- (id)commonWithId:(id)output1
            withId:(id)output2;

- (id)getNoOutput;

- (id)mergeWithId:(id)first
           withId:(id)second;

- (NSString *)outputToStringWithId:(id)output;

- (id)readWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg;

- (id)subtractWithId:(id)output
              withId:(id)inc;

- (void)writeWithId:(id)output
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstOutputs)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstOutputs_init(OrgApacheLuceneUtilFstOutputs *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstOutputs)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilFstOutputs")
