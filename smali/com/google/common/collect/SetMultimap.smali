.class public interface abstract Lcom/google/common/collect/SetMultimap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/collect/Multimap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# virtual methods
.method public abstract asMap()Ljava/util/Map;
.end method

.method public abstract entries()Ljava/util/Set;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/util/Set;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
.end method
