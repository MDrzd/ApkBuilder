.class final Lorg/jf/dexlib2/immutable/ImmutableAnnotation$1;
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

    check-cast p1, Lorg/jf/dexlib2/iface/Annotation;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/immutable/ImmutableAnnotation$1;->isImmutable(Lorg/jf/dexlib2/iface/Annotation;)Z

    move-result p1

    return p1
.end method

.method protected final isImmutable(Lorg/jf/dexlib2/iface/Annotation;)Z
    .registers 2
    .param p1    # Lorg/jf/dexlib2/iface/Annotation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    instance-of p1, p1, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;

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

    check-cast p1, Lorg/jf/dexlib2/iface/Annotation;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/immutable/ImmutableAnnotation$1;->makeImmutable(Lorg/jf/dexlib2/iface/Annotation;)Lorg/jf/dexlib2/immutable/ImmutableAnnotation;

    move-result-object p1

    return-object p1
.end method

.method protected final makeImmutable(Lorg/jf/dexlib2/iface/Annotation;)Lorg/jf/dexlib2/immutable/ImmutableAnnotation;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/iface/Annotation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-static {p1}, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;->of(Lorg/jf/dexlib2/iface/Annotation;)Lorg/jf/dexlib2/immutable/ImmutableAnnotation;

    move-result-object p1

    return-object p1
.end method
