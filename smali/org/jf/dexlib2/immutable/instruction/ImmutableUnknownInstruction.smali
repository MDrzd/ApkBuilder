.class public Lorg/jf/dexlib2/immutable/instruction/ImmutableUnknownInstruction;
.super Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/formats/UnknownInstruction;


# static fields
.field public static final FORMAT:Lorg/jf/dexlib2/Format;


# instance fields
.field protected final originalOpcode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/jf/dexlib2/Format;->Format10x:Lorg/jf/dexlib2/Format;

    sput-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableUnknownInstruction;->FORMAT:Lorg/jf/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    sget-object v0, Lorg/jf/dexlib2/Opcode;->NOP:Lorg/jf/dexlib2/Opcode;

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;-><init>(Lorg/jf/dexlib2/Opcode;)V

    iput p1, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableUnknownInstruction;->originalOpcode:I

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/instruction/formats/UnknownInstruction;)Lorg/jf/dexlib2/immutable/instruction/ImmutableUnknownInstruction;
    .registers 2

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableUnknownInstruction;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableUnknownInstruction;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableUnknownInstruction;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/formats/UnknownInstruction;->getOriginalOpcode()I

    move-result p0

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableUnknownInstruction;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getFormat()Lorg/jf/dexlib2/Format;
    .registers 2

    sget-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableUnknownInstruction;->FORMAT:Lorg/jf/dexlib2/Format;

    return-object v0
.end method

.method public getOriginalOpcode()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableUnknownInstruction;->originalOpcode:I

    return v0
.end method
