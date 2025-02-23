.class Lcom/google/common/collect/Synchronized$SynchronizedRandomAccessList;
.super Lcom/google/common/collect/Synchronized$SynchronizedList;

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method
