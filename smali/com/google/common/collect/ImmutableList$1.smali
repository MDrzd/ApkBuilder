.class Lcom/google/common/collect/ImmutableList$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;II)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$1;->this$0:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$1;->this$0:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
