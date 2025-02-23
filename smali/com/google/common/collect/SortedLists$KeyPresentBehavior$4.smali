.class final enum Lcom/google/common/collect/SortedLists$KeyPresentBehavior$4;
.super Lcom/google/common/collect/SortedLists$KeyPresentBehavior;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;-><init>(Ljava/lang/String;ILcom/google/common/collect/SortedLists$1;)V

    return-void
.end method


# virtual methods
.method public final resultIndex(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .registers 6

    sget-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$4;->LAST_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->resultIndex(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
