.class final Lcom/google/common/collect/Multisets$5;
.super Lcom/google/common/collect/Ordering;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/google/common/collect/Multiset$Entry;Lcom/google/common/collect/Multiset$Entry;)I
    .registers 3

    invoke-interface {p2}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result p2

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result p1

    invoke-static {p2, p1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    check-cast p2, Lcom/google/common/collect/Multiset$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multisets$5;->compare(Lcom/google/common/collect/Multiset$Entry;Lcom/google/common/collect/Multiset$Entry;)I

    move-result p1

    return p1
.end method
