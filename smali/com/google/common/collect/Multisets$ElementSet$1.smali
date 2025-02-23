.class Lcom/google/common/collect/Multisets$ElementSet$1;
.super Lcom/google/common/collect/TransformedIterator;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multisets$ElementSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$ElementSet;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Multisets$ElementSet$1;->this$0:Lcom/google/common/collect/Multisets$ElementSet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method transform(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .registers 2

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$ElementSet$1;->transform(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
