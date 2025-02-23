.class Lcom/google/common/collect/LinkedListMultimap$4;
.super Ljava/util/AbstractSequentialList;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$4;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4

    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$4;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;I)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$4;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$900(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    return v0
.end method
