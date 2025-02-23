.class public Lorg/jf/dexlib2/analysis/AnalyzedMethodUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canAccess(Lorg/jf/dexlib2/analysis/TypeProto;Lorg/jf/dexlib2/iface/Method;ZZZ)Z
    .registers 7
    .param p0    # Lorg/jf/dexlib2/analysis/TypeProto;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/jf/dexlib2/util/MethodUtil;->isPackagePrivate(Lorg/jf/dexlib2/iface/Method;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/jf/dexlib2/util/TypeUtils;->getPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jf/dexlib2/util/TypeUtils;->getPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Method;->getAccessFlags()I

    move-result p2

    sget-object p3, Lorg/jf/dexlib2/AccessFlags;->PROTECTED:Lorg/jf/dexlib2/AccessFlags;

    invoke-virtual {p3}, Lorg/jf/dexlib2/AccessFlags;->getValue()I

    move-result p3

    and-int/2addr p2, p3

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/jf/dexlib2/analysis/util/TypeProtoUtils;->extendsFrom(Lorg/jf/dexlib2/analysis/TypeProto;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {p0}, Lorg/jf/dexlib2/analysis/TypeProto;->getClassPath()Lorg/jf/dexlib2/analysis/ClassPath;

    move-result-object p2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jf/dexlib2/analysis/ClassPath;->getClassDef(Ljava/lang/String;)Lorg/jf/dexlib2/iface/ClassDef;

    move-result-object p1

    invoke-interface {p0}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/jf/dexlib2/util/TypeUtils;->canAccessClass(Ljava/lang/String;Lorg/jf/dexlib2/iface/ClassDef;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
