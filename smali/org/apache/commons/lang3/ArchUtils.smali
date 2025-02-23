.class public Lorg/apache/commons/lang3/ArchUtils;
.super Ljava/lang/Object;


# static fields
.field private static final ARCH_TO_PROCESSOR:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addProcessor(Ljava/lang/String;Lorg/apache/commons/lang3/arch/Processor;)V
    .registers 3

    sget-object v0, Lorg/apache/commons/lang3/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Key "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already exists in processor map"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static varargs addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V
    .registers 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-static {v2, p0}, Lorg/apache/commons/lang3/ArchUtils;->addProcessor(Ljava/lang/String;Lorg/apache/commons/lang3/arch/Processor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getProcessor()Lorg/apache/commons/lang3/arch/Processor;
    .registers 1

    sget-object v0, Lorg/apache/commons/lang3/SystemUtils;->OS_ARCH:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/ArchUtils;->getProcessor(Ljava/lang/String;)Lorg/apache/commons/lang3/arch/Processor;

    move-result-object v0

    return-object v0
.end method

.method public static getProcessor(Ljava/lang/String;)Lorg/apache/commons/lang3/arch/Processor;
    .registers 2

    sget-object v0, Lorg/apache/commons/lang3/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/arch/Processor;

    return-object p0
.end method

.method private static init()V
    .registers 0

    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_X86_32Bit()V

    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_X86_64Bit()V

    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_IA64_32Bit()V

    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_IA64_64Bit()V

    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_PPC_32Bit()V

    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_PPC_64Bit()V

    return-void
.end method

.method private static init_IA64_32Bit()V
    .registers 4

    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ia64_32"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ia64n"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static init_IA64_64Bit()V
    .registers 4

    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ia64"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ia64w"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static init_PPC_32Bit()V
    .registers 4

    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ppc"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "power"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "powerpc"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "power_pc"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "power_rs"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static init_PPC_64Bit()V
    .registers 4

    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ppc64"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "power64"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "powerpc64"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "power_pc64"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "power_rs64"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static init_X86_32Bit()V
    .registers 4

    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "x86"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "i386"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "i486"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "i586"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "i686"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "pentium"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static init_X86_64Bit()V
    .registers 4

    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "x86_64"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "amd64"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "em64t"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "universal"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method
