.class public final Lcom/google/common/collect/Interners;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asFunction(Lcom/google/common/collect/Interner;)Lcom/google/common/base/Function;
    .registers 2

    new-instance v0, Lcom/google/common/collect/Interners$InternerFunction;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Interner;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Interners$InternerFunction;-><init>(Lcom/google/common/collect/Interner;)V

    return-object v0
.end method

.method public static newStrongInterner()Lcom/google/common/collect/Interner;
    .registers 2

    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Interners$1;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Interners$1;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-object v1
.end method

.method public static newWeakInterner()Lcom/google/common/collect/Interner;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    new-instance v0, Lcom/google/common/collect/Interners$WeakInterner;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/collect/Interners$WeakInterner;-><init>(Lcom/google/common/collect/Interners$1;)V

    return-object v0
.end method
