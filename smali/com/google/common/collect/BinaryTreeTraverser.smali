.class public abstract Lcom/google/common/collect/BinaryTreeTraverser;
.super Lcom/google/common/collect/TreeTraverser;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/TreeTraverser;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Deque;Lcom/google/common/base/Optional;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/collect/BinaryTreeTraverser;->pushIfPresent(Ljava/util/Deque;Lcom/google/common/base/Optional;)V

    return-void
.end method

.method private static pushIfPresent(Ljava/util/Deque;Lcom/google/common/base/Optional;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final children(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 3

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/BinaryTreeTraverser$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/BinaryTreeTraverser$1;-><init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final inOrderTraversal(Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;
    .registers 3

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/BinaryTreeTraverser$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/BinaryTreeTraverser$2;-><init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract leftChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;
.end method

.method postOrderIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;
    .registers 3

    new-instance v0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;-><init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method preOrderIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;
    .registers 3

    new-instance v0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;-><init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract rightChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;
.end method
