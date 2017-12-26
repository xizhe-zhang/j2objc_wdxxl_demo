//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/fst/FSTEnum.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/fst/FST.h"
#include "org/apache/lucene/util/fst/FSTEnum.h"
#include "org/apache/lucene/util/fst/Outputs.h"

@interface OrgApacheLuceneUtilFstFSTEnum ()

- (void)incr;

- (void)pushFirst;

- (void)pushLast;

- (OrgApacheLuceneUtilFstFST_Arc *)getArcWithInt:(jint)idx;

@end

__attribute__((unused)) static void OrgApacheLuceneUtilFstFSTEnum_rewindPrefix(OrgApacheLuceneUtilFstFSTEnum *self);

__attribute__((unused)) static void OrgApacheLuceneUtilFstFSTEnum_incr(OrgApacheLuceneUtilFstFSTEnum *self);

__attribute__((unused)) static void OrgApacheLuceneUtilFstFSTEnum_pushFirst(OrgApacheLuceneUtilFstFSTEnum *self);

__attribute__((unused)) static void OrgApacheLuceneUtilFstFSTEnum_pushLast(OrgApacheLuceneUtilFstFSTEnum *self);

__attribute__((unused)) static OrgApacheLuceneUtilFstFST_Arc *OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(OrgApacheLuceneUtilFstFSTEnum *self, jint idx);

@implementation OrgApacheLuceneUtilFstFSTEnum

- (instancetype)initWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)fst {
  OrgApacheLuceneUtilFstFSTEnum_initWithOrgApacheLuceneUtilFstFST_(self, fst);
  return self;
}

- (jint)getTargetLabel {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)getCurrentLabel {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)setCurrentLabelWithInt:(jint)label {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)grow {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)rewindPrefix {
  OrgApacheLuceneUtilFstFSTEnum_rewindPrefix(self);
}

- (void)doNext {
  if (upto_ == 0) {
    upto_ = 1;
    [((OrgApacheLuceneUtilFstFST *) nil_chk(fst_)) readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, 0) withOrgApacheLuceneUtilFstFST_Arc:OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, 1)];
  }
  else {
    while ([((OrgApacheLuceneUtilFstFST_Arc *) nil_chk(IOSObjectArray_Get(nil_chk(arcs_), upto_))) isLast]) {
      upto_--;
      if (upto_ == 0) {
        return;
      }
    }
    [((OrgApacheLuceneUtilFstFST *) nil_chk(fst_)) readNextArcWithOrgApacheLuceneUtilFstFST_Arc:IOSObjectArray_Get(nil_chk(arcs_), upto_)];
  }
  OrgApacheLuceneUtilFstFSTEnum_pushFirst(self);
}

