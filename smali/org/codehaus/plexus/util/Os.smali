.class public Lorg/codehaus/plexus/util/Os;
.super Ljava/lang/Object;


# static fields
.field public static final FAMILY_DOS:Ljava/lang/String; = "dos"

.field public static final FAMILY_MAC:Ljava/lang/String; = "mac"

.field public static final FAMILY_NETWARE:Ljava/lang/String; = "netware"

.field public static final FAMILY_OPENVMS:Ljava/lang/String; = "openvms"

.field public static final FAMILY_OS2:Ljava/lang/String; = "os/2"

.field public static final FAMILY_OS400:Ljava/lang/String; = "os/400"

.field public static final FAMILY_TANDEM:Ljava/lang/String; = "tandem"

.field public static final FAMILY_UNIX:Ljava/lang/String; = "unix"

.field public static final FAMILY_WIN9X:Ljava/lang/String; = "win9x"

.field public static final FAMILY_WINDOWS:Ljava/lang/String; = "windows"

.field public static final FAMILY_ZOS:Ljava/lang/String; = "z/os"

.field public static final OS_ARCH:Ljava/lang/String;

.field public static final OS_FAMILY:Ljava/lang/String;

.field public static final OS_NAME:Ljava/lang/String;

.field public static final OS_VERSION:Ljava/lang/String;

.field private static final PATH_SEP:Ljava/lang/String;

.field private static final validFamilies:Ljava/util/Set;


# instance fields
.field private arch:Ljava/lang/String;

.field private family:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lorg/codehaus/plexus/util/Os;->setValidFamilies()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/Os;->validFamilies:Ljava/util/Set;

    const-string v0, "path.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/Os;->PATH_SEP:Ljava/lang/String;

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/Os;->OS_NAME:Ljava/lang/String;

    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/Os;->OS_ARCH:Ljava/lang/String;

    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/Os;->OS_VERSION:Ljava/lang/String;

    invoke-static {}, Lorg/codehaus/plexus/util/Os;->getOsFamily()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/Os;->OS_FAMILY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/Os;->setFamily(Ljava/lang/String;)V

    return-void
.end method

