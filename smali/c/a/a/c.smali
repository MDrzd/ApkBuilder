.class public final Lc/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/net/Socket;

.field private synthetic c:Lc/a/a/a;


# direct methods
.method private constructor <init>(Lc/a/a/a;Ljava/io/InputStream;Ljava/net/Socket;)V
    .registers 4

    iput-object p1, p0, Lc/a/a/c;->c:Lc/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc/a/a/c;->a:Ljava/io/InputStream;

    iput-object p3, p0, Lc/a/a/c;->b:Ljava/net/Socket;

    return-void
.end method

.method synthetic constructor <init>(Lc/a/a/a;Ljava/io/InputStream;Ljava/net/Socket;B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lc/a/a/c;-><init>(Lc/a/a/a;Ljava/io/InputStream;Ljava/net/Socket;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lc/a/a/c;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lc/a/a/c;->b:Ljava/net/Socket;

    invoke-static {v0}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final run()V
    .registers 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lc/a/a/c;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lc/a/a/c;->c:Lc/a/a/a;

    invoke-static {v0}, Lc/a/a/a;->a(Lc/a/a/a;)Lc/a/a/w;

    move-result-object v0

    invoke-interface {v0}, Lc/a/a/w;->a()Lc/a/a/v;

    move-result-object v4

    new-instance v0, Lc/a/a/k;

    iget-object v3, p0, Lc/a/a/c;->c:Lc/a/a/a;

    iget-object v5, p0, Lc/a/a/c;->a:Ljava/io/InputStream;

    iget-object v2, p0, Lc/a/a/c;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    move-object v2, v0

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lc/a/a/k;-><init>(Lc/a/a/a;Lc/a/a/v;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    :goto_0
    iget-object v2, p0, Lc/a/a/c;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lc/a/a/k;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-static {v1}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lc/a/a/c;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lc/a/a/c;->b:Ljava/net/Socket;

    invoke-static {v0}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lc/a/a/c;->c:Lc/a/a/a;

    iget-object v0, v0, Lc/a/a/a;->a:Lc/a/a/b;

    invoke-interface {v0, p0}, Lc/a/a/b;->a(Lc/a/a/c;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_2
    :try_start_2
    instance-of v2, v0, Ljava/net/SocketException;

    if-eqz v2, :cond_1

    const-string v2, "NanoHttpd Shutdown"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    instance-of v2, v0, Ljava/net/SocketTimeoutException;

    if-nez v2, :cond_0

    invoke-static {}, Lc/a/a/a;->f()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Communication with the client broken"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v1}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lc/a/a/c;->a:Ljava/io/InputStream;

    invoke-static {v1}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lc/a/a/c;->b:Ljava/net/Socket;

    invoke-static {v1}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lc/a/a/c;->c:Lc/a/a/a;

    iget-object v1, v1, Lc/a/a/a;->a:Lc/a/a/b;

    invoke-interface {v1, p0}, Lc/a/a/b;->a(Lc/a/a/c;)V

    throw v0
.end method