- (void)doSeekCeil {
  OrgApacheLuceneUtilFstFSTEnum_rewindPrefix(self);
  OrgApacheLuceneUtilFstFST_Arc *arc = OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, upto_);
  jint targetLabel = [self getTargetLabel];
  while (true) {
    if (((OrgApacheLuceneUtilFstFST_Arc *) nil_chk(arc))->bytesPerArc_ != 0 && arc->label_ != -1) {
      OrgApacheLuceneUtilFstFST_BytesReader *in = [((OrgApacheLuceneUtilFstFST *) nil_chk(fst_)) getBytesReaderWithInt:0];
      jint low = arc->arcIdx_;
      jint high = arc->numArcs_ - 1;
      jint mid = 0;
      jboolean found = false;
      while (low <= high) {
        mid = JreURShift32((low + high), 1);
        ((OrgApacheLuceneUtilFstFST_BytesReader *) nil_chk(in))->pos_ = arc->posArcsStart_ - arc->bytesPerArc_ * mid - 1;
        jint midLabel = [fst_ readLabelWithOrgApacheLuceneStoreDataInput:in];
        jint cmp = midLabel - targetLabel;
        if (cmp < 0) low = mid + 1;
        else if (cmp > 0) high = mid - 1;
        else {
          found = true;
          break;
        }
      }
      if (found) {
        arc->arcIdx_ = mid - 1;
        [fst_ readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:arc withOrgApacheLuceneUtilFstFST_BytesReader:in];
        JreAssert(arc->arcIdx_ == mid, @"org/apache/lucene/util/fst/FSTEnum.java:172 condition failed: assert arc.arcIdx == mid;");
        JreAssert(arc->label_ == targetLabel, JreStrcat("$I$I$I", @"arc.label=", arc->label_, @" vs targetLabel=", targetLabel, @" mid=", mid));
        IOSObjectArray_Set(nil_chk(output_), upto_, [((OrgApacheLuceneUtilFstOutputs *) nil_chk(fst_->outputs_)) addWithId:IOSObjectArray_Get(output_, upto_ - 1) withId:arc->output_]);
        if (targetLabel == OrgApacheLuceneUtilFstFST_END_LABEL) {
          return;
        }
        [self setCurrentLabelWithInt:arc->label_];
        OrgApacheLuceneUtilFstFSTEnum_incr(self);
        arc = [fst_ readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:arc withOrgApacheLuceneUtilFstFST_Arc:OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, upto_)];
        targetLabel = [self getTargetLabel];
        continue;
      }
      else if (low == arc->numArcs_) {
        arc->arcIdx_ = arc->numArcs_ - 2;
        [fst_ readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:arc withOrgApacheLuceneUtilFstFST_BytesReader:in];
        JreAssert([arc isLast], @"org/apache/lucene/util/fst/FSTEnum.java:187 condition failed: assert arc.isLast();");
        upto_--;
        while (true) {
          if (upto_ == 0) {
            return;
          }
          OrgApacheLuceneUtilFstFST_Arc *prevArc = OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, upto_);
          if (![((OrgApacheLuceneUtilFstFST_Arc *) nil_chk(prevArc)) isLast]) {
            [fst_ readNextArcWithOrgApacheLuceneUtilFstFST_Arc:prevArc];
            OrgApacheLuceneUtilFstFSTEnum_pushFirst(self);
            return;
          }
          upto_--;
        }
      }
      else {
        arc->arcIdx_ = (low > high ? low : high) - 1;
        [fst_ readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:arc withOrgApacheLuceneUtilFstFST_BytesReader:in];
        JreAssert(arc->label_ > targetLabel, @"org/apache/lucene/util/fst/FSTEnum.java:207 condition failed: assert arc.label > targetLabel;");
        OrgApacheLuceneUtilFstFSTEnum_pushFirst(self);
        return;
      }
    }
    else {
      if (arc->label_ == targetLabel) {
        IOSObjectArray_Set(nil_chk(output_), upto_, [((OrgApacheLuceneUtilFstOutputs *) nil_chk(((OrgApacheLuceneUtilFstFST *) nil_chk(fst_))->outputs_)) addWithId:IOSObjectArray_Get(output_, upto_ - 1) withId:arc->output_]);
        if (targetLabel == OrgApacheLuceneUtilFstFST_END_LABEL) {
          return;
        }
        [self setCurrentLabelWithInt:arc->label_];
        OrgApacheLuceneUtilFstFSTEnum_incr(self);
        arc = [fst_ readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:arc withOrgApacheLuceneUtilFstFST_Arc:OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, upto_)];
        targetLabel = [self getTargetLabel];
      }
      else if (arc->label_ > targetLabel) {
        OrgApacheLuceneUtilFstFSTEnum_pushFirst(self);
        return;
      }
      else if ([arc isLast]) {
        upto_--;
        while (true) {
          if (upto_ == 0) {
            return;
          }
          OrgApacheLuceneUtilFstFST_Arc *prevArc = OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, upto_);
          if (![((OrgApacheLuceneUtilFstFST_Arc *) nil_chk(prevArc)) isLast]) {
            [((OrgApacheLuceneUtilFstFST *) nil_chk(fst_)) readNextArcWithOrgApacheLuceneUtilFstFST_Arc:prevArc];
            OrgApacheLuceneUtilFstFSTEnum_pushFirst(self);
            return;
          }
          upto_--;
        }
      }
      else {
        [((OrgApacheLuceneUtilFstFST *) nil_chk(fst_)) readNextArcWithOrgApacheLuceneUtilFstFST_Arc:arc];
      }
    }
  }
}

