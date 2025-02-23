.class Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;
.super Lcom/google/common/collect/ImmutableMapEntrySet;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableSortedMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableSortedMap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableSortedMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableSortedMap;Lcom/google/common/collect/RegularImmutableSortedMap$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableSortedMap;)V

    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .registers 2

    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;-><init>(Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;)V

    return-object v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method map()Lcom/google/common/collect/ImmutableMap;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableSortedMap;

    return-object v0
.end method
