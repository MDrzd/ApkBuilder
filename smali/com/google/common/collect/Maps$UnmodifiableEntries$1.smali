.class Lcom/google/common/collect/Maps$UnmodifiableEntries$1;
.super Lcom/google/common/collect/UnmodifiableIterator;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Maps$UnmodifiableEntries;

.field final synthetic val$delegate:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$UnmodifiableEntries;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->this$0:Lcom/google/common/collect/Maps$UnmodifiableEntries;

    iput-object p2, p0, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->val$delegate:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->val$delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->val$delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
