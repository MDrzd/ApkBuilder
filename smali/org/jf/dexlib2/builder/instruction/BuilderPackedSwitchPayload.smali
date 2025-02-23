.class public Lorg/jf/dexlib2/builder/instruction/BuilderPackedSwitchPayload;
.super Lorg/jf/dexlib2/builder/BuilderSwitchPayload;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;


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

    sget-object v0, Lorg/jf/dexlib2/Opcode;->PACKED_SWITCH_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    sput-object v0, Lorg/jf/dexlib2/builder/instruction/BuilderPackedSwitchPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 7
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lorg/jf/dexlib2/builder/instruction/BuilderPackedSwitchPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/builder/BuilderSwitchPayload;-><init>(Lorg/jf/dexlib2/Opcode;)V

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/builder/instruction/BuilderPackedSwitchPayload;->switchElements:Ljava/util/List;

    return-void

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderPackedSwitchPayload;->switchElements:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/builder/Label;

    iget-object v1, p0, Lorg/jf/dexlib2/builder/instruction/BuilderPackedSwitchPayload;->switchElements:Ljava/util/List;

    new-instance v2, Lorg/jf/dexlib2/builder/instruction/BuilderSwitchElement;

    add-int/lit8 v3, p1, 0x1

    invoke-direct {v2, p0, p1, v0}, Lorg/jf/dexlib2/builder/instruction/BuilderSwitchElement;-><init>(Lorg/jf/dexlib2/builder/BuilderSwitchPayload;ILorg/jf/dexlib2/builder/Label;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p1, v3

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCodeUnits()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderPackedSwitchPayload;->switchElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getFormat()Lorg/jf/dexlib2/Format;
    .registers 2

    sget-object v0, Lorg/jf/dexlib2/builder/instruction/BuilderPackedSwitchPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    iget-object v0, v0, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    return-object v0
.end method

.method public getSwitchElements()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderPackedSwitchPayload;->switchElements:Ljava/util/List;

    return-object v0
.end method
