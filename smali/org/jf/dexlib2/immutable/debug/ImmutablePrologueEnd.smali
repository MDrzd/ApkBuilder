.class public Lorg/jf/dexlib2/immutable/debug/ImmutablePrologueEnd;
.super Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem;

# interfaces
.implements Lorg/jf/dexlib2/iface/debug/PrologueEnd;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem;-><init>(I)V

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/debug/PrologueEnd;)Lorg/jf/dexlib2/immutable/debug/ImmutablePrologueEnd;
    .registers 2
    .param p0    # Lorg/jf/dexlib2/iface/debug/PrologueEnd;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/debug/ImmutablePrologueEnd;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/debug/ImmutablePrologueEnd;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/debug/ImmutablePrologueEnd;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/debug/PrologueEnd;->getCodeAddress()I

    move-result p0

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/debug/ImmutablePrologueEnd;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getDebugItemType()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method
