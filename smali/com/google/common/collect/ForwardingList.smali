.class public abstract Lcom/google/common/collect/ForwardingList;
.super Lcom/google/common/collect/ForwardingCollection;

# interfaces
.implements Ljava/util/List;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/List;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected standardAdd(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/ForwardingList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected standardAddAll(ILjava/lang/Iterable;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/Lists;->addAllImpl(Ljava/util/List;ILjava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method protected standardEquals(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->equalsImpl(Ljava/util/List;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected standardHashCode()I
    .registers 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/Lists;->hashCodeImpl(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected standardIndexOf(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->indexOfImpl(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected standardIterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected standardLastIndexOf(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->lastIndexOfImpl(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected standardListIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ForwardingList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected standardListIterator(I)Ljava/util/ListIterator;
    .registers 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->listIteratorImpl(Ljava/util/List;I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method protected standardSubList(II)Ljava/util/List;
    .registers 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/Lists;->subListImpl(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public subList(II)Ljava/util/List;
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
