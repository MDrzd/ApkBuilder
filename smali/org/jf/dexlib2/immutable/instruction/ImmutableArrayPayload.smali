.class public Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;
.super Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;


# static fields
.field public static final OPCODE:Lorg/jf/dexlib2/Opcode;


# instance fields
.field protected final arrayElements:Lcom/google/common/collect/ImmutableList;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final elementWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/jf/dexlib2/Opcode;->ARRAY_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    sput-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    return-void
.end method

.method public constructor <init>(ILcom/google/common/collect/ImmutableList;)V
    .registers 4
    .param p2    # Lcom/google/common/collect/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;-><init>(Lorg/jf/dexlib2/Opcode;)V

    iput p1, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;->elementWidth:I

    invoke-static {p2}, Lorg/jf/util/ImmutableUtils;->nullToEmptyList(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;->arrayElements:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 4
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;-><init>(Lorg/jf/dexlib2/Opcode;)V

    iput p1, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;->elementWidth:I

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;->arrayElements:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;)Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;->getElementWidth()I

    move-result v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;->getArrayElements()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;-><init>(ILjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getArrayElements()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;->arrayElements:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getCodeUnits()I
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;->elementWidth:I

    iget-object v1, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;->arrayElements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getElementWidth()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;->elementWidth:I

    return v0
.end method

.method public getFormat()Lorg/jf/dexlib2/Format;
    .registers 2

    sget-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableArrayPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    iget-object v0, v0, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    return-object v0
.end method
