.class public final Lorg/jf/dexlib2/util/TypeUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canAccessClass(Ljava/lang/String;Lorg/jf/dexlib2/iface/ClassDef;)Z
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/iface/ClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lorg/jf/dexlib2/AccessFlags;->PUBLIC:Lorg/jf/dexlib2/AccessFlags;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/ClassDef;->getAccessFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/AccessFlags;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {p1}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jf/dexlib2/util/TypeUtils;->getPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lorg/jf/dexlib2/util/TypeUtils;->getPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isPrimitiveType(Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isWideType(Ljava/lang/String;)Z
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x4a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x44

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isWideType(Lorg/jf/dexlib2/iface/reference/TypeReference;)Z
    .registers 1
    .param p0    # Lorg/jf/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jf/dexlib2/util/TypeUtils;->isWideType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
