.class public interface abstract Lcom/google/common/collect/Multiset;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# virtual methods
.method public abstract add(Ljava/lang/Object;I)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract add(Ljava/lang/Object;)Z
.end method

.method public abstract contains(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract containsAll(Ljava/util/Collection;)Z
.end method

.method public abstract count(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract elementSet()Ljava/util/Set;
.end method

.method public abstract entrySet()Ljava/util/Set;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract hashCode()I
.end method

.method public abstract iterator()Ljava/util/Iterator;
.end method

.method public abstract remove(Ljava/lang/Object;I)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract remove(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract removeAll(Ljava/util/Collection;)Z
.end method

.method public abstract retainAll(Ljava/util/Collection;)Z
.end method

.method public abstract setCount(Ljava/lang/Object;I)I
.end method

.method public abstract setCount(Ljava/lang/Object;II)Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