- (void)doSeekFloor {
  OrgApacheLuceneUtilFstFSTEnum_rewindPrefix(self);
  OrgApacheLuceneUtilFstFST_Arc *arc = OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, upto_);
  jint targetLabel = [self getTargetLabel];
  while (true) {
    if (((OrgApacheLuceneUtilFstFST_Arc *) nil_chk(arc))->bytesPerArc_ != 0 && arc->label_ != OrgApacheLuceneUtilFstFST_END_LABEL) {
      OrgApacheLuceneUtilFstFST_BytesReader *in = [((OrgApacheLuceneUtilFstFST *) nil_chk(fst_)) getBytesReaderWithInt:0];
      jint low = arc->arcIdx_;
      jint high = arc->numArcs_ - 1;
      jint mid = 0;
      jboolean found = false;
      while (low <= high) {
        mid = JreURShift32((low + high), 1);
        ((OrgApacheLuceneUtilFstFST_BytesReader *) nil_chk(in))->pos_ = arc->posArcsStart_ - arc->bytesPerArc_ * mid - 1;
        jint midLabel = [fst_ readLabelWithOrgApacheLuceneStoreDataInput:in];
        jint cmp = midLabel - targetLabel;
        if (cmp < 0) low = mid + 1;
        else if (cmp > 0) high = mid - 1;
        else {
          found = true;
          break;
        }
      }
      if (found) {
        arc->arcIdx_ = mid - 1;
        [fst_ readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:arc withOrgApacheLuceneUtilFstFST_BytesReader:in];
        JreAssert(arc->arcIdx_ == mid, @"org/apache/lucene/util/fst/FSTEnum.java:311 condition failed: assert arc.arcIdx == mid;");
        JreAssert(arc->label_ == targetLabel, JreStrcat("$I$I$I", @"arc.label=", arc->label_, @" vs targetLabel=", targetLabel, @" mid=", mid));
        IOSObjectArray_Set(nil_chk(output_), upto_, [((OrgApacheLuceneUtilFstOutputs *) nil_chk(fst_->outputs_)) addWithId:IOSObjectArray_Get(output_, upto_ - 1) withId:arc->output_]);
        if (targetLabel == OrgApacheLuceneUtilFstFST_END_LABEL) {
          return;
        }
        [self setCurrentLabelWithInt:arc->label_];
        OrgApacheLuceneUtilFstFSTEnum_incr(self);
        arc = [fst_ readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:arc withOrgApacheLuceneUtilFstFST_Arc:OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, upto_)];
        targetLabel = [self getTargetLabel];
        continue;
      }
      else if (high == -1) {
        while (true) {
          [fst_ readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, upto_ - 1) withOrgApacheLuceneUtilFstFST_Arc:arc];
          if (((OrgApacheLuceneUtilFstFST_Arc *) nil_chk(arc))->label_ < targetLabel) {
            while (![arc isLast] && [fst_ readNextArcLabelWithOrgApacheLuceneUtilFstFST_Arc:arc] < targetLabel) {
              [fst_ readNextArcWithOrgApacheLuceneUtilFstFST_Arc:arc];
            }
            OrgApacheLuceneUtilFstFSTEnum_pushLast(self);
            return;
          }
          upto_--;
          if (upto_ == 0) {
            return;
          }
          targetLabel = [self getTargetLabel];
          arc = OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, upto_);
        }
      }
      else {
        arc->arcIdx_ = (low > high ? high : low) - 1;
        [fst_ readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:arc withOrgApacheLuceneUtilFstFST_BytesReader:in];
        JreAssert([arc isLast] || [fst_ readNextArcLabelWithOrgApacheLuceneUtilFstFST_Arc:arc] > targetLabel, @"org/apache/lucene/util/fst/FSTEnum.java:354 condition failed: assert arc.isLast() || fst.readNextArcLabel(arc) > targetLabel;");
        JreAssert(arc->label_ < targetLabel, @"org/apache/lucene/util/fst/FSTEnum.java:355 condition failed: assert arc.label < targetLabel;");
        OrgApacheLuceneUtilFstFSTEnum_pushLast(self);
        return;
      }
    }
    else {
      if (arc->label_ == targetLabel) {
        IOSObjectArray_Set(nil_chk(output_), upto_, [((OrgApacheLuceneUtilFstOutputs *) nil_chk(((OrgApacheLuceneUtilFstFST *) nil_chk(fst_))->outputs_)) addWithId:IOSObjectArray_Get(output_, upto_ - 1) withId:arc->output_]);
        if (targetLabel == OrgApacheLuceneUtilFstFST_END_LABEL) {
          return;
        }
        [self setCurrentLabelWithInt:arc->label_];
        OrgApacheLuceneUtilFstFSTEnum_incr(self);
        arc = [fst_ readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:arc withOrgApacheLuceneUtilFstFST_Arc:OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, upto_)];
        targetLabel = [self getTargetLabel];
      }
      else if (arc->label_ > targetLabel) {
        while (true) {
          [((OrgApacheLuceneUtilFstFST *) nil_chk(fst_)) readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, upto_ - 1) withOrgApacheLuceneUtilFstFST_Arc:arc];
          if (((OrgApacheLuceneUtilFstFST_Arc *) nil_chk(arc))->label_ < targetLabel) {
            while (![arc isLast] && [fst_ readNextArcLabelWithOrgApacheLuceneUtilFstFST_Arc:arc] < targetLabel) {
              [fst_ readNextArcWithOrgApacheLuceneUtilFstFST_Arc:arc];
            }
            OrgApacheLuceneUtilFstFSTEnum_pushLast(self);
            return;
          }
          upto_--;
          if (upto_ == 0) {
            return;
          }
          targetLabel = [self getTargetLabel];
          arc = OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, upto_);
        }
      }
      else if (![arc isLast]) {
        if ([((OrgApacheLuceneUtilFstFST *) nil_chk(fst_)) readNextArcLabelWithOrgApacheLuceneUtilFstFST_Arc:arc] > targetLabel) {
          OrgApacheLuceneUtilFstFSTEnum_pushLast(self);
          return;
        }
        else {
          [fst_ readNextArcWithOrgApacheLuceneUtilFstFST_Arc:arc];
        }
      }
      else {
        OrgApacheLuceneUtilFstFSTEnum_pushLast(self);
        return;
      }
    }
  }
}

