.class public final Lcom/gmail/heagoo/httpserver/d;
.super Landroid/os/Binder;


# instance fields
.field final synthetic a:Lcom/gmail/heagoo/httpserver/HttpService;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/httpserver/HttpService;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/httpserver/d;->a:Lcom/gmail/heagoo/httpserver/HttpService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/httpserver/d;->a:Lcom/gmail/heagoo/httpserver/HttpService;

    invoke-static {v0}, Lcom/gmail/heagoo/httpserver/HttpService;->a(Lcom/gmail/heagoo/httpserver/HttpService;)Lcom/gmail/heagoo/httpserver/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/httpserver/d;->a:Lcom/gmail/heagoo/httpserver/HttpService;

    invoke-static {v0}, Lcom/gmail/heagoo/httpserver/HttpService;->a(Lcom/gmail/heagoo/httpserver/HttpService;)Lcom/gmail/heagoo/httpserver/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/httpserver/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/httpserver/d;->a:Lcom/gmail/heagoo/httpserver/HttpService;

    invoke-static {v0}, Lcom/gmail/heagoo/httpserver/HttpService;->a(Lcom/gmail/heagoo/httpserver/HttpService;)Lcom/gmail/heagoo/httpserver/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/httpserver/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
