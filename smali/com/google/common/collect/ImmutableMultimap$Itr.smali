.class abstract Lcom/google/common/collect/ImmutableMultimap$Itr;
.super Lcom/google/common/collect/UnmodifiableIterator;


# instance fields
.field key:Ljava/lang/Object;

.field final mapIterator:Ljava/util/Iterator;

.field final synthetic this$0:Lcom/google/common/collect/ImmutableMultimap;

.field valueIterator:Ljava/util/Iterator;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableMultimap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    iget-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMultimap;->asMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->mapIterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->key:Ljava/lang/Object;

    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ImmutableMultimap;Lcom/google/common/collect/ImmutableMultimap$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$Itr;-><init>(Lcom/google/common/collect/ImmutableMultimap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->mapIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->mapIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMultimap$Itr;->output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method