- (void)incr {
  OrgApacheLuceneUtilFstFSTEnum_incr(self);
}

- (void)pushFirst {
  OrgApacheLuceneUtilFstFSTEnum_pushFirst(self);
}

- (void)pushLast {
  OrgApacheLuceneUtilFstFSTEnum_pushLast(self);
}

- (OrgApacheLuceneUtilFstFST_Arc *)getArcWithInt:(jint)idx {
  return OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, idx);
}

- (void)dealloc {
  RELEASE_(fst_);
  RELEASE_(arcs_);
  RELEASE_(output_);
  RELEASE_(NO_OUTPUT_);
  RELEASE_(scratchArc_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, 1, -1, -1 },
    { NULL, "I", 0x404, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x404, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x404, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x404, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x14, -1, -1, 4, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, 4, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, 4, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, 4, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, 4, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, 4, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilFstFST_Arc;", 0x2, 5, 3, -1, 6, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneUtilFstFST:);
  methods[1].selector = @selector(getTargetLabel);
  methods[2].selector = @selector(getCurrentLabel);
  methods[3].selector = @selector(setCurrentLabelWithInt:);
  methods[4].selector = @selector(grow);
  methods[5].selector = @selector(rewindPrefix);
  methods[6].selector = @selector(doNext);
  methods[7].selector = @selector(doSeekCeil);
  methods[8].selector = @selector(doSeekFloor);
  methods[9].selector = @selector(incr);
  methods[10].selector = @selector(pushFirst);
  methods[11].selector = @selector(pushLast);
  methods[12].selector = @selector(getArcWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "fst_", "LOrgApacheLuceneUtilFstFST;", .constantValue.asLong = 0, 0x14, -1, -1, 7, -1 },
    { "arcs_", "[LOrgApacheLuceneUtilFstFST_Arc;", .constantValue.asLong = 0, 0x4, -1, -1, 8, -1 },
    { "output_", "[LNSObject;", .constantValue.asLong = 0, 0x4, -1, -1, 9, -1 },
    { "NO_OUTPUT_", "LNSObject;", .constantValue.asLong = 0, 0x14, -1, -1, 10, -1 },
    { "scratchArc_", "LOrgApacheLuceneUtilFstFST_Arc;", .constantValue.asLong = 0, 0x14, -1, -1, 11, -1 },
    { "upto_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "targetLength_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilFstFST;", "(Lorg/apache/lucene/util/fst/FST<TT;>;)V", "setCurrentLabel", "I", "LJavaIoIOException;", "getArc", "(I)Lorg/apache/lucene/util/fst/FST$Arc<TT;>;", "Lorg/apache/lucene/util/fst/FST<TT;>;", "[Lorg/apache/lucene/util/fst/FST$Arc<TT;>;", "[TT;", "TT;", "Lorg/apache/lucene/util/fst/FST$Arc<TT;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstFSTEnum = { "FSTEnum", "org.apache.lucene.util.fst", ptrTable, methods, fields, 7, 0x400, 13, 7, -1, -1, -1, 12, -1 };
  return &_OrgApacheLuceneUtilFstFSTEnum;
}

@end

void OrgApacheLuceneUtilFstFSTEnum_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilFstFSTEnum *self, OrgApacheLuceneUtilFstFST *fst) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->arcs_, [IOSObjectArray newArrayWithLength:10 type:OrgApacheLuceneUtilFstFST_Arc_class_()]);
  JreStrongAssign(&self->output_, [IOSObjectArray arrayWithLength:10 type:NSObject_class_()]);
  JreStrongAssignAndConsume(&self->scratchArc_, new_OrgApacheLuceneUtilFstFST_Arc_init());
  JreStrongAssign(&self->fst_, fst);
  JreStrongAssign(&self->NO_OUTPUT_, [((OrgApacheLuceneUtilFstOutputs *) nil_chk(((OrgApacheLuceneUtilFstFST *) nil_chk(fst))->outputs_)) getNoOutput]);
  [fst getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, 0)];
  IOSObjectArray_Set(nil_chk(self->output_), 0, self->NO_OUTPUT_);
}

