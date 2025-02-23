.class final Lcom/google/common/collect/MultimapBuilder$HashSetSupplier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;
.implements Ljava/io/Serializable;


# instance fields
.field private final expectedValuesPerKey:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/MultimapBuilder$HashSetSupplier;->expectedValuesPerKey:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MultimapBuilder$HashSetSupplier;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/util/Set;
    .registers 3

    new-instance v0, Ljava/util/HashSet;

    iget v1, p0, Lcom/google/common/collect/MultimapBuilder$HashSetSupplier;->expectedValuesPerKey:I

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method
