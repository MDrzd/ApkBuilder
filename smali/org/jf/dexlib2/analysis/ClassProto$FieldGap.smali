.class abstract Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final offset:I

.field public final size:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;->offset:I

    iput p2, p0, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;->size:I

    return-void
.end method

.method synthetic constructor <init>(IILorg/jf/dexlib2/analysis/ClassProto$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;-><init>(II)V

    return-void
.end method

.method public static newFieldGap(III)Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;
    .registers 4

    const/16 v0, 0x43

    if-lt p2, v0, :cond_0

    new-instance p2, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap$1;

    invoke-direct {p2, p0, p1}, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap$1;-><init>(II)V

    return-object p2

    :cond_0
    new-instance p2, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap$2;

    invoke-direct {p2, p0, p1}, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap$2;-><init>(II)V

    return-object p2
.end method