void OrgApacheLuceneUtilFstFSTEnum_rewindPrefix(OrgApacheLuceneUtilFstFSTEnum *self) {
  if (self->upto_ == 0) {
    self->upto_ = 1;
    [((OrgApacheLuceneUtilFstFST *) nil_chk(self->fst_)) readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, 0) withOrgApacheLuceneUtilFstFST_Arc:OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, 1)];
    return;
  }
  jint currentLimit = self->upto_;
  self->upto_ = 1;
  while (self->upto_ < currentLimit && self->upto_ <= self->targetLength_ + 1) {
    jint cmp = [self getCurrentLabel] - [self getTargetLabel];
    if (cmp < 0) {
      break;
    }
    else if (cmp > 0) {
      OrgApacheLuceneUtilFstFST_Arc *arc = OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, self->upto_);
      [((OrgApacheLuceneUtilFstFST *) nil_chk(self->fst_)) readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, self->upto_ - 1) withOrgApacheLuceneUtilFstFST_Arc:arc];
      break;
    }
    self->upto_++;
  }
}

void OrgApacheLuceneUtilFstFSTEnum_incr(OrgApacheLuceneUtilFstFSTEnum *self) {
  self->upto_++;
  [self grow];
  if (((IOSObjectArray *) nil_chk(self->arcs_))->size_ <= self->upto_) {
    IOSObjectArray *newArcs = [IOSObjectArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(1 + self->upto_, JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF)) type:OrgApacheLuceneUtilFstFST_Arc_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->arcs_, 0, newArcs, 0, ((IOSObjectArray *) nil_chk(self->arcs_))->size_);
    JreStrongAssign(&self->arcs_, newArcs);
  }
  if (((IOSObjectArray *) nil_chk(self->output_))->size_ <= self->upto_) {
    IOSObjectArray *newOutput = [IOSObjectArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(1 + self->upto_, JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF)) type:NSObject_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->output_, 0, newOutput, 0, ((IOSObjectArray *) nil_chk(self->output_))->size_);
    JreStrongAssign(&self->output_, newOutput);
  }
}

