.class public final Lcom/gmail/heagoo/apkeditor/i;
.super Landroid/os/Binder;


# instance fields
.field final synthetic a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->c(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->c(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x1f41

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->b(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->stopForeground(Z)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->a(Lcom/gmail/heagoo/apkeditor/ApkComposeService;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->a(Lcom/gmail/heagoo/apkeditor/ApkComposeService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    const-string v0, "DEBUG"

    const-string v1, "notification hided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->g(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Lcom/gmail/heagoo/apkeditor/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->g(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Lcom/gmail/heagoo/apkeditor/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/k;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
