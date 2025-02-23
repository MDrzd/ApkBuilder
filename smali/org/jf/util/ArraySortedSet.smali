.class public Lorg/jf/util/ArraySortedSet;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field private final arr:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final comparator:Ljava/util/Comparator;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Comparator;[Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/util/ArraySortedSet;->comparator:Ljava/util/Comparator;

    iput-object p2, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    return-void
.end method

.method public static of(Ljava/util/Comparator;[Ljava/lang/Object;)Lorg/jf/util/ArraySortedSet;
    .registers 3
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance v0, Lorg/jf/util/ArraySortedSet;

    invoke-direct {v0, p0, p1}, Lorg/jf/util/ArraySortedSet;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Lorg/jf/util/ArraySortedSet;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jf/util/ArraySortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jf/util/ArraySortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/SortedSet;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/util/SortedSet;

    iget-object v1, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    array-length v1, v1

    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/jf/util/ArraySortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->elementsEqual(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result p1

    return p1

    :cond_2
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/util/Set;

    iget-object v1, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    array-length v1, v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0, p1}, Lorg/jf/util/ArraySortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_4
    return v0
.end method

.method public first()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6

    array-length v0, p1

    iget-object v1, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    array-length v1, v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iget-object v0, p0, Lorg/jf/util/ArraySortedSet;->arr:[Ljava/lang/Object;

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
