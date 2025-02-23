.class public interface abstract Lorg/jf/dexlib2/iface/reference/TypeReference;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Comparable;
.implements Lorg/jf/dexlib2/iface/reference/Reference;


# virtual methods
.method public abstract compareTo(Ljava/lang/CharSequence;)I
    .param p1    # Ljava/lang/CharSequence;
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

.method public abstract getType()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract hashCode()I
.end method
