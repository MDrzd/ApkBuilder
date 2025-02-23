.class public final Lcom/gmail/heagoo/httpserver/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/gmail/heagoo/httpserver/e;


# instance fields
.field private final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/httpserver/e;->b:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/app/Activity;)Lcom/gmail/heagoo/httpserver/d;
    .registers 6

    iget-object v0, p0, Lcom/gmail/heagoo/httpserver/e;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/gmail/heagoo/httpserver/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmail/heagoo/httpserver/f;

    invoke-static {v2}, Lcom/gmail/heagoo/httpserver/f;->a(Lcom/gmail/heagoo/httpserver/f;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-static {v2}, Lcom/gmail/heagoo/httpserver/f;->b(Lcom/gmail/heagoo/httpserver/f;)Lcom/gmail/heagoo/httpserver/d;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static a()Lcom/gmail/heagoo/httpserver/e;
    .registers 1

    sget-object v0, Lcom/gmail/heagoo/httpserver/e;->a:Lcom/gmail/heagoo/httpserver/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/gmail/heagoo/httpserver/e;

    invoke-direct {v0}, Lcom/gmail/heagoo/httpserver/e;-><init>()V

    sput-object v0, Lcom/gmail/heagoo/httpserver/e;->a:Lcom/gmail/heagoo/httpserver/e;

    :cond_0
    sget-object v0, Lcom/gmail/heagoo/httpserver/e;->a:Lcom/gmail/heagoo/httpserver/e;

    return-object v0
.end method

.method static synthetic a(Lcom/gmail/heagoo/httpserver/e;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/httpserver/e;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/gmail/heagoo/httpserver/e;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/gmail/heagoo/httpserver/e;->b(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    const v0, 0x7f0d0320

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0d031f

    invoke-virtual {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/httpserver/e;->a(Landroid/app/Activity;)Lcom/gmail/heagoo/httpserver/d;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "http_server"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "http.zip"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "http.zip"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3, v5}, Lcom/a/a/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, La/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v5, v1

    goto :goto_2

    :catch_1
    move-exception p2

    move-object v5, v1

    :goto_0
    move-object v1, v3

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v3, v1

    move-object v5, v3

    goto :goto_2

    :catch_2
    move-exception p2

    move-object v5, v1

    :goto_1
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Init Error: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v1}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_3
    move-exception p1

    move-object v3, v1

    :goto_2
    invoke-static {v3}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_0
    :goto_3
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/gmail/heagoo/httpserver/HttpService;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "httpDirectory"

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    const-string v0, "projectDirectory"

    invoke-static {v1, v0, p2}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance p2, Lcom/gmail/heagoo/httpserver/f;

    invoke-direct {p2, p0, p1}, Lcom/gmail/heagoo/httpserver/f;-><init>(Lcom/gmail/heagoo/httpserver/e;Landroid/app/Activity;)V

    invoke-virtual {p1, v1, p2, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    :cond_1
    iget-object v1, v0, Lcom/gmail/heagoo/httpserver/d;->a:Lcom/gmail/heagoo/httpserver/HttpService;

    invoke-static {v1, p2}, Lcom/gmail/heagoo/httpserver/HttpService;->a(Lcom/gmail/heagoo/httpserver/HttpService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v0, Lcom/gmail/heagoo/httpserver/d;->a:Lcom/gmail/heagoo/httpserver/HttpService;

    invoke-static {v1}, Lcom/gmail/heagoo/httpserver/HttpService;->a(Lcom/gmail/heagoo/httpserver/HttpService;)Lcom/gmail/heagoo/httpserver/b;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/gmail/heagoo/httpserver/d;->a:Lcom/gmail/heagoo/httpserver/HttpService;

    invoke-static {v1}, Lcom/gmail/heagoo/httpserver/HttpService;->a(Lcom/gmail/heagoo/httpserver/HttpService;)Lcom/gmail/heagoo/httpserver/b;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/gmail/heagoo/httpserver/b;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/gmail/heagoo/httpserver/d;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gmail/heagoo/httpserver/e;->b(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
