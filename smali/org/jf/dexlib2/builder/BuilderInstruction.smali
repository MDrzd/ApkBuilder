.class public abstract Lorg/jf/dexlib2/builder/BuilderInstruction;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/Instruction;


# instance fields
.field location:Lorg/jf/dexlib2/builder/MethodLocation;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final opcode:Lorg/jf/dexlib2/Opcode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/jf/dexlib2/Opcode;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/jf/dexlib2/builder/BuilderInstruction;->getFormat()Lorg/jf/dexlib2/Format;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jf/dexlib2/util/Preconditions;->checkFormat(Lorg/jf/dexlib2/Opcode;Lorg/jf/dexlib2/Format;)V

    iput-object p1, p0, Lorg/jf/dexlib2/builder/BuilderInstruction;->opcode:Lorg/jf/dexlib2/Opcode;

    return-void
.end method


# virtual methods
.method public getCodeUnits()I
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/builder/BuilderInstruction;->getFormat()Lorg/jf/dexlib2/Format;

    move-result-object v0

    iget v0, v0, Lorg/jf/dexlib2/Format;->size:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public abstract getFormat()Lorg/jf/dexlib2/Format;
.end method

.method public getLocation()Lorg/jf/dexlib2/builder/MethodLocation;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/BuilderInstruction;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/builder/BuilderInstruction;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get the location of an instruction that hasn\'t been added to a method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOpcode()Lorg/jf/dexlib2/Opcode;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/BuilderInstruction;->opcode:Lorg/jf/dexlib2/Opcode;

    return-object v0
.end method
