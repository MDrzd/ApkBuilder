.class public Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final parameterAnnotations:Ljava/util/Iterator;

.field private final parameterNames:Ljava/util/Iterator;

.field private final parameterTypes:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/Iterator;)V
    .registers 4
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Iterator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;->parameterTypes:Ljava/util/Iterator;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;->parameterAnnotations:Ljava/util/Iterator;

    iput-object p3, p0, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;->parameterNames:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;->parameterTypes:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;->next()Lorg/jf/dexlib2/iface/MethodParameter;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jf/dexlib2/iface/MethodParameter;
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;->parameterTypes:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;->parameterAnnotations:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;->parameterAnnotations:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;->parameterNames:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;->parameterNames:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-instance v3, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator$1;

    invoke-direct {v3, p0, v1, v2, v0}, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator$1;-><init>(Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
