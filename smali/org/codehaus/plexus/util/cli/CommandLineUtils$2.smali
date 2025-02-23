.class final Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/codehaus/plexus/util/cli/CommandLineCallable;


# instance fields
.field final synthetic val$p:Ljava/lang/Process;

.field final synthetic val$processHook:Ljava/lang/Thread;

.field final synthetic val$systemErr:Lorg/codehaus/plexus/util/cli/StreamConsumer;

.field final synthetic val$systemIn:Ljava/io/InputStream;

.field final synthetic val$systemOut:Lorg/codehaus/plexus/util/cli/StreamConsumer;

.field final synthetic val$timeoutInSeconds:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/Process;Lorg/codehaus/plexus/util/cli/StreamConsumer;Lorg/codehaus/plexus/util/cli/StreamConsumer;ILjava/lang/Thread;)V
    .registers 7

    iput-object p1, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$systemIn:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$p:Ljava/lang/Process;

    iput-object p3, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$systemOut:Lorg/codehaus/plexus/util/cli/StreamConsumer;

    iput-object p4, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$systemErr:Lorg/codehaus/plexus/util/cli/StreamConsumer;

    iput p5, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$timeoutInSeconds:I

    iput-object p6, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$processHook:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Integer;
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$systemIn:Ljava/io/InputStream;

    if-eqz v3, :cond_0

    new-instance v3, Lorg/codehaus/plexus/util/cli/StreamFeeder;

    iget-object v4, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$systemIn:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$p:Ljava/lang/Process;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/codehaus/plexus/util/cli/StreamFeeder;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_11

    :try_start_1
    invoke-virtual {v3}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->start()V

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    new-instance v4, Lorg/codehaus/plexus/util/cli/StreamPumper;

    iget-object v5, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$p:Ljava/lang/Process;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v6, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$systemOut:Lorg/codehaus/plexus/util/cli/StreamConsumer;

    invoke-direct {v4, v5, v6}, Lorg/codehaus/plexus/util/cli/StreamPumper;-><init>(Ljava/io/InputStream;Lorg/codehaus/plexus/util/cli/StreamConsumer;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_10

    :try_start_2
    invoke-virtual {v4}, Lorg/codehaus/plexus/util/cli/StreamPumper;->start()V

    new-instance v5, Lorg/codehaus/plexus/util/cli/StreamPumper;

    iget-object v6, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$p:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    iget-object v7, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$systemErr:Lorg/codehaus/plexus/util/cli/StreamConsumer;

    invoke-direct {v5, v6, v7}, Lorg/codehaus/plexus/util/cli/StreamPumper;-><init>(Ljava/io/InputStream;Lorg/codehaus/plexus/util/cli/StreamConsumer;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    :try_start_3
    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->start()V

    iget v0, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$timeoutInSeconds:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$p:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    goto :goto_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0x3b9aca00

    iget v0, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$timeoutInSeconds:I

    int-to-long v10, v0

    mul-long v10, v10, v8

    add-long/2addr v6, v10

    :goto_1
    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$p:Ljava/lang/Process;

    invoke-static {v0}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->isAlive(Ljava/lang/Process;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-gez v0, :cond_2

    const-wide/16 v8, 0x3e7

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$p:Ljava/lang/Process;

    invoke-static {v0}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->isAlive(Ljava/lang/Process;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$p:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v0

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->waitUntilDone()V

    :cond_3
    invoke-virtual {v4}, Lorg/codehaus/plexus/util/cli/StreamPumper;->waitUntilDone()V

    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->waitUntilDone()V

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->close()V

    const-string v6, "stdin"

    invoke-static {v3, v6}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$000(Lorg/codehaus/plexus/util/cli/StreamFeeder;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v4}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V

    const-string v6, "stdout"

    invoke-static {v4, v6}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V

    const-string v6, "stderr"

    invoke-static {v5, v6}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->disable()V

    :cond_5
    invoke-virtual {v4}, Lorg/codehaus/plexus/util/cli/StreamPumper;->disable()V

    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->disable()V

    :try_start_5
    iget-object v6, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$processHook:Ljava/lang/Thread;

    invoke-static {v6}, Lorg/codehaus/plexus/util/cli/ShutdownHookUtils;->removeShutdownHook(Ljava/lang/Thread;)V

    iget-object v6, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$processHook:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-eqz v3, :cond_9

    :try_start_6
    invoke-virtual {v3}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    const-string v6, "stdin"

    invoke-static {v3, v6}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$000(Lorg/codehaus/plexus/util/cli/StreamFeeder;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 v3, 0x1

    :goto_3
    :try_start_8
    invoke-virtual {v4}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v3, :cond_6

    :try_start_9
    const-string v3, "stdout"

    invoke-static {v4, v3}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_6
    move v1, v3

    :goto_4
    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V

    if-eqz v1, :cond_7

    const-string v1, "stderr"

    invoke-static {v5, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V

    :cond_7
    throw v0

    :catchall_3
    move-exception v0

    move v2, v3

    :goto_5
    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V

    if-eqz v2, :cond_8

    const-string v1, "stderr"

    invoke-static {v5, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V

    :cond_8
    throw v0

    :cond_9
    :goto_6
    :try_start_a
    invoke-virtual {v4}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    const-string v1, "stdout"

    invoke-static {v4, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V

    const-string v1, "stderr"

    invoke-static {v5, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V

    return-object v0

    :catchall_4
    move-exception v0

    goto :goto_7

    :catchall_5
    move-exception v0

    const/4 v2, 0x1

    :goto_7
    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V

    if-eqz v2, :cond_a

    const-string v1, "stderr"

    invoke-static {v5, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V

    :cond_a
    throw v0

    :catchall_6
    move-exception v0

    if-eqz v3, :cond_e

    :try_start_c
    invoke-virtual {v3}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :try_start_d
    const-string v6, "stdin"

    invoke-static {v3, v6}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$000(Lorg/codehaus/plexus/util/cli/StreamFeeder;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception v0

    const/4 v3, 0x0

    goto :goto_8

    :catchall_8
    move-exception v0

    const/4 v3, 0x1

    :goto_8
    :try_start_e
    invoke-virtual {v4}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    if-eqz v3, :cond_b

    :try_start_f
    const-string v3, "stdout"

    invoke-static {v4, v3}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    goto :goto_9

    :catchall_9
    move-exception v0

    goto :goto_a

    :cond_b
    move v1, v3

    :goto_9
    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V

    if-eqz v1, :cond_c

    const-string v1, "stderr"

    invoke-static {v5, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V

    :cond_c
    throw v0

    :catchall_a
    move-exception v0

    move v2, v3

    :goto_a
    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V

    if-eqz v2, :cond_d

    const-string v1, "stderr"

    invoke-static {v5, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V

    :cond_d
    throw v0

    :cond_e
    :goto_b
    :try_start_10
    invoke-virtual {v4}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    :try_start_11
    const-string v1, "stdout"

    invoke-static {v4, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V

    const-string v1, "stderr"

    invoke-static {v5, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V

    throw v0

    :catchall_b
    move-exception v0

    goto :goto_c

    :catchall_c
    move-exception v0

    const/4 v2, 0x1

    :goto_c
    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V

    if-eqz v2, :cond_f

    const-string v1, "stderr"

    invoke-static {v5, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V

    :cond_f
    throw v0

    :catchall_d
    move-exception v0

    const/4 v6, 0x1

    goto :goto_10

    :catch_0
    move-exception v0

    const/4 v6, 0x1

    goto :goto_f

    :cond_10
    :try_start_12
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v6, "Process timed out after %d seconds."

    new-array v7, v1, [Ljava/lang/Object;

    iget v8, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$timeoutInSeconds:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    :catchall_e
    move-exception v0

    const/4 v6, 0x0

    goto :goto_10

    :catch_1
    move-exception v0

    const/4 v6, 0x0

    goto :goto_f

    :catchall_f
    move-exception v5

    const/4 v6, 0x0

    move-object v12, v5

    move-object v5, v0

    move-object v0, v12

    goto :goto_10

    :catch_2
    move-exception v5

    const/4 v6, 0x0

    move-object v12, v5

    move-object v5, v0

    move-object v0, v12

    goto :goto_f

    :catchall_10
    move-exception v4

    move-object v5, v0

    goto :goto_d

    :catch_3
    move-exception v4

    move-object v5, v0

    goto :goto_e

    :catchall_11
    move-exception v4

    move-object v3, v0

    move-object v5, v3

    :goto_d
    const/4 v6, 0x0

    move-object v0, v4

    move-object v4, v5

    goto :goto_10

    :catch_4
    move-exception v4

    move-object v3, v0

    move-object v5, v3

    :goto_e
    const/4 v6, 0x0

    move-object v0, v4

    move-object v4, v5

    :goto_f
    :try_start_13
    new-instance v7, Lorg/codehaus/plexus/util/cli/CommandLineTimeOutException;

    const-string v8, "Error while executing external command, process killed."

    invoke-direct {v7, v8, v0}, Lorg/codehaus/plexus/util/cli/CommandLineTimeOutException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_12

    :catchall_12
    move-exception v0

    :goto_10
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->disable()V

    :cond_11
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lorg/codehaus/plexus/util/cli/StreamPumper;->disable()V

    :cond_12
    if-eqz v5, :cond_13

    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->disable()V

    :cond_13
    :try_start_14
    iget-object v7, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$processHook:Ljava/lang/Thread;

    invoke-static {v7}, Lorg/codehaus/plexus/util/cli/ShutdownHookUtils;->removeShutdownHook(Ljava/lang/Thread;)V

    iget-object v7, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->val$processHook:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->run()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_19

    if-eqz v3, :cond_17

    :try_start_15
    invoke-virtual {v3}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_14

    if-eqz v6, :cond_17

    :try_start_16
    const-string v6, "stdin"

    invoke-static {v3, v6}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$000(Lorg/codehaus/plexus/util/cli/StreamFeeder;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_13

    const/4 v6, 0x1

    goto :goto_14

    :catchall_13
    move-exception v0

    const/4 v6, 0x0

    goto :goto_11

    :catchall_14
    move-exception v0

    :goto_11
    if-eqz v4, :cond_15

    :try_start_17
    invoke-virtual {v4}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_16

    if-eqz v6, :cond_15

    :try_start_18
    const-string v3, "stdout"

    invoke-static {v4, v3}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_15

    goto :goto_13

    :catchall_15
    move-exception v0

    goto :goto_12

    :catchall_16
    move-exception v0

    move v2, v6

    :goto_12
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V

    if-eqz v2, :cond_14

    const-string v1, "stderr"

    invoke-static {v5, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V

    :cond_14
    throw v0

    :cond_15
    move v1, v6

    :goto_13
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V

    if-eqz v1, :cond_16

    const-string v1, "stderr"

    invoke-static {v5, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V

    :cond_16
    throw v0

    :cond_17
    :goto_14
    if-eqz v4, :cond_19

    :try_start_19
    invoke-virtual {v4}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_18

    if-eqz v6, :cond_19

    :try_start_1a
    const-string v3, "stdout"

    invoke-static {v4, v3}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_17

    goto :goto_16

    :catchall_17
    move-exception v0

    goto :goto_15

    :catchall_18
    move-exception v0

    move v2, v6

    :goto_15
    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V

    if-eqz v2, :cond_18

    const-string v1, "stderr"

    invoke-static {v5, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V

    :cond_18
    throw v0

    :cond_19
    move v1, v6

    :goto_16
    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V

    if-eqz v1, :cond_1a

    const-string v1, "stderr"

    invoke-static {v5, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V

    :cond_1a
    throw v0

    :catchall_19
    move-exception v0

    if-eqz v3, :cond_1e

    :try_start_1b
    invoke-virtual {v3}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    if-eqz v6, :cond_1e

    :try_start_1c
    const-string v6, "stdin"

    invoke-static {v3, v6}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$000(Lorg/codehaus/plexus/util/cli/StreamFeeder;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1a

    const/4 v6, 0x1

    goto :goto_1a

    :catchall_1a
    move-exception v0

    const/4 v6, 0x0

    goto :goto_17

    :catchall_1b
    move-exception v0

    :goto_17
    if-eqz v4, :cond_1c

    :try_start_1d
    invoke-virtual {v4}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    if-eqz v6, :cond_1c

    :try_start_1e
    const-string v3, "stdout"

    invoke-static {v4, v3}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1c

    goto :goto_19

    :catchall_1c
    move-exception v0

    goto :goto_18

    :catchall_1d
    move-exception v0

    move v2, v6

    :goto_18
    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V

    if-eqz v2, :cond_1b

    const-string v1, "stderr"

    invoke-static {v5, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V

    :cond_1b
    throw v0

    :cond_1c
    move v1, v6

    :goto_19
    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V

    if-eqz v1, :cond_1d

    const-string v1, "stderr"

    invoke-static {v5, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V

    :cond_1d
    throw v0

    :cond_1e
    :goto_1a
    if-eqz v4, :cond_20

    :try_start_1f
    invoke-virtual {v4}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1f

    if-eqz v6, :cond_20

    :try_start_20
    const-string v3, "stdout"

    invoke-static {v4, v3}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1e

    goto :goto_1c

    :catchall_1e
    move-exception v0

    goto :goto_1b

    :catchall_1f
    move-exception v0

    move v2, v6

    :goto_1b
    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V

    if-eqz v2, :cond_1f

    const-string v1, "stderr"

    invoke-static {v5, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V

    :cond_1f
    throw v0

    :cond_20
    move v1, v6

    :goto_1c
    if-eqz v5, :cond_21

    invoke-virtual {v5}, Lorg/codehaus/plexus/util/cli/StreamPumper;->close()V

    if-eqz v1, :cond_21

    const-string v1, "stderr"

    invoke-static {v5, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V

    :cond_21
    throw v0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
