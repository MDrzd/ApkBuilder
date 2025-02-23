.class public abstract Lorg/jf/dexlib2/writer/pool/BaseNullableOffsetPool;
.super Lorg/jf/dexlib2/writer/pool/BaseOffsetPool;

# interfaces
.implements Lorg/jf/dexlib2/writer/NullableOffsetSection;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/writer/pool/DexPool;)V
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/pool/DexPool;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/pool/BaseOffsetPool;-><init>(Lorg/jf/dexlib2/writer/pool/DexPool;)V

    return-void
.end method


# virtual methods
.method public getNullableItemOffset(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/pool/BaseNullableOffsetPool;->getItemOffset(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
