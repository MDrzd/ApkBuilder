.class public interface abstract Lorg/jf/dexlib2/iface/TryBlock;
.super Ljava/lang/Object;


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getCodeUnitCount()I
.end method

.method public abstract getExceptionHandlers()Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getStartCodeAddress()I
.end method
