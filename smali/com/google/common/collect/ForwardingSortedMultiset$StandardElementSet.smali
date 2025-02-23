.class public Lcom/google/common/collect/ForwardingSortedMultiset$StandardElementSet;
.super Lcom/google/common/collect/SortedMultisets$NavigableElementSet;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ForwardingSortedMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingSortedMultiset;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/ForwardingSortedMultiset$StandardElementSet;->this$0:Lcom/google/common/collect/ForwardingSortedMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    return-void
.end method
