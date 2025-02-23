.class public Lorg/codehaus/plexus/util/cli/AbstractStreamHandler;
.super Ljava/lang/Thread;


# instance fields
.field private volatile disabled:Z

.field private done:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public disable()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/cli/AbstractStreamHandler;->disabled:Z

    return-void
.end method

.method protected isDisabled()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/cli/AbstractStreamHandler;->disabled:Z

    return v0
.end method

.method public isDone()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/cli/AbstractStreamHandler;->done:Z

    return v0
.end method

.method public setDone()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/cli/AbstractStreamHandler;->done:Z

    return-void
.end method

.method public declared-synchronized waitUntilDone()V
    .registers 2

    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/AbstractStreamHandler;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
