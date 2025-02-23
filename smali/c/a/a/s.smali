.class public final Lc/a/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:I

.field private b:Ljava/io/IOException;

.field private c:Z

.field private synthetic d:Lc/a/a/a;


# direct methods
.method private constructor <init>(Lc/a/a/a;I)V
    .registers 3

    iput-object p1, p0, Lc/a/a/s;->d:Lc/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/a/a/s;->c:Z

    iput p2, p0, Lc/a/a/s;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lc/a/a/a;IB)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lc/a/a/s;-><init>(Lc/a/a/a;I)V

    return-void
.end method

.method static synthetic a(Lc/a/a/s;)Z
    .registers 1

    iget-boolean p0, p0, Lc/a/a/s;->c:Z

    return p0
.end method

.method static synthetic b(Lc/a/a/s;)Ljava/io/IOException;
    .registers 1

    iget-object p0, p0, Lc/a/a/s;->b:Ljava/io/IOException;

    return-object p0
.end method


# virtual methods
.method public final run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lc/a/a/s;->d:Lc/a/a/a;

    invoke-static {v0}, Lc/a/a/a;->d(Lc/a/a/a;)Ljava/net/ServerSocket;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/s;->d:Lc/a/a/a;

    invoke-static {v1}, Lc/a/a/a;->b(Lc/a/a/a;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lc/a/a/s;->d:Lc/a/a/a;

    invoke-static {v2}, Lc/a/a/a;->b(Lc/a/a/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc/a/a/s;->d:Lc/a/a/a;

    invoke-static {v3}, Lc/a/a/a;->c(Lc/a/a/a;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lc/a/a/s;->d:Lc/a/a/a;

    invoke-static {v2}, Lc/a/a/a;->c(Lc/a/a/a;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/a/a/s;->c:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lc/a/a/s;->d:Lc/a/a/a;

    invoke-static {v0}, Lc/a/a/a;->d(Lc/a/a/a;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iget v1, p0, Lc/a/a/s;->a:I

    if-lez v1, :cond_2

    iget v1, p0, Lc/a/a/s;->a:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_2
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lc/a/a/s;->d:Lc/a/a/a;

    iget-object v2, v2, Lc/a/a/a;->a:Lc/a/a/b;

    iget-object v3, p0, Lc/a/a/s;->d:Lc/a/a/a;

    new-instance v4, Lc/a/a/c;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v1, v0, v5}, Lc/a/a/c;-><init>(Lc/a/a/a;Ljava/io/InputStream;Ljava/net/Socket;B)V

    invoke-interface {v2, v4}, Lc/a/a/b;->b(Lc/a/a/c;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lc/a/a/a;->f()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Communication with the client broken"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, Lc/a/a/s;->d:Lc/a/a/a;

    invoke-static {v0}, Lc/a/a/a;->d(Lc/a/a/a;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :catch_1
    move-exception v0

    iput-object v0, p0, Lc/a/a/s;->b:Ljava/io/IOException;

    return-void
.end method
