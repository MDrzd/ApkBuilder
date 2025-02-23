.class public Lorg/codehaus/plexus/util/cli/StreamPumper;
.super Lorg/codehaus/plexus/util/cli/AbstractStreamHandler;


# static fields
.field private static final SIZE:I = 0x400


# instance fields
.field private final consumer:Lorg/codehaus/plexus/util/cli/StreamConsumer;

.field private volatile exception:Ljava/lang/Exception;

.field private final in:Ljava/io/BufferedReader;

.field private final out:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/plexus/util/cli/StreamPumper;-><init>(Ljava/io/InputStream;Lorg/codehaus/plexus/util/cli/StreamConsumer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/PrintWriter;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/plexus/util/cli/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/PrintWriter;Lorg/codehaus/plexus/util/cli/StreamConsumer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/PrintWriter;Lorg/codehaus/plexus/util/cli/StreamConsumer;)V
    .registers 6

    invoke-direct {p0}, Lorg/codehaus/plexus/util/cli/AbstractStreamHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->exception:Ljava/lang/Exception;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x400

    invoke-direct {v0, v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->in:Ljava/io/BufferedReader;

    iput-object p2, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->out:Ljava/io/PrintWriter;

    iput-object p3, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->consumer:Lorg/codehaus/plexus/util/cli/StreamConsumer;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/codehaus/plexus/util/cli/StreamConsumer;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/codehaus/plexus/util/cli/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/PrintWriter;Lorg/codehaus/plexus/util/cli/StreamConsumer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->out:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failure closing output."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->exception:Ljava/lang/Exception;

    :cond_1
    :goto_0
    return-void
.end method

.method public flush()V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->out:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failure flushing output."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->exception:Ljava/lang/Exception;

    :cond_1
    :goto_0
    return-void
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public run()V
    .registers 7

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->out:Ljava/io/PrintWriter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->in:Ljava/io/BufferedReader;

    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_4

    :try_start_1
    iget-object v3, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->exception:Ljava/lang/Exception;

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->consumer:Lorg/codehaus/plexus/util/cli/StreamConsumer;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/StreamPumper;->isDisabled()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->consumer:Lorg/codehaus/plexus/util/cli/StreamConsumer;

    invoke-interface {v3, v2}, Lorg/codehaus/plexus/util/cli/StreamConsumer;->consumeLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    iput-object v3, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->exception:Ljava/lang/Exception;

    :cond_1
    :goto_2
    iget-object v3, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->out:Ljava/io/PrintWriter;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    iget-object v3, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->out:Ljava/io/PrintWriter;

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->out:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    iget-object v3, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->out:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->checkError()Z

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Failure printing line \'%s\'."

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_1
    move-exception v0

    :try_start_4
    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->exception:Ljava/lang/Exception;

    const/4 v0, 0x1

    :cond_3
    :goto_3
    iget-object v2, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->in:Ljava/io/BufferedReader;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :cond_4
    :try_start_5
    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->in:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    iget-object v1, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->exception:Ljava/lang/Exception;

    if-nez v1, :cond_5

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->exception:Ljava/lang/Exception;

    :cond_5
    :goto_4
    monitor-enter p0

    :try_start_6
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/StreamPumper;->setDone()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    :try_start_7
    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->exception:Ljava/lang/Exception;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->in:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    iget-object v1, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->exception:Ljava/lang/Exception;

    if-nez v1, :cond_6

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->exception:Ljava/lang/Exception;

    :cond_6
    :goto_5
    monitor-enter p0

    :try_start_9
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/StreamPumper;->setDone()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    :goto_6
    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :goto_7
    :try_start_a
    iget-object v1, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->in:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_8

    :catch_5
    move-exception v1

    iget-object v2, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->exception:Ljava/lang/Exception;

    if-nez v2, :cond_7

    iput-object v1, p0, Lorg/codehaus/plexus/util/cli/StreamPumper;->exception:Ljava/lang/Exception;

    :cond_7
    :goto_8
    monitor-enter p0

    :try_start_b
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/StreamPumper;->setDone()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0
.end method
