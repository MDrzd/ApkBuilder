.class public Landroid/arch/core/internal/SafeIterableMap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

.field private mIterators:Ljava/util/WeakHashMap;

.field private mSize:I

.field private mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    iput v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mSize:I

    return-void
.end method

.method static synthetic access$100(Landroid/arch/core/internal/SafeIterableMap;)Landroid/arch/core/internal/SafeIterableMap$Entry;
    .registers 1

    iget-object p0, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    return-object p0
.end method


# virtual methods
.method public descendingIterator()Ljava/util/Iterator;
    .registers 4

    new-instance v0, Landroid/arch/core/internal/SafeIterableMap$DescendingIterator;

    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object v2, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    invoke-direct {v0, v1, v2}, Landroid/arch/core/internal/SafeIterableMap$DescendingIterator;-><init>(Landroid/arch/core/internal/SafeIterableMap$Entry;Landroid/arch/core/internal/SafeIterableMap$Entry;)V

    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public eldest()Ljava/util/Map$Entry;
    .registers 2

    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/arch/core/internal/SafeIterableMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {p0}, Landroid/arch/core/internal/SafeIterableMap;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/arch/core/internal/SafeIterableMap;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p1}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_4

    if-nez v4, :cond_5

    :cond_4
    if-eqz v3, :cond_3

    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_5
    return v2

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_7

    return v0

    :cond_7
    return v2
.end method

.method protected get(Ljava/lang/Object;)Landroid/arch/core/internal/SafeIterableMap$Entry;
    .registers 4

    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/arch/core/internal/SafeIterableMap$Entry;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/arch/core/internal/SafeIterableMap$AscendingIterator;

    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object v2, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    invoke-direct {v0, v1, v2}, Landroid/arch/core/internal/SafeIterableMap$AscendingIterator;-><init>(Landroid/arch/core/internal/SafeIterableMap$Entry;Landroid/arch/core/internal/SafeIterableMap$Entry;)V

    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public iteratorWithAdditions()Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;
    .registers 4

    new-instance v0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;-><init>(Landroid/arch/core/internal/SafeIterableMap;Landroid/arch/core/internal/SafeIterableMap$1;)V

    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public newest()Ljava/util/Map$Entry;
    .registers 2

    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    return-object v0
.end method

.method protected put(Ljava/lang/Object;Ljava/lang/Object;)Landroid/arch/core/internal/SafeIterableMap$Entry;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/arch/core/internal/SafeIterableMap$Entry;

    invoke-direct {v0, p1, p2}, Landroid/arch/core/internal/SafeIterableMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Landroid/arch/core/internal/SafeIterableMap;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/arch/core/internal/SafeIterableMap;->mSize:I

    iget-object p1, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-nez p1, :cond_0

    iput-object v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object p1, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object p1, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    return-object v0

    :cond_0
    iget-object p1, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v0, p1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object p1, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object p1, v0, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Landroid/arch/core/internal/SafeIterableMap;->get(Ljava/lang/Object;)Landroid/arch/core/internal/SafeIterableMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Landroid/arch/core/internal/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/arch/core/internal/SafeIterableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Landroid/arch/core/internal/SafeIterableMap$Entry;

    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Landroid/arch/core/internal/SafeIterableMap;->get(Ljava/lang/Object;)Landroid/arch/core/internal/SafeIterableMap$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mSize:I

    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/core/internal/SafeIterableMap$SupportRemove;

    invoke-interface {v2, p1}, Landroid/arch/core/internal/SafeIterableMap$SupportRemove;->supportRemove(Landroid/arch/core/internal/SafeIterableMap$Entry;)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object v2, p1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v2, v1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_1

    :cond_2
    iget-object v1, p1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    :goto_1
    iget-object v1, p1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object v2, p1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v2, v1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_2

    :cond_3
    iget-object v1, p1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    :goto_2
    iput-object v0, p1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v0, p1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object p1, p1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    return-object p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
