.class public Lorg/jf/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;
.super Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;


# static fields
.field public static final OPCODE:Lorg/jf/dexlib2/Opcode;


# instance fields
.field protected final switchElements:Lcom/google/common/collect/ImmutableList;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/jf/dexlib2/Opcode;->SPARSE_SWITCH_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    sput-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .registers 3
    .param p1    # Lcom/google/common/collect/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;-><init>(Lorg/jf/dexlib2/Opcode;)V

    invoke-static {p1}, Lorg/jf/util/ImmutableUtils;->nullToEmptyList(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;->switchElements:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;-><init>(Lorg/jf/dexlib2/Opcode;)V

    invoke-static {p1}, Lorg/jf/dexlib2/immutable/instruction/ImmutableSwitchElement;->immutableListOf(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;->switchElements:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;)Lorg/jf/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getCodeUnits()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;->switchElements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getFormat()Lorg/jf/dexlib2/Format;
    .registers 2

    sget-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    iget-object v0, v0, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    return-object v0
.end method

.method public getSwitchElements()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;->switchElements:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method
