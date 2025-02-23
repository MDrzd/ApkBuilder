.class public Ljackpal/androidterm/TermService;
.super Landroid/app/Service;

# interfaces
.implements Ljackpal/androidterm/a/w;


# instance fields
.field private a:Ljackpal/androidterm/compat/h;

.field private b:Ljackpal/androidterm/c/a;

.field private final c:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljackpal/androidterm/t;

    invoke-direct {v0, p0}, Ljackpal/androidterm/t;-><init>(Ljackpal/androidterm/TermService;)V

    iput-object v0, p0, Ljackpal/androidterm/TermService;->c:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic a(Ljackpal/androidterm/TermService;)Ljackpal/androidterm/c/a;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/TermService;->b:Ljackpal/androidterm/c/a;

    return-object p0
.end method


# virtual methods
.method public final a()Ljackpal/androidterm/c/a;
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/TermService;->b:Ljackpal/androidterm/c/a;

    return-object v0
.end method

.method public final a(Ljackpal/androidterm/a/q;)V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/TermService;->b:Ljackpal/androidterm/c/a;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/c/a;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const-string v0, "jackpal.androidterm.action.START_TERM.v1"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "TermService"

    const-string v0, "Outside process called onBind()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljackpal/androidterm/q;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ljackpal/androidterm/q;-><init>(Ljackpal/androidterm/TermService;B)V

    return-object p1

    :cond_0
    const-string p1, "TermService"

    const-string v0, "Activity called onBind()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ljackpal/androidterm/TermService;->c:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .registers 14

    invoke-virtual {p0}, Ljackpal/androidterm/TermService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "HOME"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljackpal/androidterm/TermService;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "home_path"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "home_path"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljackpal/androidterm/compat/h;

    invoke-direct {v0, p0}, Ljackpal/androidterm/compat/h;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Ljackpal/androidterm/TermService;->a:Ljackpal/androidterm/compat/h;

    new-instance v0, Ljackpal/androidterm/c/a;

    invoke-direct {v0}, Ljackpal/androidterm/c/a;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/TermService;->b:Ljackpal/androidterm/c/a;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljackpal/androidterm/Term;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const v2, 0x7f0d006b

    const v4, 0x7f0700fc

    const v5, 0x7f0d0292

    const/4 v6, 0x1

    const/16 v7, 0xb

    if-ge v1, v7, :cond_0

    new-instance v1, Landroid/app/Notification;

    invoke-virtual {p0, v5}, Ljackpal/androidterm/TermService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v4, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v4, v1, Landroid/app/Notification;->flags:I

    const/4 v7, 0x2

    or-int/2addr v4, v7

    iput v4, v1, Landroid/app/Notification;->flags:I

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v8, "setLatestEventInfo"

    const/4 v9, 0x4

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v3

    const-class v11, Ljava/lang/CharSequence;

    aput-object v11, v10, v6

    const-class v11, Ljava/lang/CharSequence;

    aput-object v11, v10, v7

    const-class v11, Landroid/app/PendingIntent;

    const/4 v12, 0x3

    aput-object v11, v10, v12

    invoke-virtual {v4, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v8, v9, [Ljava/lang/Object;

    aput-object p0, v8, v3

    invoke-virtual {p0, v2}, Ljackpal/androidterm/TermService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v8, v6

    invoke-virtual {p0, v5}, Ljackpal/androidterm/TermService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v8, v7

    aput-object v0, v8, v12

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljackpal/androidterm/TermService;->a:Ljackpal/androidterm/compat/h;

    invoke-virtual {v0, v6, v1}, Ljackpal/androidterm/compat/h;->a(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Ljackpal/androidterm/TermService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {p0, v5}, Ljackpal/androidterm/TermService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Ljackpal/androidterm/TermService;->startForeground(ILandroid/app/Notification;)V

    :catch_0
    :goto_0
    const-string v0, "Term"

    const-string v1, "TermService started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/TermService;->a:Ljackpal/androidterm/compat/h;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/compat/h;->a(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Ljackpal/androidterm/TermService;->stopForeground(Z)V

    :goto_0
    iget-object v0, p0, Ljackpal/androidterm/TermService;->b:Ljackpal/androidterm/c/a;

    invoke-virtual {v0}, Ljackpal/androidterm/c/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljackpal/androidterm/a/q;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljackpal/androidterm/a/q;->a(Ljackpal/androidterm/a/w;)V

    invoke-virtual {v1}, Ljackpal/androidterm/a/q;->d()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ljackpal/androidterm/TermService;->b:Ljackpal/androidterm/c/a;

    invoke-virtual {v0}, Ljackpal/androidterm/c/a;->clear()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    const/4 p1, 0x1

    return p1
.end method
