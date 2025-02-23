.class public Lcom/gmail/heagoo/apkeditor/ApkComposeService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/gmail/heagoo/common/n;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/gmail/heagoo/apkeditor/k;

.field private d:Lcom/gmail/heagoo/apkeditor/h;

.field private e:Ljava/lang/ref/WeakReference;

.field private f:Landroidx/versionedparcelable/d;

.field private g:Landroid/app/NotificationManager;

.field private h:Landroid/support/v4/app/NotificationCompat$Builder;

.field private i:Z

.field private j:Lcom/gmail/heagoo/apkeditor/j;

.field private k:Lcom/gmail/heagoo/apkeditor/i;

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/gmail/heagoo/apkeditor/h;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/h;-><init>(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d:Lcom/gmail/heagoo/apkeditor/h;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->f:Landroidx/versionedparcelable/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->i:Z

    new-instance v1, Lcom/gmail/heagoo/apkeditor/j;

    invoke-direct {v1, p0, v0}, Lcom/gmail/heagoo/apkeditor/j;-><init>(Lcom/gmail/heagoo/apkeditor/ApkComposeService;B)V

    iput-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->j:Lcom/gmail/heagoo/apkeditor/j;

    new-instance v0, Lcom/gmail/heagoo/apkeditor/i;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/i;-><init>(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->k:Lcom/gmail/heagoo/apkeditor/i;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->o:J

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ApkComposeService;J)J
    .registers 3

    iput-wide p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->o:J

    return-wide p1
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ApkComposeService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->g:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    return-object p0
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ApkComposeService;Landroidx/versionedparcelable/d;)Landroidx/versionedparcelable/d;
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->f:Landroidx/versionedparcelable/d;

    return-object p1
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ApkComposeService;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->e:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->g:Landroid/app/NotificationManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->j:Lcom/gmail/heagoo/apkeditor/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/j;->removeMessages(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->j:Lcom/gmail/heagoo/apkeditor/j;

    invoke-virtual {v0, p2, p3}, Lcom/gmail/heagoo/apkeditor/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->o:J

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x3e8

    cmp-long p3, p1, v2

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->j:Lcom/gmail/heagoo/apkeditor/j;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, v1, p2, p3}, Lcom/gmail/heagoo/apkeditor/j;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->j:Lcom/gmail/heagoo/apkeditor/j;

    invoke-virtual {p1, v1}, Lcom/gmail/heagoo/apkeditor/j;->sendEmptyMessage(I)Z

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ApkComposeService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->i:Z

    return p1
.end method

