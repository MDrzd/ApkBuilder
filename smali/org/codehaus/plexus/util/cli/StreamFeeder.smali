.class public Lorg/codehaus/plexus/util/cli/StreamFeeder;
.super Lorg/codehaus/plexus/util/cli/AbstractStreamHandler;


# instance fields
.field private volatile exception:Ljava/lang/Throwable;

.field private input:Ljava/io/InputStream;

.field private output:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4

    invoke-direct {p0}, Lorg/codehaus/plexus/util/cli/AbstractStreamHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->exception:Ljava/lang/Throwable;

    iput-object p1, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->input:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->output:Ljava/io/OutputStream;

    return-void
.end method

.method private feed()V
    .registers 5

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->isDone()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->output:Ljava/io/OutputStream;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->isDisabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->input:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->input:Ljava/io/InputStream;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->input:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    iget-object v3, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    iput-object v2, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->exception:Ljava/lang/Throwable;

    :cond_0
    :goto_0
    iput-object v1, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->input:Ljava/io/InputStream;

    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->output:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->output:Ljava/io/OutputStream;

    monitor-enter v0

    :try_start_2
    iget-object v2, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->output:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iput-object v2, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->exception:Ljava/lang/Throwable;

    :cond_2
    :goto_3
    iput-object v1, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->output:Ljava/io/OutputStream;

    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_3
    return-void
.end method

.method public getException()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public run()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->feed()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->close()V

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->setDone()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamFeeder;->exception:Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->close()V

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->setDone()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    :goto_0
    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->close()V

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->setDone()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method
