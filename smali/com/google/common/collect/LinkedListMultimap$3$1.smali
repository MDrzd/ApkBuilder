.class Lcom/google/common/collect/LinkedListMultimap$3$1;
.super Lcom/google/common/collect/TransformedListIterator;


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/LinkedListMultimap$3;

.field final synthetic val$nodeItr:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$3;Ljava/util/ListIterator;Lcom/google/common/collect/LinkedListMultimap$NodeIterator;)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$3$1;->this$1:Lcom/google/common/collect/LinkedListMultimap$3;

    iput-object p3, p0, Lcom/google/common/collect/LinkedListMultimap$3$1;->val$nodeItr:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedListIterator;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$3$1;->val$nodeItr:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$3$1;->transform(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method transform(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
