.class public interface abstract Lorg/jf/dexlib2/iface/Field;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/Member;
.implements Lorg/jf/dexlib2/iface/reference/FieldReference;


# virtual methods
.method public abstract getAccessFlags()I
.end method

.method public abstract getAnnotations()Ljava/util/Set;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getDefiningClass()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getInitialValue()Lorg/jf/dexlib2/iface/value/EncodedValue;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
