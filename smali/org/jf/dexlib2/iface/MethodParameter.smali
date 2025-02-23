.class public interface abstract Lorg/jf/dexlib2/iface/MethodParameter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/debug/LocalInfo;
.implements Lorg/jf/dexlib2/iface/reference/TypeReference;


# virtual methods
.method public abstract getAnnotations()Ljava/util/Set;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSignature()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
