.class public Lorg/jf/dexlib2/analysis/PrimitiveProto;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/analysis/TypeProto;


# instance fields
.field protected final classPath:Lorg/jf/dexlib2/analysis/ClassPath;

.field protected final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/analysis/ClassPath;Ljava/lang/String;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/analysis/ClassPath;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/PrimitiveProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    iput-object p2, p0, Lorg/jf/dexlib2/analysis/PrimitiveProto;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public findMethodIndexInVtable(Lorg/jf/dexlib2/iface/reference/MethodReference;)I
    .registers 2
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 p1, -0x1

    return p1
.end method

.method public getClassPath()Lorg/jf/dexlib2/analysis/ClassPath;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/PrimitiveProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    return-object v0
.end method

.method public getCommonSuperclass(Lorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/TypeProto;
    .registers 4
    .param p1    # Lorg/jf/dexlib2/analysis/TypeProto;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance p1, Lorg/jf/util/ExceptionWithContext;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot call getCommonSuperclass on PrimitiveProto"

    invoke-direct {p1, v1, v0}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public getFieldByOffset(I)Lorg/jf/dexlib2/iface/reference/FieldReference;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMethodByVtableIndex(I)Lorg/jf/dexlib2/iface/Method;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSuperclass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/PrimitiveProto;->type:Ljava/lang/String;

    return-object v0
.end method

.method public implementsInterface(Ljava/lang/String;)Z
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public isInterface()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/PrimitiveProto;->type:Ljava/lang/String;

    return-object v0
.end method
