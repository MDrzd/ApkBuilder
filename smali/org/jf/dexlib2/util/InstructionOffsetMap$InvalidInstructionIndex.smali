.class public Lorg/jf/dexlib2/util/InstructionOffsetMap$InvalidInstructionIndex;
.super Lorg/jf/util/ExceptionWithContext;


# instance fields
.field private final instructionIndex:I


# direct methods
.method public constructor <init>(I)V
    .registers 6

    const-string v0, "Instruction index out of bounds: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lorg/jf/dexlib2/util/InstructionOffsetMap$InvalidInstructionIndex;->instructionIndex:I

    return-void
.end method


# virtual methods
.method public getInstructionIndex()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/util/InstructionOffsetMap$InvalidInstructionIndex;->instructionIndex:I

    return v0
.end method
