.class Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;
.super Lcom/google/common/collect/Synchronized$SynchronizedCollection;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/lang/Object;)V
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/google/common/collect/Synchronized$1;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3

    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;-><init>(Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;Ljava/util/Iterator;)V

    return-object v1
.end method
