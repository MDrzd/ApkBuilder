.class public Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction10x;
.super Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/formats/Instruction10x;


# static fields
.field public static final FORMAT:Lorg/jf/dexlib2/Format;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/jf/dexlib2/Format;->Format10x:Lorg/jf/dexlib2/Format;

    sput-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction10x;->FORMAT:Lorg/jf/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lorg/jf/dexlib2/Opcode;)V
    .registers 2
    .param p1    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;-><init>(Lorg/jf/dexlib2/Opcode;)V

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction10x;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction10x;
    .registers 2

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction10x;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction10x;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction10x;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction10x;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction10x;-><init>(Lorg/jf/dexlib2/Opcode;)V

    return-object v0
.end method


# virtual methods
.method public getFormat()Lorg/jf/dexlib2/Format;
    .registers 2

    sget-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction10x;->FORMAT:Lorg/jf/dexlib2/Format;

    return-object v0
.end method
