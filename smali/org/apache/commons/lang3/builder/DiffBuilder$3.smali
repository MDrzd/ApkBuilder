.class Lorg/apache/commons/lang3/builder/DiffBuilder$3;
.super Lorg/apache/commons/lang3/builder/Diff;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

.field final synthetic val$lhs:B

.field final synthetic val$rhs:B


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;BB)V
    .registers 5

    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$3;->this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

    iput-byte p3, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$3;->val$lhs:B

    iput-byte p4, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$3;->val$rhs:B

    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/Byte;
    .registers 2

    iget-byte v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$3;->val$lhs:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeft()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$3;->getLeft()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Ljava/lang/Byte;
    .registers 2

    iget-byte v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$3;->val$rhs:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$3;->getRight()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
