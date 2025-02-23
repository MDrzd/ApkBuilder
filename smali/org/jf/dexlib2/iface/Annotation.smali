.class public interface abstract Lorg/jf/dexlib2/iface/Annotation;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/jf/dexlib2/iface/BasicAnnotation;


# virtual methods
.method public abstract compareTo(Lorg/jf/dexlib2/iface/Annotation;)I
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getElements()Ljava/util/Set;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getVisibility()I
.end method

.method public abstract hashCode()I
.end method
