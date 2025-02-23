.class final Lcom/gmail/heagoo/apkeditor/j;
.super Landroid/os/Handler;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private synthetic c:Lcom/gmail/heagoo/apkeditor/ApkComposeService;


# direct methods
.method private constructor <init>(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/j;->c:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gmail/heagoo/apkeditor/ApkComposeService;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/j;-><init>(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/j;->b:Ljava/lang/String;

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/j;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/j;->c:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->a(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/j;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_1
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/j;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/j;->c:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->a(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_2
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/j;->c:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->b(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Z

    move-result p1

    const/16 v0, 0x1f41

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/j;->c:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->c(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Landroid/app/NotificationManager;

    move-result-object p1

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/j;->c:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->a(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/j;->c:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/j;->c:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->a(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->startForeground(ILandroid/app/Notification;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/j;->c:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->a(Lcom/gmail/heagoo/apkeditor/ApkComposeService;Z)Z

    :goto_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/j;->c:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->a(Lcom/gmail/heagoo/apkeditor/ApkComposeService;J)J

    :goto_1
    return-void
.end method
