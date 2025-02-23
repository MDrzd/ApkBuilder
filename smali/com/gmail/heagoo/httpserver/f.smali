.class final Lcom/gmail/heagoo/httpserver/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Lcom/gmail/heagoo/httpserver/d;

.field private synthetic c:Lcom/gmail/heagoo/httpserver/e;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/httpserver/e;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/httpserver/f;->c:Lcom/gmail/heagoo/httpserver/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/gmail/heagoo/httpserver/f;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/httpserver/f;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/httpserver/f;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic b(Lcom/gmail/heagoo/httpserver/f;)Lcom/gmail/heagoo/httpserver/d;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/httpserver/f;->b:Lcom/gmail/heagoo/httpserver/d;

    return-object p0
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    check-cast p2, Lcom/gmail/heagoo/httpserver/d;

    iput-object p2, p0, Lcom/gmail/heagoo/httpserver/f;->b:Lcom/gmail/heagoo/httpserver/d;

    iget-object p1, p0, Lcom/gmail/heagoo/httpserver/f;->c:Lcom/gmail/heagoo/httpserver/e;

    invoke-static {p1}, Lcom/gmail/heagoo/httpserver/e;->a(Lcom/gmail/heagoo/httpserver/e;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/gmail/heagoo/httpserver/f;->c:Lcom/gmail/heagoo/httpserver/e;

    invoke-static {p2}, Lcom/gmail/heagoo/httpserver/e;->a(Lcom/gmail/heagoo/httpserver/e;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/gmail/heagoo/httpserver/f;->b:Lcom/gmail/heagoo/httpserver/d;

    invoke-virtual {p1}, Lcom/gmail/heagoo/httpserver/d;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/gmail/heagoo/httpserver/f;->c:Lcom/gmail/heagoo/httpserver/e;

    iget-object v0, p0, Lcom/gmail/heagoo/httpserver/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {p2, v0, p1}, Lcom/gmail/heagoo/httpserver/e;->a(Lcom/gmail/heagoo/httpserver/e;Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
