.class public abstract Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/Instruction;


# static fields
.field private static final CONVERTER:Lorg/jf/util/ImmutableConverter;


# instance fields
.field protected final opcode:Lorg/jf/dexlib2/Opcode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    return-void
.end method

.method protected constructor <init>(Lorg/jf/dexlib2/Opcode;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;->getFormat()Lorg/jf/dexlib2/Format;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jf/dexlib2/util/Preconditions;->checkFormat(Lorg/jf/dexlib2/Opcode;Lorg/jf/dexlib2/Format;)V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;->opcode:Lorg/jf/dexlib2/Opcode;

    return-void
.end method

.method public static immutableListOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lorg/jf/util/ImmutableConverter;->toList(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/jf/dexlib2/iface/instruction/Instruction;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;

    return-object p0

    :cond_0
    sget-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction$2;->$SwitchMap$org$jf$dexlib2$Format:[I

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    iget-object v1, v1, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    invoke-virtual {v1}, Lorg/jf/dexlib2/Format;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected instruction type"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;->of(Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;)Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;->of(Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;)Lorg/jf/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;->of(Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;)Lorg/jf/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction51l;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction51l;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction51l;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction51l;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rms;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rms;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rms;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rms;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rmi;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rmi;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rmi;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rmi;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rc;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rc;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35mi;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35mi;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction35mi;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35mi;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35c;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35c;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction32x;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction32x;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction32x;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction32x;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction31t;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction31t;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31i;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction31i;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction31i;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction31i;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31c;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction31c;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction31c;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction31c;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction30t;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction30t;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction30t;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction30t;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction23x;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction23x;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction23x;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction23x;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22x;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction22x;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22x;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction22x;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22t;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction22t;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22t;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction22t;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22s;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction22s;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22s;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction22s;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22cs;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction22cs;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22cs;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction22cs;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction22c;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction22c;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22b;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction22b;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22b;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction22b;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21t;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction21t;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21t;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction21t;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21s;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction21s;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21s;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction21s;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21lh;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction21lh;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21lh;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction21lh;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21ih;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction21ih;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21ih;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction21ih;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction21c;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction21c;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20t;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction20t;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction20t;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction20t;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction20bc;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction20bc;

    move-result-object p0

    return-object p0

    :pswitch_1d
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction12x;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction12x;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction12x;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction12x;

    move-result-object p0

    return-object p0

    :pswitch_1e
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction11x;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction11x;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction11x;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction11x;

    move-result-object p0

    return-object p0

    :pswitch_1f
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction11n;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction11n;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction11n;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction11n;

    move-result-object p0

    return-object p0

    :pswitch_20
    instance-of v0, p0, Lorg/jf/dexlib2/iface/instruction/formats/UnknownInstruction;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/UnknownInstruction;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableUnknownInstruction;->of(Lorg/jf/dexlib2/iface/instruction/formats/UnknownInstruction;)Lorg/jf/dexlib2/immutable/instruction/ImmutableUnknownInstruction;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction10x;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction10x;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction10x;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction10x;

    move-result-object p0

    return-object p0

    :pswitch_21
    check-cast p0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction10t;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction10t;->of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction10t;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction10t;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public getCodeUnits()I
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;->getFormat()Lorg/jf/dexlib2/Format;

    move-result-object v0

    iget v0, v0, Lorg/jf/dexlib2/Format;->size:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public abstract getFormat()Lorg/jf/dexlib2/Format;
.end method

.method public getOpcode()Lorg/jf/dexlib2/Opcode;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;->opcode:Lorg/jf/dexlib2/Opcode;

    return-object v0
.end method
