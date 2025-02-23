.class public interface abstract Lorg/jf/dexlib2/analysis/TypeProto;
.super Ljava/lang/Object;


# virtual methods
.method public abstract findMethodIndexInVtable(Lorg/jf/dexlib2/iface/reference/MethodReference;)I
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract getClassPath()Lorg/jf/dexlib2/analysis/ClassPath;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getCommonSuperclass(Lorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/TypeProto;
    .param p1    # Lorg/jf/dexlib2/analysis/TypeProto;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getFieldByOffset(I)Lorg/jf/dexlib2/iface/reference/FieldReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getMethodByVtableIndex(I)Lorg/jf/dexlib2/iface/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSuperclass()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract implementsInterface(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract isInterface()Z
.end method
