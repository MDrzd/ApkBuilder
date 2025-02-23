.class public Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;
.super Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem;

# interfaces
.implements Lorg/jf/dexlib2/iface/debug/EndLocal;


# instance fields
.field protected final name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final register:I

.field protected final signature:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final type:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem;-><init>(I)V

    iput p2, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;->register:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;->name:Ljava/lang/String;

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;->type:Ljava/lang/String;

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;->signature:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem;-><init>(I)V

    iput p2, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;->register:I

    iput-object p3, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;->name:Ljava/lang/String;

    iput-object p4, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;->type:Ljava/lang/String;

    iput-object p5, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;->signature:Ljava/lang/String;

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/debug/EndLocal;)Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;
    .registers 8
    .param p0    # Lorg/jf/dexlib2/iface/debug/EndLocal;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;

    return-object p0

    :cond_0
    new-instance v6, Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/debug/EndLocal;->getCodeAddress()I

    move-result v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/debug/EndLocal;->getRegister()I

    move-result v2

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/debug/EndLocal;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/debug/EndLocal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/debug/EndLocal;->getSignature()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public getDebugItemType()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRegister()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;->register:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;->type:Ljava/lang/String;

    return-object v0
.end method
