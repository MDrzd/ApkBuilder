.class public Lorg/jf/dexlib2/analysis/ArrayProto;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/analysis/TypeProto;


# static fields
.field private static final BRACKETS:Ljava/lang/String;


# instance fields
.field protected final classPath:Lorg/jf/dexlib2/analysis/ClassPath;

.field protected final dimensions:I

.field protected final elementType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "["

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/google/common/base/Strings;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jf/dexlib2/analysis/ArrayProto;->BRACKETS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/jf/dexlib2/analysis/ClassPath;Ljava/lang/String;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/analysis/ClassPath;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, p1

    const-string p1, "Invalid array type: %s"

    invoke-direct {v0, p1, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    if-eqz v0, :cond_2

    iput v0, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->dimensions:I

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->elementType:Ljava/lang/String;

    return-void

    :cond_2
    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, p1

    const-string p1, "Invalid array type: %s"

    invoke-direct {v0, p1, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private static makeArrayType(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/jf/dexlib2/analysis/ArrayProto;->BRACKETS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public findMethodIndexInVtable(Lorg/jf/dexlib2/iface/reference/MethodReference;)I
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    const-string v1, "Ljava/lang/Object;"

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jf/dexlib2/analysis/TypeProto;->findMethodIndexInVtable(Lorg/jf/dexlib2/iface/reference/MethodReference;)I

    move-result p1

    return p1
.end method

.method public getClassPath()Lorg/jf/dexlib2/analysis/ClassPath;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    return-object v0
.end method

.method public getCommonSuperclass(Lorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/TypeProto;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/analysis/TypeProto;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    instance-of v0, p1, Lorg/jf/dexlib2/analysis/ArrayProto;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ArrayProto;->getElementType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jf/dexlib2/util/TypeUtils;->isPrimitiveType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, p1

    check-cast v0, Lorg/jf/dexlib2/analysis/ArrayProto;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/ArrayProto;->getElementType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jf/dexlib2/util/TypeUtils;->isPrimitiveType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->dimensions:I

    iget v2, v0, Lorg/jf/dexlib2/analysis/ArrayProto;->dimensions:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->elementType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    iget-object v0, v0, Lorg/jf/dexlib2/analysis/ArrayProto;->elementType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/jf/dexlib2/analysis/TypeProto;->getCommonSuperclass(Lorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v2

    if-ne v1, v2, :cond_1

    return-object p0

    :cond_1
    if-ne v0, v2, :cond_2

    return-object p1

    :cond_2
    iget-object p1, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-interface {v2}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->dimensions:I

    invoke-static {v0, v1}, Lorg/jf/dexlib2/analysis/ArrayProto;->makeArrayType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object p1

    return-object p1

    :cond_3
    iget p1, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->dimensions:I

    iget v0, v0, Lorg/jf/dexlib2/analysis/ArrayProto;->dimensions:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    const-string v1, "Ljava/lang/Object;"

    invoke-static {v1, p1}, Lorg/jf/dexlib2/analysis/ArrayProto;->makeArrayType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    iget v0, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->dimensions:I

    check-cast p1, Lorg/jf/dexlib2/analysis/ArrayProto;

    iget v1, p1, Lorg/jf/dexlib2/analysis/ArrayProto;->dimensions:I

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ArrayProto;->getElementType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jf/dexlib2/analysis/ArrayProto;->getElementType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object p0

    :cond_5
    iget-object p1, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    const-string v0, "Ljava/lang/Object;"

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object p1

    return-object p1

    :cond_6
    instance-of v0, p1, Lorg/jf/dexlib2/analysis/ClassProto;

    if-eqz v0, :cond_8

    :try_start_0
    invoke-interface {p1}, Lorg/jf/dexlib2/analysis/TypeProto;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/analysis/ArrayProto;->implementsInterface(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/jf/dexlib2/analysis/UnresolvedClassException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_7

    return-object p1

    :catch_0
    :cond_7
    iget-object p1, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    const-string v0, "Ljava/lang/Object;"

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-interface {p1, p0}, Lorg/jf/dexlib2/analysis/TypeProto;->getCommonSuperclass(Lorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object p1

    return-object p1
.end method

.method public getDimensions()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->dimensions:I

    return v0
.end method

.method public getElementType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->elementType:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldByOffset(I)Lorg/jf/dexlib2/iface/reference/FieldReference;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/jf/dexlib2/immutable/reference/ImmutableFieldReference;

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ArrayProto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "length"

    const-string v2, "int"

    invoke-direct {p1, v0, v1, v2}, Lorg/jf/dexlib2/immutable/reference/ImmutableFieldReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getImmediateElementType()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget v0, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->dimensions:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->elementType:Ljava/lang/String;

    iget v2, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->dimensions:I

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Lorg/jf/dexlib2/analysis/ArrayProto;->makeArrayType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->elementType:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodByVtableIndex(I)Lorg/jf/dexlib2/iface/Method;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    const-string v1, "Ljava/lang/Object;"

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jf/dexlib2/analysis/TypeProto;->getMethodByVtableIndex(I)Lorg/jf/dexlib2/iface/Method;

    move-result-object p1

    return-object p1
.end method

.method public getSuperclass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string v0, "Ljava/lang/Object;"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->elementType:Ljava/lang/String;

    iget v1, p0, Lorg/jf/dexlib2/analysis/ArrayProto;->dimensions:I

    invoke-static {v0, v1}, Lorg/jf/dexlib2/analysis/ArrayProto;->makeArrayType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public implementsInterface(Ljava/lang/String;)Z
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const-string v0, "Ljava/lang/Cloneable;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Ljava/io/Serializable;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isInterface()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ArrayProto;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
