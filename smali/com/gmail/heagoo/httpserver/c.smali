.class final Lcom/gmail/heagoo/httpserver/c;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:[Ljava/lang/String;

.field private synthetic b:Lcom/gmail/heagoo/httpserver/b;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/httpserver/b;[Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/httpserver/c;->b:Lcom/gmail/heagoo/httpserver/b;

    iput-object p2, p0, Lcom/gmail/heagoo/httpserver/c;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/gmail/heagoo/httpserver/b;->b()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/httpserver/c;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    :goto_0
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
