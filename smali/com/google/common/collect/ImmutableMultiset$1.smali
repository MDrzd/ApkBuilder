.class Lcom/google/common/collect/ImmutableMultiset$1;
.super Lcom/google/common/collect/UnmodifiableIterator;


# instance fields
.field element:Ljava/lang/Object;

.field remaining:I

.field final synthetic this$0:Lcom/google/common/collect/ImmutableMultiset;

.field final synthetic val$entryIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMultiset$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->remaining:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->remaining:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->element:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->remaining:I

    :cond_0
    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->remaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->remaining:I

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->element:Ljava/lang/Object;

    return-object v0
.end method