.method private b()V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.gmail.heagoo.action.apkcompose"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07005c

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const v4, 0x7f0d004c

    invoke-virtual {p0, v4}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->g:Landroid/app/NotificationManager;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_0

    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v6, "default"

    invoke-direct {v5, p0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iput-object v5, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    :cond_0
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :goto_1
    iget-object v5, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x7f0d007a

    invoke-virtual {p0, v5}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/16 v4, 0x80

    invoke-static {v2, v4, v4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v0, 0x1f41

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->startForeground(ILandroid/app/Notification;)V

    iput-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->i:Z

    return-void
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->i:Z

    return p0
.end method

.method static synthetic c(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Landroid/app/NotificationManager;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->g:Landroid/app/NotificationManager;

    return-object p0
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->c:Lcom/gmail/heagoo/apkeditor/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->c:Lcom/gmail/heagoo/apkeditor/k;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/k;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->c:Lcom/gmail/heagoo/apkeditor/k;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/k;->b()V

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d:Lcom/gmail/heagoo/apkeditor/h;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/h;->a()V

    return-void
.end method

.method static synthetic d(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Lcom/gmail/heagoo/apkeditor/h;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d:Lcom/gmail/heagoo/apkeditor/h;

    return-object p0
.end method

.method private d()V
    .registers 8

    new-instance v6, Lcom/gmail/heagoo/apkeditor/k;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->n:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->m:Z

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/gmail/heagoo/apkeditor/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v6, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->c:Lcom/gmail/heagoo/apkeditor/k;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->f:Landroidx/versionedparcelable/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->c:Lcom/gmail/heagoo/apkeditor/k;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->f:Landroidx/versionedparcelable/d;

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/k;->a(Landroidx/versionedparcelable/d;)V

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->c:Lcom/gmail/heagoo/apkeditor/k;

    invoke-virtual {v0, p0}, Lcom/gmail/heagoo/apkeditor/k;->a(Lcom/gmail/heagoo/common/n;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->c:Lcom/gmail/heagoo/apkeditor/k;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/k;->start()V

    return-void
.end method

.method static synthetic e(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->c()V

    return-void
.end method

.method static synthetic f(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d()V

    return-void
.end method

.method static synthetic g(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Lcom/gmail/heagoo/apkeditor/k;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->c:Lcom/gmail/heagoo/apkeditor/k;

    return-object p0
.end method

.method static synthetic h(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->l:Z

    return p0
.end method

.method static synthetic k(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->m:Z

    return p0
.end method

.method static synthetic l(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d:Lcom/gmail/heagoo/apkeditor/h;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d:Lcom/gmail/heagoo/apkeditor/h;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/gmail/heagoo/apkeditor/h;->a:Z

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d:Lcom/gmail/heagoo/apkeditor/h;

    iput-boolean v2, v1, Lcom/gmail/heagoo/apkeditor/h;->b:Z

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d:Lcom/gmail/heagoo/apkeditor/h;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/gmail/heagoo/apkeditor/h;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d:Lcom/gmail/heagoo/apkeditor/h;

    iput-object v3, v1, Lcom/gmail/heagoo/apkeditor/h;->d:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v0, 0x7f0d0078

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d02be

    invoke-virtual {p0, v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/common/n;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/gmail/heagoo/common/n;->a()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a(Lcom/gmail/heagoo/common/o;)V
    .registers 8

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d:Lcom/gmail/heagoo/apkeditor/h;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d:Lcom/gmail/heagoo/apkeditor/h;

    iput-object p1, v1, Lcom/gmail/heagoo/apkeditor/h;->e:Lcom/gmail/heagoo/common/o;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/common/n;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/gmail/heagoo/common/n;->a(Lcom/gmail/heagoo/common/o;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d02ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " %d/%d: %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lcom/gmail/heagoo/common/o;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p1, Lcom/gmail/heagoo/common/o;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v5, p1, Lcom/gmail/heagoo/common/o;->c:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/gmail/heagoo/common/o;->a:I

    iget p1, p1, Lcom/gmail/heagoo/common/o;->b:I

    if-ne v1, p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    const p1, 0x7f0d007a

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1, v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d:Lcom/gmail/heagoo/apkeditor/h;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d:Lcom/gmail/heagoo/apkeditor/h;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/gmail/heagoo/apkeditor/h;->a:Z

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d:Lcom/gmail/heagoo/apkeditor/h;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/gmail/heagoo/apkeditor/h;->b:Z

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d:Lcom/gmail/heagoo/apkeditor/h;

    iput-object p1, v1, Lcom/gmail/heagoo/apkeditor/h;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d:Lcom/gmail/heagoo/apkeditor/h;

    iput-object p2, v1, Lcom/gmail/heagoo/apkeditor/h;->d:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v0, 0x7f0d0078

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0150

    invoke-virtual {p0, v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/common/n;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/gmail/heagoo/common/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->k:Lcom/gmail/heagoo/apkeditor/i;

    return-object p1
.end method

.method public onCreate()V
    .registers 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

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
    const-string p2, "projectRootPath"

    invoke-static {p1, p2}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->a:Ljava/lang/String;

    const-string p2, "targetApkPath"

    invoke-static {p1, p2}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->b:Ljava/lang/String;

    const-string p2, "signAPK"

    invoke-static {p1, p2}, La/a/a;->b(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->l:Z

    const-string p2, "fromGradle"

    invoke-static {p1, p2}, La/a/a;->b(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->m:Z

    const-string p2, "projectFilePath"

    invoke-static {p1, p2}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->n:Ljava/lang/String;

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->c()V

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->b()V

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d()V

    const/4 p1, 0x1

    return p1
.end method