.method private static getOsFamily()Ljava/lang/String;
    .registers 3

    sget-object v0, Lorg/codehaus/plexus/util/Os;->validFamilies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/plexus/util/Os;->validFamilies:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/codehaus/plexus/util/Os;->setValidFamilies()Ljava/util/Set;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/codehaus/plexus/util/Os;->isFamily(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getValidFamilies()Ljava/util/Set;
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lorg/codehaus/plexus/util/Os;->validFamilies:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static isArch(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, v0, p0, v0}, Lorg/codehaus/plexus/util/Os;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isFamily(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lorg/codehaus/plexus/util/Os;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isName(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0, v0, v0}, Lorg/codehaus/plexus/util/Os;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_11

    :cond_0
    const/4 v1, 0x1

    if-eqz p0, :cond_d

    const-string v2, "windows"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p0, Lorg/codehaus/plexus/util/Os;->OS_NAME:Ljava/lang/String;

    const-string v2, "windows"

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    goto/16 :goto_2

    :cond_1
    const-string v2, "os/2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p0, Lorg/codehaus/plexus/util/Os;->OS_NAME:Ljava/lang/String;

    const-string v2, "os/2"

    goto :goto_0

    :cond_2
    const-string v2, "netware"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object p0, Lorg/codehaus/plexus/util/Os;->OS_NAME:Ljava/lang/String;

    const-string v2, "netware"

    goto :goto_0

    :cond_3
    const-string v2, "dos"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object p0, Lorg/codehaus/plexus/util/Os;->PATH_SEP:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "netware"

    invoke-static {p0}, Lorg/codehaus/plexus/util/Os;->isFamily(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "windows"

    invoke-static {p0}, Lorg/codehaus/plexus/util/Os;->isFamily(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "win9x"

    invoke-static {p0}, Lorg/codehaus/plexus/util/Os;->isFamily(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_1

    :cond_4
    const/4 p0, 0x0

    goto/16 :goto_2

    :cond_5
    const-string v2, "mac"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object p0, Lorg/codehaus/plexus/util/Os;->OS_NAME:Ljava/lang/String;

    const-string v2, "mac"

    goto :goto_0

    :cond_6
    const-string v2, "tandem"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object p0, Lorg/codehaus/plexus/util/Os;->OS_NAME:Ljava/lang/String;

    const-string v2, "nonstop_kernel"

    goto :goto_0

    :cond_7
    const-string v2, "unix"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object p0, Lorg/codehaus/plexus/util/Os;->PATH_SEP:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "openvms"

    invoke-static {p0}, Lorg/codehaus/plexus/util/Os;->isFamily(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "mac"

    invoke-static {p0}, Lorg/codehaus/plexus/util/Os;->isFamily(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    sget-object p0, Lorg/codehaus/plexus/util/Os;->OS_NAME:Ljava/lang/String;

    const-string v2, "x"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto/16 :goto_1

    :cond_8
    const-string v2, "win9x"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string p0, "windows"

    invoke-static {p0}, Lorg/codehaus/plexus/util/Os;->isFamily(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lorg/codehaus/plexus/util/Os;->OS_NAME:Ljava/lang/String;

    const-string v2, "95"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_d

    sget-object p0, Lorg/codehaus/plexus/util/Os;->OS_NAME:Ljava/lang/String;

    const-string v2, "98"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_d

    sget-object p0, Lorg/codehaus/plexus/util/Os;->OS_NAME:Ljava/lang/String;

    const-string v2, "me"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_d

    sget-object p0, Lorg/codehaus/plexus/util/Os;->OS_NAME:Ljava/lang/String;

    const-string v2, "ce"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_9
    const-string v2, "z/os"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object p0, Lorg/codehaus/plexus/util/Os;->OS_NAME:Ljava/lang/String;

    const-string v2, "z/os"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_d

    sget-object p0, Lorg/codehaus/plexus/util/Os;->OS_NAME:Ljava/lang/String;

    const-string v2, "os/390"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_a
    const-string v2, "os/400"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object p0, Lorg/codehaus/plexus/util/Os;->OS_NAME:Ljava/lang/String;

    const-string v2, "os/400"

    goto/16 :goto_0

    :cond_b
    const-string v2, "openvms"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object p0, Lorg/codehaus/plexus/util/Os;->OS_NAME:Ljava/lang/String;

    const-string v2, "openvms"

    goto/16 :goto_0

    :cond_c
    sget-object v2, Lorg/codehaus/plexus/util/Os;->OS_NAME:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    goto :goto_2

    :cond_d
    :goto_1
    const/4 p0, 0x1

    :goto_2
    if-eqz p1, :cond_e

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lorg/codehaus/plexus/util/Os;->OS_NAME:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_3

    :cond_e
    const/4 p1, 0x1

    :goto_3
    if-eqz p2, :cond_f

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lorg/codehaus/plexus/util/Os;->OS_ARCH:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_4

    :cond_f
    const/4 p2, 0x1

    :goto_4
    if-eqz p3, :cond_10

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lorg/codehaus/plexus/util/Os;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    goto :goto_5

    :cond_10
    const/4 p3, 0x1

    :goto_5
    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    if-eqz p3, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public static isValidFamily(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lorg/codehaus/plexus/util/Os;->validFamilies:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isVersion(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, p0}, Lorg/codehaus/plexus/util/Os;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static setValidFamilies()Ljava/util/Set;
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "dos"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "mac"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "netware"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "os/2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "tandem"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "unix"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "windows"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "win9x"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "z/os"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "os/400"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "openvms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public eval()Z
    .registers 5

    iget-object v0, p0, Lorg/codehaus/plexus/util/Os;->family:Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/Os;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/codehaus/plexus/util/Os;->arch:Ljava/lang/String;

    iget-object v3, p0, Lorg/codehaus/plexus/util/Os;->version:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/codehaus/plexus/util/Os;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setArch(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/plexus/util/Os;->arch:Ljava/lang/String;

    return-void
.end method

.method public setFamily(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/plexus/util/Os;->family:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/plexus/util/Os;->name:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/plexus/util/Os;->version:Ljava/lang/String;

    return-void
.end method
