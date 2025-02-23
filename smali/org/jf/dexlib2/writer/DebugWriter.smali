.class public Lorg/jf/dexlib2/writer/DebugWriter;
.super Ljava/lang/Object;


# static fields
.field private static final FIRST_SPECIAL:I = 0xa

.field private static final LINE_BASE:I = -0x4

.field private static final LINE_RANGE:I = 0xf


# instance fields
.field private currentAddress:I

.field private currentLine:I

.field private final stringSection:Lorg/jf/dexlib2/writer/StringSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final typeSection:Lorg/jf/dexlib2/writer/TypeSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final writer:Lorg/jf/dexlib2/writer/DexDataWriter;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/StringSection;Lorg/jf/dexlib2/writer/TypeSection;Lorg/jf/dexlib2/writer/DexDataWriter;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/writer/StringSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/writer/TypeSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    iput-object p2, p0, Lorg/jf/dexlib2/writer/DebugWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    iput-object p3, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    return-void
.end method

.method private writeAdvanceLine(I)V
    .registers 5

    iget v0, p0, Lorg/jf/dexlib2/writer/DebugWriter;->currentLine:I

    sub-int v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeSleb128(I)V

    iput p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->currentLine:I

    :cond_0
    return-void
.end method

.method private writeAdvancePC(I)V
    .registers 5

    iget v0, p0, Lorg/jf/dexlib2/writer/DebugWriter;->currentAddress:I

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    iput p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->currentAddress:I

    :cond_0
    return-void
.end method

.method private writeSpecialOpcode(II)V
    .registers 6

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    mul-int/lit8 v1, p2, 0xf

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget v0, p0, Lorg/jf/dexlib2/writer/DebugWriter;->currentLine:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jf/dexlib2/writer/DebugWriter;->currentLine:I

    iget p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->currentAddress:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->currentAddress:I

    return-void
.end method


# virtual methods
.method reset(I)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/jf/dexlib2/writer/DebugWriter;->currentAddress:I

    iput p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->currentLine:I

    return-void
.end method

.method public writeEndLocal(II)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/DebugWriter;->writeAdvancePC(I)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    return-void
.end method

.method public writeEpilogueBegin(I)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/DebugWriter;->writeAdvancePC(I)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    return-void
.end method

.method public writeLineNumber(II)V
    .registers 7

    iget v0, p0, Lorg/jf/dexlib2/writer/DebugWriter;->currentLine:I

    sub-int v0, p2, v0

    iget v1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->currentAddress:I

    sub-int v1, p1, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_5

    const/4 v3, -0x4

    if-lt v0, v3, :cond_0

    const/16 v3, 0xa

    if-le v0, v3, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lorg/jf/dexlib2/writer/DebugWriter;->writeAdvanceLine(I)V

    const/4 v0, 0x0

    :cond_1
    const/4 p2, 0x2

    if-ge v0, p2, :cond_2

    const/16 p2, 0x10

    if-gt v1, p2, :cond_3

    :cond_2
    const/4 p2, 0x1

    if-le v0, p2, :cond_4

    const/16 p2, 0xf

    if-le v1, p2, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/DebugWriter;->writeAdvancePC(I)V

    const/4 v1, 0x0

    :cond_4
    invoke-direct {p0, v0, v1}, Lorg/jf/dexlib2/writer/DebugWriter;->writeSpecialOpcode(II)V

    return-void

    :cond_5
    new-instance p1, Lorg/jf/util/ExceptionWithContext;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "debug info items must have non-decreasing code addresses"

    invoke-direct {p1, v0, p2}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public writePrologueEnd(I)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/DebugWriter;->writeAdvancePC(I)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    return-void
.end method

.method public writeRestartLocal(II)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/DebugWriter;->writeAdvancePC(I)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    return-void
.end method

.method public writeSetSourceFile(ILjava/lang/CharSequence;)V
    .registers 4
    .param p2    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/DebugWriter;->writeAdvancePC(I)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DebugWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    invoke-interface {v0, p2}, Lorg/jf/dexlib2/writer/StringSection;->getNullableItemIndex(Ljava/lang/Object;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    return-void
.end method

.method public writeStartLocal(IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 7
    .param p3    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DebugWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    invoke-interface {v0, p3}, Lorg/jf/dexlib2/writer/StringSection;->getNullableItemIndex(Ljava/lang/Object;)I

    move-result p3

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DebugWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    invoke-interface {v0, p4}, Lorg/jf/dexlib2/writer/TypeSection;->getNullableItemIndex(Ljava/lang/Object;)I

    move-result p4

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DebugWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    invoke-interface {v0, p5}, Lorg/jf/dexlib2/writer/StringSection;->getNullableItemIndex(Ljava/lang/Object;)I

    move-result p5

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/DebugWriter;->writeAdvancePC(I)V

    const/4 p1, -0x1

    if-ne p5, p1, :cond_0

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 p5, 0x3

    invoke-virtual {p1, p5}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p1, p4}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p1, p4}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DebugWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    add-int/lit8 p5, p5, 0x1

    invoke-virtual {p1, p5}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    return-void
.end method