void OrgApacheLuceneUtilFstFSTEnum_pushFirst(OrgApacheLuceneUtilFstFSTEnum *self) {
  OrgApacheLuceneUtilFstFST_Arc *arc = IOSObjectArray_Get(nil_chk(self->arcs_), self->upto_);
  JreAssert(arc != nil, @"org/apache/lucene/util/fst/FSTEnum.java:435 condition failed: assert arc != null;");
  while (true) {
    IOSObjectArray_Set(nil_chk(self->output_), self->upto_, [((OrgApacheLuceneUtilFstOutputs *) nil_chk(((OrgApacheLuceneUtilFstFST *) nil_chk(self->fst_))->outputs_)) addWithId:IOSObjectArray_Get(self->output_, self->upto_ - 1) withId:((OrgApacheLuceneUtilFstFST_Arc *) nil_chk(arc))->output_]);
    if (arc->label_ == OrgApacheLuceneUtilFstFST_END_LABEL) {
      break;
    }
    [self setCurrentLabelWithInt:arc->label_];
    OrgApacheLuceneUtilFstFSTEnum_incr(self);
    OrgApacheLuceneUtilFstFST_Arc *nextArc = OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, self->upto_);
    [self->fst_ readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:arc withOrgApacheLuceneUtilFstFST_Arc:nextArc];
    arc = nextArc;
  }
}

void OrgApacheLuceneUtilFstFSTEnum_pushLast(OrgApacheLuceneUtilFstFSTEnum *self) {
  OrgApacheLuceneUtilFstFST_Arc *arc = IOSObjectArray_Get(nil_chk(self->arcs_), self->upto_);
  JreAssert(arc != nil, @"org/apache/lucene/util/fst/FSTEnum.java:458 condition failed: assert arc != null;");
  while (true) {
    [self setCurrentLabelWithInt:((OrgApacheLuceneUtilFstFST_Arc *) nil_chk(arc))->label_];
    IOSObjectArray_Set(nil_chk(self->output_), self->upto_, [((OrgApacheLuceneUtilFstOutputs *) nil_chk(((OrgApacheLuceneUtilFstFST *) nil_chk(self->fst_))->outputs_)) addWithId:IOSObjectArray_Get(self->output_, self->upto_ - 1) withId:arc->output_]);
    if (arc->label_ == OrgApacheLuceneUtilFstFST_END_LABEL) {
      break;
    }
    OrgApacheLuceneUtilFstFSTEnum_incr(self);
    arc = [self->fst_ readLastTargetArcWithOrgApacheLuceneUtilFstFST_Arc:arc withOrgApacheLuceneUtilFstFST_Arc:OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(self, self->upto_)];
  }
}

OrgApacheLuceneUtilFstFST_Arc *OrgApacheLuceneUtilFstFSTEnum_getArcWithInt_(OrgApacheLuceneUtilFstFSTEnum *self, jint idx) {
  if (IOSObjectArray_Get(nil_chk(self->arcs_), idx) == nil) {
    IOSObjectArray_SetAndConsume(self->arcs_, idx, new_OrgApacheLuceneUtilFstFST_Arc_init());
  }
  return IOSObjectArray_Get(nil_chk(self->arcs_), idx);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstFSTEnum)
