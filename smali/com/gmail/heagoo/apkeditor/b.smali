.class final Lcom/gmail/heagoo/apkeditor/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/b;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/b;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    check-cast p2, Lcom/gmail/heagoo/apkeditor/i;

    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->a(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;Lcom/gmail/heagoo/apkeditor/i;)Lcom/gmail/heagoo/apkeditor/i;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/b;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->a(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "com.gmail.heagoo.action.apkcompose"

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/b;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-static {p2}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->a(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/b;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->b:Z

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/b;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->b(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Lcom/gmail/heagoo/apkeditor/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/i;->b()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/b;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->b(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Lcom/gmail/heagoo/apkeditor/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/i;->a()V

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/b;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->c(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/b;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->b(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Lcom/gmail/heagoo/apkeditor/i;

    move-result-object p1

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/b;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    iget-object v0, p1, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->a(Lcom/gmail/heagoo/apkeditor/ApkComposeService;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v0, p1, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Lcom/gmail/heagoo/apkeditor/h;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Lcom/gmail/heagoo/apkeditor/h;

    move-result-object v1

    iget-boolean v1, v1, Lcom/gmail/heagoo/apkeditor/h;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Lcom/gmail/heagoo/apkeditor/h;

    move-result-object v1

    iget-boolean v1, v1, Lcom/gmail/heagoo/apkeditor/h;->b:Z

    if-eqz v1, :cond_2

    invoke-interface {p2}, Lcom/gmail/heagoo/common/n;->a()V

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Lcom/gmail/heagoo/apkeditor/h;

    move-result-object v1

    iget-object v1, v1, Lcom/gmail/heagoo/apkeditor/h;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Lcom/gmail/heagoo/apkeditor/h;

    move-result-object p1

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/h;->d:Ljava/lang/String;

    invoke-interface {p2, v1, p1}, Lcom/gmail/heagoo/common/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Lcom/gmail/heagoo/apkeditor/h;

    move-result-object v1

    iget-object v1, v1, Lcom/gmail/heagoo/apkeditor/h;->e:Lcom/gmail/heagoo/common/o;

    if-eqz v1, :cond_4

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->d(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Lcom/gmail/heagoo/apkeditor/h;

    move-result-object p1

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/h;->e:Lcom/gmail/heagoo/common/o;

    invoke-interface {p2, p1}, Lcom/gmail/heagoo/common/n;->a(Lcom/gmail/heagoo/common/o;)V

    :cond_4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/b;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->b(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Lcom/gmail/heagoo/apkeditor/i;

    move-result-object p1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "targetApkPath"

    iget-object v1, p1, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->h(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "projectRootPath"

    iget-object v1, p1, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->i(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "signAPK"

    iget-object v1, p1, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->j(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fromGradle"

    iget-object v1, p1, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->k(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "projectFilePath"

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->l(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/b;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    const-string v0, "srcApkPath"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/b;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    const-string v0, "targetApkPath"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->a(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/b;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    const-string v0, "projectRootPath"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->b(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/b;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    const-string v0, "signAPK"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->a(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;Z)Z

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/b;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    new-instance p2, Lcom/gmail/heagoo/apkeditor/util/c;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->d(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/gmail/heagoo/apkeditor/util/c;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->a(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;Lcom/gmail/heagoo/apkeditor/util/c;)Lcom/gmail/heagoo/apkeditor/util/c;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
