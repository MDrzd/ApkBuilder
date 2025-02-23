.class public Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;
.super Lorg/jf/dexlib2/builder/BuilderSwitchPayload;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;


# static fields
.field public static final OPCODE:Lorg/jf/dexlib2/Opcode;


# instance fields
.field protected final switchElements:Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/jf/dexlib2/Opcode;->SPARSE_SWITCH_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    sput-object v0, Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/builder/BuilderSwitchPayload;-><init>(Lorg/jf/dexlib2/Opcode;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;->switchElements:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload$1;-><init>(Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;)V

    invoke-static {p1, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public getCodeUnits()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;->switchElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getFormat()Lorg/jf/dexlib2/Format;
    .registers 2

    sget-object v0, Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    iget-object v0, v0, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    return-object v0
.end method

.method public getSwitchElements()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;->switchElements:Ljava/util/List;

    return-object v0
.end method
