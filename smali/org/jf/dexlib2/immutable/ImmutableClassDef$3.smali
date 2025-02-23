.class final Lorg/jf/dexlib2/immutable/ImmutableClassDef$3;
.super Lorg/jf/util/ImmutableConverter;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jf/util/ImmutableConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic isImmutable(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/iface/ClassDef;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/immutable/ImmutableClassDef$3;->isImmutable(Lorg/jf/dexlib2/iface/ClassDef;)Z

    move-result p1

    return p1
.end method

.method protected final isImmutable(Lorg/jf/dexlib2/iface/ClassDef;)Z
    .registers 2
    .param p1    # Lorg/jf/dexlib2/iface/ClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    instance-of p1, p1, Lorg/jf/dexlib2/immutable/ImmutableClassDef;

    return p1
.end method

.method protected final bridge synthetic makeImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/iface/ClassDef;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/immutable/ImmutableClassDef$3;->makeImmutable(Lorg/jf/dexlib2/iface/ClassDef;)Lorg/jf/dexlib2/immutable/ImmutableClassDef;

    move-result-object p1

    return-object p1
.end method

.method protected final makeImmutable(Lorg/jf/dexlib2/iface/ClassDef;)Lorg/jf/dexlib2/immutable/ImmutableClassDef;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/iface/ClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-static {p1}, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->of(Lorg/jf/dexlib2/iface/ClassDef;)Lorg/jf/dexlib2/immutable/ImmutableClassDef;

    move-result-object p1

    return-object p1
.end method
