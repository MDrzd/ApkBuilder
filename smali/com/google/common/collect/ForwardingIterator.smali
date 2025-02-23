.class public abstract Lcom/google/common/collect/ForwardingIterator;
.super Lcom/google/common/collect/ForwardingObject;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Iterator;
.end method

.method public hasNext()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
