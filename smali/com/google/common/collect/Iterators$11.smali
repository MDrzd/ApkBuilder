.class final Lcom/google/common/collect/Iterators$11;
.super Lcom/google/common/collect/AbstractIndexedListIterator;


# instance fields
.field final synthetic val$array:[Ljava/lang/Object;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(II[Ljava/lang/Object;I)V
    .registers 5

    iput-object p3, p0, Lcom/google/common/collect/Iterators$11;->val$array:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/common/collect/Iterators$11;->val$offset:I

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final get(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/Iterators$11;->val$array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/Iterators$11;->val$offset:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method
