.class public Lorg/jf/dexlib2/immutable/debug/ImmutableEpilogueBegin;
.super Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem;

# interfaces
.implements Lorg/jf/dexlib2/iface/debug/EpilogueBegin;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem;-><init>(I)V

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/debug/EpilogueBegin;)Lorg/jf/dexlib2/immutable/debug/ImmutableEpilogueBegin;
    .registers 2
    .param p0    # Lorg/jf/dexlib2/iface/debug/EpilogueBegin;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableEpilogueBegin;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/debug/ImmutableEpilogueBegin;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/debug/ImmutableEpilogueBegin;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/debug/EpilogueBegin;->getCodeAddress()I

    move-result p0

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/debug/ImmutableEpilogueBegin;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getDebugItemType()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method
