.class public Lorg/jf/baksmali/Adaptors/EndTryLabelMethodItem;
.super Lorg/jf/baksmali/Adaptors/LabelMethodItem;


# instance fields
.field private endTryAddress:I


# direct methods
.method public constructor <init>(Lorg/jf/baksmali/BaksmaliOptions;II)V
    .registers 5
    .param p1    # Lorg/jf/baksmali/BaksmaliOptions;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const-string v0, "try_end_"

    invoke-direct {p0, p1, p2, v0}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;-><init>(Lorg/jf/baksmali/BaksmaliOptions;ILjava/lang/String;)V

    iput p3, p0, Lorg/jf/baksmali/Adaptors/EndTryLabelMethodItem;->endTryAddress:I

    return-void
.end method


# virtual methods
.method public getLabelAddress()I
    .registers 2

    iget v0, p0, Lorg/jf/baksmali/Adaptors/EndTryLabelMethodItem;->endTryAddress:I

    return v0
.end method

.method public getSortOrder()D
    .registers 3

    const-wide v0, 0x4059400000000000L    # 101.0

    return-wide v0
.end method
