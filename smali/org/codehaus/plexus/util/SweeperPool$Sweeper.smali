.class Lorg/codehaus/plexus/util/SweeperPool$Sweeper;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final transient pool:Lorg/codehaus/plexus/util/SweeperPool;

.field private transient service:Z

.field private final transient sweepInterval:I

.field private transient t:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lorg/codehaus/plexus/util/SweeperPool;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->service:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->t:Ljava/lang/Thread;

    iput p2, p0, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->sweepInterval:I

    iput-object p1, p0, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->pool:Lorg/codehaus/plexus/util/SweeperPool;

    return-void
.end method

.method private final debug(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private runSweep()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "runningSweep. time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->pool:Lorg/codehaus/plexus/util/SweeperPool;

    invoke-virtual {v0}, Lorg/codehaus/plexus/util/SweeperPool;->trim()V

    return-void
.end method


# virtual methods
.method hasStopped()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->service:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method join()V
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    return-void
.end method

.method public run()V
    .registers 3

    const-string v0, "started"

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->debug(Ljava/lang/String;)V

    iget v0, p0, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->sweepInterval:I

    if-lez v0, :cond_1

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->service:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget v0, p0, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->sweepInterval:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-direct {p0}, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->runSweep()V

    goto :goto_0

    :cond_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :goto_1
    const-string v0, "stopped"

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .registers 3

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->service:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->service:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->t:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->t:Ljava/lang/Thread;

    const-string v1, "Sweeper"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public declared-synchronized stop()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/codehaus/plexus/util/SweeperPool$Sweeper;->service:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
