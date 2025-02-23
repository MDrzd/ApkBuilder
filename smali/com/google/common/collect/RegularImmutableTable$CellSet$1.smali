.class Lcom/google/common/collect/RegularImmutableTable$CellSet$1;
.super Lcom/google/common/collect/ImmutableAsList;


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/RegularImmutableTable$CellSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$CellSet;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$CellSet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$CellSet;

    return-object v0
.end method

.method public get(I)Lcom/google/common/collect/Table$Cell;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$CellSet;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RegularImmutableTable;->getCell(I)Lcom/google/common/collect/Table$Cell;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$CellSet$1;->get(I)Lcom/google/common/collect/Table$Cell;

    move-result-object p1

    return-object p1
.end method
