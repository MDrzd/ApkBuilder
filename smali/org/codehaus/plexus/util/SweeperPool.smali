.class public Lorg/codehaus/plexus/util/SweeperPool;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private transient maxSize:I

.field private transient minSize:I

.field private pooledObjects:Ljava/util/ArrayList;

.field private shuttingDown:Z

.field private transient sweeper:Lorg/codehaus/plexus/util/SweeperPool$Sweeper;

.field private triggerSize:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->shuttingDown:Z

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/SweeperPool;->saneConvert(I)I

    move-result p1

    iput p1, p0, Lorg/codehaus/plexus/util/SweeperPool;->maxSize:I

    invoke-direct {p0, p2}, Lorg/codehaus/plexus/util/SweeperPool;->saneConvert(I)I

    move-result p1

    iput p1, p0, Lorg/codehaus/plexus/util/SweeperPool;->minSize:I

    invoke-direct {p0, p5}, Lorg/codehaus/plexus/util/SweeperPool;->saneConvert(I)I

    move-result p1

    iput p1, p0, Lorg/codehaus/plexus/util/SweeperPool;->triggerSize:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/codehaus/plexus/util/SweeperPool;->pooledObjects:Ljava/util/ArrayList;

    if-lez p4, :cond_0

    new-instance p1, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;

    invoke-direct {p1, p0, p4}, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;-><init>(Lorg/codehaus/plexus/util/SweeperPool;I)V

    iput-object p1, p0, Lorg/codehaus/plexus/util/SweeperPool;->sweeper:Lorg/codehaus/plexus/util/SweeperPool$Sweeper;

    iget-object p1, p0, Lorg/codehaus/plexus/util/SweeperPool;->sweeper:Lorg/codehaus/plexus/util/SweeperPool$Sweeper;

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->start()V

    :cond_0
    return-void
.end method

.method private saneConvert(I)I
    .registers 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method


# virtual methods
.method public dispose()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->shuttingDown:Z

    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->sweeper:Lorg/codehaus/plexus/util/SweeperPool$Sweeper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->sweeper:Lorg/codehaus/plexus/util/SweeperPool$Sweeper;

    invoke-virtual {v0}, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->stop()V

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->sweeper:Lorg/codehaus/plexus/util/SweeperPool$Sweeper;

    invoke-virtual {v0}, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Unexpected exception occurred: "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->pooledObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lorg/codehaus/plexus/util/SweeperPool;->objectDisposed(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->pooledObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->pooledObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->shuttingDown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->pooledObjects:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/SweeperPool;->objectRetrieved(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSize()I
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->pooledObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isDisposed()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->shuttingDown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->sweeper:Lorg/codehaus/plexus/util/SweeperPool$Sweeper;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->sweeper:Lorg/codehaus/plexus/util/SweeperPool$Sweeper;

    invoke-virtual {v0}, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->hasStopped()Z

    move-result v0

    return v0
.end method

.method public objectAdded(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public objectDisposed(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public objectRetrieved(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public declared-synchronized put(Ljava/lang/Object;)Z
    .registers 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/SweeperPool;->objectAdded(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->pooledObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/codehaus/plexus/util/SweeperPool;->maxSize:I

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->shuttingDown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->pooledObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/SweeperPool;->objectDisposed(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized trim()V
    .registers 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->triggerSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->pooledObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/codehaus/plexus/util/SweeperPool;->triggerSize:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->maxSize:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->pooledObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/codehaus/plexus/util/SweeperPool;->maxSize:I

    if-lt v0, v1, :cond_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->pooledObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/codehaus/plexus/util/SweeperPool;->minSize:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool;->pooledObjects:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/SweeperPool;->objectDisposed(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
