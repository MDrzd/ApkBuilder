.class public interface abstract Lorg/jf/dexlib2/iface/value/IntEncodedValue;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/value/EncodedValue;


# virtual methods
.method public abstract compareTo(Lorg/jf/dexlib2/iface/value/EncodedValue;)I
    .param p1    # Lorg/jf/dexlib2/iface/value/EncodedValue;
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

.method public abstract getValue()I
.end method

.method public abstract hashCode()I
.end method
