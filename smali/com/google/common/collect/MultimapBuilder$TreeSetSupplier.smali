.class final Lcom/google/common/collect/MultimapBuilder$TreeSetSupplier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;
.implements Ljava/io/Serializable;


# instance fields
.field private final comparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/MultimapBuilder$TreeSetSupplier;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MultimapBuilder$TreeSetSupplier;->get()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/util/SortedSet;
    .registers 3

    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/google/common/collect/MultimapBuilder$TreeSetSupplier;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
