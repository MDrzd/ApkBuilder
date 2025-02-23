.class final Lorg/jf/dexlib2/analysis/ClassProto$FieldGap$1;
.super Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;


# direct methods
.method constructor <init>(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;-><init>(IILorg/jf/dexlib2/analysis/ClassProto$1;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap$1;->compareTo(Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;)I

    move-result p1

    return p1
.end method

.method public final compareTo(Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;)I
    .registers 4
    .param p1    # Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget v0, p1, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;->size:I

    iget v1, p0, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap$1;->size:I

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap$1;->offset:I

    iget p1, p1, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;->offset:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result p1

    return p1
.end method
