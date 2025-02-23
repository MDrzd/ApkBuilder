.class final Lcom/google/common/util/concurrent/Striped$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field final synthetic val$permits:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/google/common/util/concurrent/Striped$3;->val$permits:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Striped$3;->get()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/util/concurrent/Semaphore;
    .registers 3

    new-instance v0, Lcom/google/common/util/concurrent/Striped$PaddedSemaphore;

    iget v1, p0, Lcom/google/common/util/concurrent/Striped$3;->val$permits:I

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/Striped$PaddedSemaphore;-><init>(I)V

    return-object v0
.end method
