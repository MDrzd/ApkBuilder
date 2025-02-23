.class Lorg/apache/commons/lang3/builder/DiffBuilder$14;
.super Lorg/apache/commons/lang3/builder/Diff;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

.field final synthetic val$lhs:[J

.field final synthetic val$rhs:[J


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[J[J)V
    .registers 5

    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

    iput-object p3, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->val$lhs:[J

    iput-object p4, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->val$rhs:[J

    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->getLeft()[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()[Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->val$lhs:[J

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->toObject([J)[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->getRight()[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRight()[Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->val$rhs:[J

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->toObject([J)[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
