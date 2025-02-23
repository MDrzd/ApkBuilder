.class final Lcom/google/common/collect/ImmutableMultimap$Values;
.super Lcom/google/common/collect/ImmutableCollection;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient multimap:Lcom/google/common/collect/ImmutableMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/ImmutableMultimap;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final copyIntoArray([Ljava/lang/Object;I)I
    .registers 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "not present in emulated superclass"
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/ImmutableMultimap;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableMultimap;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p2

    goto :goto_0

    :cond_0
    return p2
.end method

.method final isPartialView()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->valueIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$Values;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->size()I

    move-result v0

    return v0
.end method
