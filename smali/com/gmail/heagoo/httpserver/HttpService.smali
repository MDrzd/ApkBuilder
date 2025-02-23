.class public Lcom/gmail/heagoo/httpserver/HttpService;
.super Landroid/app/Service;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/gmail/heagoo/httpserver/b;

.field private d:Lcom/gmail/heagoo/httpserver/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gmail/heagoo/httpserver/HttpService;->c:Lcom/gmail/heagoo/httpserver/b;

    new-instance v0, Lcom/gmail/heagoo/httpserver/d;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/httpserver/d;-><init>(Lcom/gmail/heagoo/httpserver/HttpService;)V

    iput-object v0, p0, Lcom/gmail/heagoo/httpserver/HttpService;->d:Lcom/gmail/heagoo/httpserver/d;

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/httpserver/HttpService;)Lcom/gmail/heagoo/httpserver/b;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/httpserver/HttpService;->c:Lcom/gmail/heagoo/httpserver/b;

    return-object p0
.end method

.method static synthetic a(Lcom/gmail/heagoo/httpserver/HttpService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/httpserver/HttpService;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    iget-object p1, p0, Lcom/gmail/heagoo/httpserver/HttpService;->d:Lcom/gmail/heagoo/httpserver/d;

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/httpserver/HttpService;->c:Lcom/gmail/heagoo/httpserver/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/httpserver/HttpService;->c:Lcom/gmail/heagoo/httpserver/b;

    invoke-virtual {v0}, Lcom/gmail/heagoo/httpserver/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/httpserver/HttpService;->c:Lcom/gmail/heagoo/httpserver/b;

    invoke-virtual {v0}, Lcom/gmail/heagoo/httpserver/b;->e()V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_0
    const-string p2, "projectDirectory"

    invoke-static {p1, p2}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gmail/heagoo/httpserver/HttpService;->b:Ljava/lang/String;

    const-string p2, "httpDirectory"

    invoke-static {p1, p2}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/httpserver/HttpService;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/gmail/heagoo/httpserver/HttpService;->c:Lcom/gmail/heagoo/httpserver/b;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/httpserver/HttpService;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/gmail/heagoo/httpserver/HttpService;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    new-instance p1, Lcom/gmail/heagoo/httpserver/b;

    iget-object p2, p0, Lcom/gmail/heagoo/httpserver/HttpService;->a:Ljava/lang/String;

    iget-object p3, p0, Lcom/gmail/heagoo/httpserver/HttpService;->b:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lcom/gmail/heagoo/httpserver/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gmail/heagoo/httpserver/HttpService;->c:Lcom/gmail/heagoo/httpserver/b;

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/gmail/heagoo/httpserver/HttpService;->c:Lcom/gmail/heagoo/httpserver/b;

    invoke-virtual {p1}, Lcom/gmail/heagoo/httpserver/b;->d()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x5

    if-ge p1, p2, :cond_2

    :try_start_1
    iget-object p2, p0, Lcom/gmail/heagoo/httpserver/HttpService;->c:Lcom/gmail/heagoo/httpserver/b;

    invoke-virtual {p2, p1}, Lcom/gmail/heagoo/httpserver/b;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_1
    iget-object p1, p0, Lcom/gmail/heagoo/httpserver/HttpService;->c:Lcom/gmail/heagoo/httpserver/b;

    invoke-virtual {p1}, Lcom/gmail/heagoo/httpserver/b;->e()V

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
