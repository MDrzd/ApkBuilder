.class final Lcom/google/common/util/concurrent/Striped$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Striped$1;->get()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/util/concurrent/locks/Lock;
    .registers 2

    new-instance v0, Lcom/google/common/util/concurrent/Striped$PaddedLock;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Striped$PaddedLock;-><init>()V

    return-object v0
.end method
