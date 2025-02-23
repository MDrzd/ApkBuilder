.class Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;
.super Lcom/google/common/collect/ImmutableAsList;


# instance fields
.field private final keyList:Lcom/google/common/collect/ImmutableList;

.field final synthetic this$1:Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;->this$1:Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V

    iget-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;->this$1:Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;

    iget-object p1, p1, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableSortedMap;

    invoke-virtual {p1}, Lcom/google/common/collect/RegularImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;->keyList:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;->this$1:Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;->get(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/Map$Entry;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;->keyList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;->this$1:Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;

    iget-object v1, v1, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableSortedMap;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableSortedMap;->access$100(Lcom/google/common/collect/RegularImmutableSortedMap;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
