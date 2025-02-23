.class public Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21s;
.super Lorg/jf/dexlib2/builder/BuilderInstruction;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/formats/Instruction21s;


# static fields
.field public static final FORMAT:Lorg/jf/dexlib2/Format;


# instance fields
.field protected final literal:I

.field protected final registerA:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/jf/dexlib2/Format;->Format21s:Lorg/jf/dexlib2/Format;

    sput-object v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21s;->FORMAT:Lorg/jf/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lorg/jf/dexlib2/Opcode;II)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/builder/BuilderInstruction;-><init>(Lorg/jf/dexlib2/Opcode;)V

    invoke-static {p2}, Lorg/jf/dexlib2/util/Preconditions;->checkByteRegister(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21s;->registerA:I

    invoke-static {p3}, Lorg/jf/dexlib2/util/Preconditions;->checkShortLiteral(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21s;->literal:I

    return-void
.end method


# virtual methods
.method public getFormat()Lorg/jf/dexlib2/Format;
    .registers 2

    sget-object v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21s;->FORMAT:Lorg/jf/dexlib2/Format;

    return-object v0
.end method

.method public getNarrowLiteral()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21s;->literal:I

    return v0
.end method

.method public getRegisterA()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21s;->registerA:I

    return v0
.end method

.method public getWideLiteral()J
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21s;->literal:I

    int-to-long v0, v0

    return-wide v0
.end method
