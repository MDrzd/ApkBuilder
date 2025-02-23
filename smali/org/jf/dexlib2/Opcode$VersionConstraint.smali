.class Lorg/jf/dexlib2/Opcode$VersionConstraint;
.super Ljava/lang/Object;


# instance fields
.field public final apiRange:Lcom/google/common/collect/Range;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final artVersionRange:Lcom/google/common/collect/Range;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final opcodeValue:I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;I)V
    .registers 4
    .param p1    # Lcom/google/common/collect/Range;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/google/common/collect/Range;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/Opcode$VersionConstraint;->apiRange:Lcom/google/common/collect/Range;

    iput-object p2, p0, Lorg/jf/dexlib2/Opcode$VersionConstraint;->artVersionRange:Lcom/google/common/collect/Range;

    iput p3, p0, Lorg/jf/dexlib2/Opcode$VersionConstraint;->opcodeValue:I

    return-void
.end method
