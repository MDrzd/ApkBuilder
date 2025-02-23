.class public interface abstract Lorg/jf/dexlib2/iface/Method;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/Member;
.implements Lorg/jf/dexlib2/iface/reference/MethodReference;


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

.method public abstract getImplementation()Lorg/jf/dexlib2/iface/MethodImplementation;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getParameters()Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getReturnType()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
