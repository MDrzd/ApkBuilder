.class public Lorg/jf/dexlib2/builder/instruction/BuilderArrayPayload;
.super Lorg/jf/dexlib2/builder/BuilderInstruction;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;


# static fields
.field public static final OPCODE:Lorg/jf/dexlib2/Opcode;


# instance fields
.field protected final arrayElements:Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final elementWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/jf/dexlib2/Opcode;->ARRAY_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    sput-object v0, Lorg/jf/dexlib2/builder/instruction/BuilderArrayPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 4
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lorg/jf/dexlib2/builder/instruction/BuilderArrayPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/builder/BuilderInstruction;-><init>(Lorg/jf/dexlib2/Opcode;)V

    iput p1, p0, Lorg/jf/dexlib2/builder/instruction/BuilderArrayPayload;->elementWidth:I

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/jf/dexlib2/builder/instruction/BuilderArrayPayload;->arrayElements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getArrayElements()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderArrayPayload;->arrayElements:Ljava/util/List;

    return-object v0
.end method

.method public getCodeUnits()I
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderArrayPayload;->elementWidth:I

    iget-object v1, p0, Lorg/jf/dexlib2/builder/instruction/BuilderArrayPayload;->arrayElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getElementWidth()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderArrayPayload;->elementWidth:I

    return v0
.end method

.method public getFormat()Lorg/jf/dexlib2/Format;
    .registers 2

    sget-object v0, Lorg/jf/dexlib2/builder/instruction/BuilderArrayPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    iget-object v0, v0, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    return-object v0
.end method
