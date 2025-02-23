.class final Lcom/google/common/util/concurrent/Striped$5;
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

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Striped$5;->get()Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/util/concurrent/locks/ReadWriteLock;
    .registers 2

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    return-object v0
.end method
