.class public interface abstract Lorg/jf/dexlib2/iface/debug/StartLocal;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/debug/DebugItem;
.implements Lorg/jf/dexlib2/iface/debug/LocalInfo;


# virtual methods
.method public abstract getNameReference()Lorg/jf/dexlib2/iface/reference/StringReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getRegister()I
.end method

.method public abstract getSignatureReference()Lorg/jf/dexlib2/iface/reference/StringReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getTypeReference()Lorg/jf/dexlib2/iface/reference/TypeReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
