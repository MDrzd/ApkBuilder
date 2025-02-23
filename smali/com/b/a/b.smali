.class public final Lcom/b/a/b;
.super Ljava/lang/Thread;


# instance fields
.field private a:Lcom/b/a/e;

.field private b:Lcom/b/a/a;

.field private c:Z

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(Lcom/b/a/e;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/b/a/b;->c:Z

    iput-boolean p2, p0, Lcom/b/a/b;->d:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/b/a/b;->e:J

    iput-object p1, p0, Lcom/b/a/b;->a:Lcom/b/a/e;

    return-void
.end method

.method private declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/b;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/b;->d:Z

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


# virtual methods
.method public final declared-synchronized a()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/b/a/b;->c:Z

    iput-boolean v0, p0, Lcom/b/a/b;->d:Z

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

.method public final a(Lcom/b/a/a;)V
    .registers 3

    iget-boolean v0, p0, Lcom/b/a/b;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/b;->d:Z

    :cond_0
    iput-object p1, p0, Lcom/b/a/b;->b:Lcom/b/a/a;

    invoke-direct {p0}, Lcom/b/a/b;->c()V

    return-void
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/b;->d:Z

    return-void
.end method

.method public final run()V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/b;->c:Z

    :goto_0
    iget-boolean v0, p0, Lcom/b/a/b;->c:Z

    if-eqz v0, :cond_4

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/b/a/b;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/b;->b:Lcom/b/a/a;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/b/a/b;->b:Lcom/b/a/a;

    iget-object v3, p0, Lcom/b/a/b;->a:Lcom/b/a/e;

    iget-wide v4, p0, Lcom/b/a/b;->e:J

    sub-long v4, v0, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/b/a/a;->a(Lcom/b/a/e;J)Z

    move-result v2

    iput-boolean v2, p0, Lcom/b/a/b;->d:Z

    iget-object v2, p0, Lcom/b/a/b;->a:Lcom/b/a/e;

    invoke-virtual {v2}, Lcom/b/a/e;->postInvalidate()V

    iput-wide v0, p0, Lcom/b/a/b;->e:J

    :cond_1
    :goto_2
    iget-boolean v0, p0, Lcom/b/a/b;->d:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/b;->a:Lcom/b/a/e;

    const-wide/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/b/a/e;->a(J)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/b;->d:Z

    goto :goto_2

    :cond_2
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/b/a/b;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :cond_3
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_4
    return-void
.end method
