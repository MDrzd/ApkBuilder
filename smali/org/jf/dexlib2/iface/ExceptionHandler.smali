.class public interface abstract Lorg/jf/dexlib2/iface/ExceptionHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# virtual methods
.method public abstract compareTo(Lorg/jf/dexlib2/iface/ExceptionHandler;)I
    .param p1    # Lorg/jf/dexlib2/iface/ExceptionHandler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getExceptionType()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getExceptionTypeReference()Lorg/jf/dexlib2/iface/reference/TypeReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getHandlerCodeAddress()I
.end method

.method public abstract hashCode()I
.end method
