.class public Lorg/jf/dexlib2/rewriter/RewriterUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rewriteIterable(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 3
    .param p0    # Lorg/jf/dexlib2/rewriter/Rewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance v0, Lorg/jf/dexlib2/rewriter/RewriterUtils$3;

    invoke-direct {v0, p1, p0}, Lorg/jf/dexlib2/rewriter/RewriterUtils$3;-><init>(Ljava/lang/Iterable;Lorg/jf/dexlib2/rewriter/Rewriter;)V

    return-object v0
.end method

.method public static rewriteList(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .param p0    # Lorg/jf/dexlib2/rewriter/Rewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance v0, Lorg/jf/dexlib2/rewriter/RewriterUtils$2;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/RewriterUtils$2;-><init>(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/util/List;)V

    return-object v0
.end method

.method public static rewriteNullable(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0    # Lorg/jf/dexlib2/rewriter/Rewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Lorg/jf/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static rewriteSet(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .param p0    # Lorg/jf/dexlib2/rewriter/Rewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance v0, Lorg/jf/dexlib2/rewriter/RewriterUtils$1;

    invoke-direct {v0, p1, p0}, Lorg/jf/dexlib2/rewriter/RewriterUtils$1;-><init>(Ljava/util/Set;Lorg/jf/dexlib2/rewriter/Rewriter;)V

    return-object v0
.end method

.method public static rewriteTypeReference(Lorg/jf/dexlib2/rewriter/Rewriter;Lorg/jf/dexlib2/iface/reference/TypeReference;)Lorg/jf/dexlib2/iface/reference/TypeReference;
    .registers 3
    .param p0    # Lorg/jf/dexlib2/rewriter/Rewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance v0, Lorg/jf/dexlib2/rewriter/RewriterUtils$4;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/RewriterUtils$4;-><init>(Lorg/jf/dexlib2/rewriter/Rewriter;Lorg/jf/dexlib2/iface/reference/TypeReference;)V

    return-object v0
.end method
