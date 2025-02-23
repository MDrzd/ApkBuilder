.class final Lcom/google/common/util/concurrent/Striped$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field final synthetic val$permits:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/google/common/util/concurrent/Striped$4;->val$permits:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Striped$4;->get()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/util/concurrent/Semaphore;
    .registers 4

    new-instance v0, Ljava/util/concurrent/Semaphore;

    iget v1, p0, Lcom/google/common/util/concurrent/Striped$4;->val$permits:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    return-object v0
.end method
