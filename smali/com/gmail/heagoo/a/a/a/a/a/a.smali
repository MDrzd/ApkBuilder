.class public final Lcom/gmail/heagoo/a/a/a/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/gmail/heagoo/a/a/a/a/a/a;


# instance fields
.field private b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gmail/heagoo/a/a/a/a/a/a;

    invoke-direct {v0}, Lcom/gmail/heagoo/a/a/a/a/a/a;-><init>()V

    sput-object v0, Lcom/gmail/heagoo/a/a/a/a/a/a;->a:Lcom/gmail/heagoo/a/a/a/a/a/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/a/a/a/a/a/a;->b:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/gmail/heagoo/a/a/a/a/a/a;
    .registers 1

    sget-object v0, Lcom/gmail/heagoo/a/a/a/a/a/a;->a:Lcom/gmail/heagoo/a/a/a/a/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/gmail/heagoo/apkeditor/b/f;)Z
    .registers 8

    iget-object v0, p1, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/a/a/a/a/a/a;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/gmail/heagoo/a/a/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gmail/heagoo/apkeditor/b/f;

    iget-object v4, p1, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    iget-object v5, v3, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    iget-object v5, v3, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v2, v3, Lcom/gmail/heagoo/apkeditor/b/f;->d:Ljava/lang/String;

    iput-object v2, p1, Lcom/gmail/heagoo/apkeditor/b/f;->d:Ljava/lang/String;

    iget-object v2, v3, Lcom/gmail/heagoo/apkeditor/b/f;->e:Ljava/lang/String;

    iput-object v2, p1, Lcom/gmail/heagoo/apkeditor/b/f;->e:Ljava/lang/String;

    iget-object v2, v3, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    iput-object v2, p1, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/gmail/heagoo/apkeditor/b/f;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/gmail/heagoo/apkeditor/b/f;->a(Ljava/util/List;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v2, v1

    monitor-exit v0

    return v1

    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return v1
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/a/a/a/a/a/a;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/gmail/heagoo/a/a/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Lcom/gmail/heagoo/apkeditor/b/f;)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/a/a/a/a/a/a;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/gmail/heagoo/a/a/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
