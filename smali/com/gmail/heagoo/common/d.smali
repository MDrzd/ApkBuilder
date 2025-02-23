.class public final Lcom/gmail/heagoo/common/d;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/gmail/heagoo/common/d;->a:[Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    const/16 v0, 0x2000

    new-array v1, v0, [C

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v3, v1, p0, v0}, Ljava/io/Reader;->read([CII)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v2, v1, p0, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_1
    if-gez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Process;)Z
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Ljava/io/InputStream;)V
    .registers 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/common/d;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final a(Ljava/lang/Object;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)Z
    .registers 15

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto/16 :goto_b

    :catch_0
    move-exception p1

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto/16 :goto_7

    :catch_1
    move-exception p1

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto/16 :goto_9

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    check-cast p1, [Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p5, :cond_1

    new-instance p2, Lcom/gmail/heagoo/common/e;

    iget-object v3, p0, Lcom/gmail/heagoo/common/d;->a:[Ljava/lang/String;

    invoke-direct {p2, p3, v3, v0}, Lcom/gmail/heagoo/common/e;-><init>(Ljava/io/InputStream;[Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/gmail/heagoo/common/e;->start()V

    new-instance v3, Lcom/gmail/heagoo/common/e;

    iget-object v4, p0, Lcom/gmail/heagoo/common/d;->a:[Ljava/lang/String;

    invoke-direct {v3, v1, v4, v2}, Lcom/gmail/heagoo/common/e;-><init>(Ljava/io/InputStream;[Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/gmail/heagoo/common/e;->start()V

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    if-eqz p4, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-long v6, p4

    add-long/2addr v4, v6

    :cond_2
    const-wide/16 v6, 0x14

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {p1}, Lcom/gmail/heagoo/common/d;->a(Ljava/lang/Process;)Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long p4, v6, v4

    if-lez p4, :cond_2

    const-string p2, "CommandRunner"

    const-string p3, "Process doesn\'t seem to stop on it\'s own, assuming it\'s hanging"

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/gmail/heagoo/common/d;->a:[Ljava/lang/String;

    const-string p3, "Timeout!"

    aput-object p3, p2, v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_3

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I
    :try_end_2
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_3
    :goto_2
    return v0

    :cond_4
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual {p2}, Lcom/gmail/heagoo/common/e;->a()V

    invoke-virtual {v3}, Lcom/gmail/heagoo/common/e;->a()V

    goto :goto_3

    :cond_6
    iget-object p2, p0, Lcom/gmail/heagoo/common/d;->a:[Ljava/lang/String;

    invoke-static {p3}, Lcom/gmail/heagoo/common/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, v0

    iget-object p2, p0, Lcom/gmail/heagoo/common/d;->a:[Ljava/lang/String;

    invoke-static {v1}, Lcom/gmail/heagoo/common/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, v2

    invoke-static {p3}, Lcom/gmail/heagoo/common/d;->b(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/gmail/heagoo/common/d;->b(Ljava/io/InputStream;)V

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result p2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_8

    if-eqz p1, :cond_7

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I
    :try_end_4
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_7
    :goto_4
    return v0

    :cond_8
    if-eqz p1, :cond_9

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I
    :try_end_5
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_9
    :goto_5
    return v2

    :catch_5
    move-exception p2

    goto :goto_7

    :catch_6
    move-exception p2

    goto :goto_9

    :catch_7
    move-object p1, p2

    :catch_8
    if-eqz p1, :cond_a

    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I
    :try_end_6
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_6

    :catch_9
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_a
    :goto_6
    return v0

    :goto_7
    :try_start_7
    const-string p3, "DEBUG"

    const-string p4, "Failed to run command"

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz p1, :cond_b

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I
    :try_end_8
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_8

    :catch_a
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_b
    :goto_8
    return v0

    :goto_9
    :try_start_9
    const-string p3, "DEBUG"

    const-string p4, "Failed to run command"

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz p1, :cond_c

    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I
    :try_end_a
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_a

    :catch_b
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_c
    :goto_a
    return v0

    :catchall_1
    move-exception p2

    :goto_b
    if-eqz p1, :cond_d

    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I
    :try_end_b
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_c

    :catch_c
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_d
    :goto_c
    throw p2
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/common/d;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
