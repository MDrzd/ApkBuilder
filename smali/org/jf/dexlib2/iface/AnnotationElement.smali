.class public interface abstract Lorg/jf/dexlib2/iface/AnnotationElement;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# virtual methods
.method public abstract compareTo(Lorg/jf/dexlib2/iface/AnnotationElement;)I
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getValue()Lorg/jf/dexlib2/iface/value/EncodedValue;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract hashCode()I
.end method
