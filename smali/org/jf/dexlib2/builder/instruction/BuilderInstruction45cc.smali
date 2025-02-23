.class public Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;
.super Lorg/jf/dexlib2/builder/BuilderInstruction;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/formats/Instruction45cc;


# static fields
.field public static final FORMAT:Lorg/jf/dexlib2/Format;


# instance fields
.field protected final reference:Lorg/jf/dexlib2/iface/reference/Reference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final reference2:Lorg/jf/dexlib2/iface/reference/Reference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final registerC:I

.field protected final registerCount:I

.field protected final registerD:I

.field protected final registerE:I

.field protected final registerF:I

.field protected final registerG:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/jf/dexlib2/Format;->Format45cc:Lorg/jf/dexlib2/Format;

    sput-object v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->FORMAT:Lorg/jf/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lorg/jf/dexlib2/Opcode;IIIIIILorg/jf/dexlib2/iface/reference/Reference;Lorg/jf/dexlib2/iface/reference/Reference;)V
    .registers 10
    .param p1    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p8    # Lorg/jf/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p9    # Lorg/jf/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/builder/BuilderInstruction;-><init>(Lorg/jf/dexlib2/Opcode;)V

    invoke-static {p2}, Lorg/jf/dexlib2/util/Preconditions;->check35cAnd45ccRegisterCount(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->registerCount:I

    const/4 p1, 0x0

    if-lez p2, :cond_0

    invoke-static {p3}, Lorg/jf/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput p3, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->registerC:I

    const/4 p3, 0x1

    if-le p2, p3, :cond_1

    invoke-static {p4}, Lorg/jf/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    iput p3, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->registerD:I

    const/4 p3, 0x2

    if-le p2, p3, :cond_2

    invoke-static {p5}, Lorg/jf/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p3

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    iput p3, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->registerE:I

    const/4 p3, 0x3

    if-le p2, p3, :cond_3

    invoke-static {p6}, Lorg/jf/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p3

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    :goto_3
    iput p3, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->registerF:I

    const/4 p3, 0x4

    if-le p2, p3, :cond_4

    invoke-static {p7}, Lorg/jf/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p1

    :cond_4
    iput p1, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->registerG:I

    iput-object p8, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->reference:Lorg/jf/dexlib2/iface/reference/Reference;

    iput-object p9, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->reference2:Lorg/jf/dexlib2/iface/reference/Reference;

    return-void
.end method


# virtual methods
.method public getFormat()Lorg/jf/dexlib2/Format;
    .registers 2

    sget-object v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->FORMAT:Lorg/jf/dexlib2/Format;

    return-object v0
.end method

.method public getReference()Lorg/jf/dexlib2/iface/reference/Reference;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->reference:Lorg/jf/dexlib2/iface/reference/Reference;

    return-object v0
.end method

.method public getReference2()Lorg/jf/dexlib2/iface/reference/Reference;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->reference2:Lorg/jf/dexlib2/iface/reference/Reference;

    return-object v0
.end method

.method public getReferenceType()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->opcode:Lorg/jf/dexlib2/Opcode;

    iget v0, v0, Lorg/jf/dexlib2/Opcode;->referenceType:I

    return v0
.end method

.method public getReferenceType2()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->opcode:Lorg/jf/dexlib2/Opcode;

    iget v0, v0, Lorg/jf/dexlib2/Opcode;->referenceType2:I

    return v0
.end method

.method public getRegisterC()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->registerC:I

    return v0
.end method

.method public getRegisterCount()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->registerCount:I

    return v0
.end method

.method public getRegisterD()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->registerD:I

    return v0
.end method

.method public getRegisterE()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->registerE:I

    return v0
.end method

.method public getRegisterF()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->registerF:I

    return v0
.end method

.method public getRegisterG()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction45cc;->registerG:I

    return v0
.end method
