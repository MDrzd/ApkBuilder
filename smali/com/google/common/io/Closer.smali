.class public final Lcom/google/common/io/Closer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# static fields
.field private static final SUPPRESSOR:Lcom/google/common/io/Closer$Suppressor;


# instance fields
.field private final stack:Ljava/util/Deque;

.field final suppressor:Lcom/google/common/io/Closer$Suppressor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private thrown:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/common/io/Closer$SuppressingSuppressor;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/io/Closer$SuppressingSuppressor;->INSTANCE:Lcom/google/common/io/Closer$SuppressingSuppressor;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/common/io/Closer$LoggingSuppressor;->INSTANCE:Lcom/google/common/io/Closer$LoggingSuppressor;

    :goto_0
    sput-object v0, Lcom/google/common/io/Closer;->SUPPRESSOR:Lcom/google/common/io/Closer$Suppressor;

    return-void
.end method

.method constructor <init>(Lcom/google/common/io/Closer$Suppressor;)V
    .registers 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/io/Closer;->stack:Ljava/util/Deque;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/io/Closer$Suppressor;

    iput-object p1, p0, Lcom/google/common/io/Closer;->suppressor:Lcom/google/common/io/Closer$Suppressor;

    return-void
.end method

.method public static create()Lcom/google/common/io/Closer;
    .registers 2

    new-instance v0, Lcom/google/common/io/Closer;

    sget-object v1, Lcom/google/common/io/Closer;->SUPPRESSOR:Lcom/google/common/io/Closer$Suppressor;

    invoke-direct {v0, v1}, Lcom/google/common/io/Closer;-><init>(Lcom/google/common/io/Closer$Suppressor;)V

    return-object v0
.end method


# virtual methods
.method public final close()V
    .registers 5

    iget-object v0, p0, Lcom/google/common/io/Closer;->thrown:Ljava/lang/Throwable;

    :goto_0
    iget-object v1, p0, Lcom/google/common/io/Closer;->stack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/common/io/Closer;->stack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/common/io/Closer;->suppressor:Lcom/google/common/io/Closer$Suppressor;

    invoke-interface {v3, v1, v0, v2}, Lcom/google/common/io/Closer$Suppressor;->suppress(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/common/io/Closer;->thrown:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-class v1, Ljava/io/IOException;

    invoke-static {v0, v1}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_3
    :goto_1
    return-void
.end method

.method public final register(Ljava/io/Closeable;)Ljava/io/Closeable;
    .registers 3
    .param p1    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/io/Closer;->stack:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public final rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 3

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/io/Closer;->thrown:Ljava/lang/Throwable;

    const-class v0, Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final rethrow(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;
    .registers 4

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/io/Closer;->thrown:Ljava/lang/Throwable;

    const-class v0, Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    invoke-static {p1, p2}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final rethrow(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/RuntimeException;
    .registers 5

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/io/Closer;->thrown:Ljava/lang/Throwable;

    const-class v0, Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    invoke-static {p1, p2, p3}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
