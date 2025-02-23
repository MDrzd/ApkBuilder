.class Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;
.super Ljava/lang/Object;


# instance fields
.field public final isStatic:Z

.field public final normalOpcode:Lorg/jf/dexlib2/Opcode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final quickOpcode:Lorg/jf/dexlib2/Opcode;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final type:C

.field public final volatileOpcode:Lorg/jf/dexlib2/Opcode;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(CLorg/jf/dexlib2/Opcode;Lorg/jf/dexlib2/Opcode;)V
    .registers 4
    .param p2    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->type:C

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->isStatic:Z

    iput-object p2, p0, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->normalOpcode:Lorg/jf/dexlib2/Opcode;

    iput-object p3, p0, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->quickOpcode:Lorg/jf/dexlib2/Opcode;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->volatileOpcode:Lorg/jf/dexlib2/Opcode;

    return-void
.end method

.method public constructor <init>(CLorg/jf/dexlib2/Opcode;Lorg/jf/dexlib2/Opcode;Lorg/jf/dexlib2/Opcode;)V
    .registers 5
    .param p2    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->type:C

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->isStatic:Z

    iput-object p2, p0, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->normalOpcode:Lorg/jf/dexlib2/Opcode;

    iput-object p3, p0, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->quickOpcode:Lorg/jf/dexlib2/Opcode;

    iput-object p4, p0, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->volatileOpcode:Lorg/jf/dexlib2/Opcode;

    return-void
.end method

.method public constructor <init>(CZLorg/jf/dexlib2/Opcode;Lorg/jf/dexlib2/Opcode;)V
    .registers 5
    .param p3    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->type:C

    iput-boolean p2, p0, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->isStatic:Z

    iput-object p3, p0, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->normalOpcode:Lorg/jf/dexlib2/Opcode;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->quickOpcode:Lorg/jf/dexlib2/Opcode;

    iput-object p4, p0, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->volatileOpcode:Lorg/jf/dexlib2/Opcode;

    return-void
.end method
