.class public abstract Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/Instruction;


# instance fields
.field public final dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final instructionStart:I

.field public final opcode:Lorg/jf/dexlib2/Opcode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput-object p2, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;->opcode:Lorg/jf/dexlib2/Opcode;

    iput p3, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;->instructionStart:I

    return-void
.end method

.method private static buildInstruction(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;
    .registers 5
    .param p0    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance p1, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedUnknownInstruction;

    invoke-direct {p1, p0, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedUnknownInstruction;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object p1

    :cond_0
    sget-object v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction$1;->$SwitchMap$org$jf$dexlib2$Format:[I

    iget-object v1, p1, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    invoke-virtual {v1}, Lorg/jf/dexlib2/Format;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lorg/jf/util/ExceptionWithContext;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object p1, p1, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    invoke-virtual {p1}, Lorg/jf/dexlib2/Format;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "Unexpected opcode format: %s"

    invoke-direct {p0, p1, p2}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    new-instance p1, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;

    invoke-direct {p1, p0, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload;

    invoke-direct {p1, p0, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload;

    invoke-direct {p1, p0, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object p1

    :pswitch_3
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction51l;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction51l;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_4
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction4rcc;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction4rcc;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_5
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction45cc;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction45cc;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_6
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction3rms;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction3rms;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_7
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction3rmi;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction3rmi;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_8
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction3rc;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction3rc;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_9
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_a
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35ms;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35ms;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_b
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35c;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35c;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_c
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction32x;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction32x;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_d
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction31t;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction31t;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_e
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction31i;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction31i;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_f
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction31c;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction31c;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_10
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction30t;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction30t;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_11
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction23x;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction23x;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_12
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction22x;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction22x;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_13
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction22t;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction22t;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_14
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction22s;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction22s;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_15
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction22cs;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction22cs;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_16
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction22c;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction22c;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_17
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction22b;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction22b;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_18
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction21t;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction21t;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_19
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction21s;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction21s;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_1a
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction21lh;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction21lh;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_1b
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction21ih;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction21ih;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_1c
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction21c;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction21c;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_1d
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction20t;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction20t;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_1e
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction20bc;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction20bc;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_1f
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction12x;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction12x;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_20
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction11x;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction11x;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_21
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction11n;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction11n;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_22
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction10x;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction10x;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    :pswitch_23
    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction10t;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction10t;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readFrom(Lorg/jf/dexlib2/dexbacked/DexReader;)Lorg/jf/dexlib2/iface/instruction/Instruction;
    .registers 4
    .param p0    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexReader;->peekUbyte()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexReader;->peekUshort()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    check-cast v1, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getOpcodes()Lorg/jf/dexlib2/Opcodes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/Opcodes;->getOpcodeByValue(I)Lorg/jf/dexlib2/Opcode;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    check-cast v1, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v2

    invoke-static {v1, v0, v2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;->buildInstruction(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;

    move-result-object v0

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->moveRelative(I)V

    return-object v0
.end method


# virtual methods
.method public getCodeUnits()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;->opcode:Lorg/jf/dexlib2/Opcode;

    iget-object v0, v0, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    iget v0, v0, Lorg/jf/dexlib2/Format;->size:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getOpcode()Lorg/jf/dexlib2/Opcode;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;->opcode:Lorg/jf/dexlib2/Opcode;

    return-object v0
.end method
