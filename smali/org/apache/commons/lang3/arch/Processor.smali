.class public Lorg/apache/commons/lang3/arch/Processor;
.super Ljava/lang/Object;


# instance fields
.field private final arch:Lorg/apache/commons/lang3/arch/Processor$Arch;

.field private final type:Lorg/apache/commons/lang3/arch/Processor$Type;


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/arch/Processor;->arch:Lorg/apache/commons/lang3/arch/Processor$Arch;

    iput-object p2, p0, Lorg/apache/commons/lang3/arch/Processor;->type:Lorg/apache/commons/lang3/arch/Processor$Type;

    return-void
.end method


# virtual methods
.method public getArch()Lorg/apache/commons/lang3/arch/Processor$Arch;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/arch/Processor;->arch:Lorg/apache/commons/lang3/arch/Processor$Arch;

    return-object v0
.end method

.method public getType()Lorg/apache/commons/lang3/arch/Processor$Type;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/arch/Processor;->type:Lorg/apache/commons/lang3/arch/Processor$Type;

    return-object v0
.end method

.method public is32Bit()Z
    .registers 3

    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    iget-object v1, p0, Lorg/apache/commons/lang3/arch/Processor;->arch:Lorg/apache/commons/lang3/arch/Processor$Arch;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/arch/Processor$Arch;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public is64Bit()Z
    .registers 3

    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    iget-object v1, p0, Lorg/apache/commons/lang3/arch/Processor;->arch:Lorg/apache/commons/lang3/arch/Processor$Arch;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/arch/Processor$Arch;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isIA64()Z
    .registers 3

    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    iget-object v1, p0, Lorg/apache/commons/lang3/arch/Processor;->type:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/arch/Processor$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPPC()Z
    .registers 3

    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    iget-object v1, p0, Lorg/apache/commons/lang3/arch/Processor;->type:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/arch/Processor$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isX86()Z
    .registers 3

    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    iget-object v1, p0, Lorg/apache/commons/lang3/arch/Processor;->type:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/arch/Processor$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
