.class public final Lcom/gmail/heagoo/apkeditor/ci;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/lang/ref/WeakReference;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;

.field private h:Ljava/io/FilenameFilter;

.field private i:Ljava/util/Set;

.field private j:Z

.field private k:Landroid/util/LruCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/FilenameFilter;Lcom/gmail/heagoo/apkeditor/cp;)V
    .registers 8

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->i:Ljava/util/Set;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->j:Z

    new-instance v0, Lcom/gmail/heagoo/apkeditor/cj;

    const/16 v1, 0x40

    invoke-direct {v0, p0, v1}, Lcom/gmail/heagoo/apkeditor/cj;-><init>(Lcom/gmail/heagoo/apkeditor/ci;I)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->k:Landroid/util/LruCache;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->a:Ljava/lang/ref/WeakReference;

    if-eqz p5, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->b:Ljava/lang/ref/WeakReference;

    :cond_0
    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/ci;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/ci;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/gmail/heagoo/apkeditor/ci;->h:Ljava/io/FilenameFilter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0d0267

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/ci;->f:Ljava/lang/String;

    if-eqz p5, :cond_1

    const p3, 0x7f0a009b

    goto :goto_0

    :cond_1
    const p3, 0x7f0a0098

    :goto_0
    iput p3, p0, Lcom/gmail/heagoo/apkeditor/ci;->c:I

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ba;->b()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p5, :cond_2

    const p1, 0x7f0a009d

    goto :goto_1

    :cond_2
    const p1, 0x7f0a009a

    goto :goto_1

    :pswitch_1
    if-eqz p5, :cond_3

    const p1, 0x7f0a009c

    goto :goto_1

    :cond_3
    const p1, 0x7f0a0099

    :goto_1
    iput p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->c:I

    :goto_2
    invoke-direct {p0, p2}, Lcom/gmail/heagoo/apkeditor/ci;->c(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/FilenameFilter;)V
    .registers 12

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/gmail/heagoo/apkeditor/ci;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/FilenameFilter;Lcom/gmail/heagoo/apkeditor/cp;)V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ci;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ci;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ci;Ljava/io/File;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/io/File;)Ljava/util/List;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-direct {p0, v4}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object v0
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ci;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/Map;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/Map;
    .registers 12

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lcom/gmail/heagoo/common/i;->a(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v5, v4}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/InputStream;)Z
    .registers 6

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/gmail/heagoo/apkeditor/ci;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p2, v2}, Lcom/a/a/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method private c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/ci;->d(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c(Ljava/util/List;)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->i:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ci;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/apkeditor/cp;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->i:Ljava/util/Set;

    invoke-interface {p1, v0}, Lcom/gmail/heagoo/apkeditor/cp;->a(Ljava/util/Set;)V

    :cond_2
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 11

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ci;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ci;->h:Ljava/io/FilenameFilter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ci;->h:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    new-instance v7, Lcom/gmail/heagoo/common/c;

    invoke-direct {v7}, Lcom/gmail/heagoo/common/c;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    iput-boolean v6, v7, Lcom/gmail/heagoo/common/c;->b:Z

    iget-object v6, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    new-instance v4, Lcom/gmail/heagoo/b/a;

    invoke-direct {v4}, Lcom/gmail/heagoo/b/a;-><init>()V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v1, :cond_2

    new-instance v0, Lcom/gmail/heagoo/common/c;

    invoke-direct {v0}, Lcom/gmail/heagoo/common/c;-><init>()V

    const-string v1, ".."

    iput-object v1, v0, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/gmail/heagoo/common/c;->b:Z

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->e:Ljava/lang/String;

    return-void

    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, La/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    new-instance v0, Lcom/gmail/heagoo/common/c;

    invoke-direct {v0}, Lcom/gmail/heagoo/common/c;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, La/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/gmail/heagoo/common/c;->b:Z

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/gmail/heagoo/common/c;

    invoke-direct {v0}, Lcom/gmail/heagoo/common/c;-><init>()V

    const-string v1, ".."

    iput-object v1, v0, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/gmail/heagoo/common/c;->b:Z

    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/gmail/heagoo/common/c;->c:J

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->e:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method private e(Ljava/lang/String;)Lcom/gmail/heagoo/apkeditor/fm;
    .registers 5

    new-instance v0, Lcom/gmail/heagoo/common/q;

    invoke-direct {v0}, Lcom/gmail/heagoo/common/q;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ci;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1, v1}, Lcom/gmail/heagoo/common/q;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ci;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/gmail/heagoo/common/q;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/gmail/heagoo/common/q;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gmail/heagoo/apkeditor/fm;

    invoke-direct {v1, p1, v0}, Lcom/gmail/heagoo/apkeditor/fm;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-object v1
.end method

.method private f(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ci;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f0d015a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g(Ljava/lang/String;)Ljava/util/List;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/gmail/heagoo/apkeditor/fm;
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/ci;->e(Ljava/lang/String;)Lcom/gmail/heagoo/apkeditor/fm;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->e:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/ci;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(I)V
    .registers 5

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".."

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/common/c;

    iget-object v1, v1, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->i:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->i:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->i:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ci;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v2, v5}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ci;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const p2, 0x7f0d0159

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object v0, p2, v3

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/ci;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p2, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-static {v5}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v4, v5

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/ci;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    const v0, 0x7f0d0151

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/ci;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static {v4}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public final a(Z)V
    .registers 4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/common/c;

    iget-object p1, p1, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    const-string v1, ".."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->i:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->i:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->i:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/apkeditor/cp;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->i:Ljava/util/Set;

    invoke-interface {p1, v0}, Lcom/gmail/heagoo/apkeditor/cp;->a(Ljava/util/Set;)V

    :cond_2
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ci;->notifyDataSetChanged()V

    return-void
.end method

.method public final b()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->i:Ljava/util/Set;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/ci;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ci;->notifyDataSetChanged()V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/gmail/heagoo/apkeditor/ci;->f(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/ci;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const p2, 0x7f0d0150

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ci;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/ci;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected final b(Ljava/util/List;)V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmail/heagoo/common/c;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/gmail/heagoo/apkeditor/ci;->e(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/gmail/heagoo/apkeditor/ci;->c(Ljava/util/List;)V

    return-void
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->j:Z

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0d015e

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3, p2}, Lcom/a/a/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p2, v0

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p2, v0

    :goto_0
    move-object v0, v3

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object p2, v0

    move-object v3, p2

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p2, v0

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/io/Closeable;)V

    :goto_2
    invoke-static {p2}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_3
    move-exception p1

    move-object v3, v0

    :goto_3
    invoke-static {v3}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/io/Closeable;)V

    invoke-static {p2}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_0
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v3, "tmp"

    invoke-static {v0, v3}, Lcom/gmail/heagoo/common/ae;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/gmail/heagoo/common/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/gmail/heagoo/common/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ci;->notifyDataSetChanged()V

    return-void
.end method

.method public final c()Z
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ci;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/gmail/heagoo/apkeditor/ck;

    invoke-direct {v0, p0, p1, p2}, Lcom/gmail/heagoo/apkeditor/ck;-><init>(Lcom/gmail/heagoo/apkeditor/ci;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/gmail/heagoo/apkeditor/ce;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/ci;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    const v1, 0x7f0d016e

    invoke-direct {p1, p2, v0, v1}, Lcom/gmail/heagoo/apkeditor/ce;-><init>(Landroid/app/Activity;Lcom/gmail/heagoo/apkeditor/cg;I)V

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ce;->show()V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/ci;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/ci;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/ci;->g:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gmail/heagoo/common/c;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/ci;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v2, p0, Lcom/gmail/heagoo/apkeditor/ci;->c:I

    invoke-virtual {p2, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/gmail/heagoo/apkeditor/cm;

    invoke-direct {v2, v1}, Lcom/gmail/heagoo/apkeditor/cm;-><init>(B)V

    const v3, 0x7f0800d6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/gmail/heagoo/apkeditor/cm;->a:Landroid/widget/ImageView;

    const v3, 0x7f0800d8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/gmail/heagoo/apkeditor/cm;->b:Landroid/widget/TextView;

    const v3, 0x7f0800a7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/gmail/heagoo/apkeditor/cm;->c:Landroid/widget/TextView;

    const v3, 0x7f080084

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Lcom/gmail/heagoo/apkeditor/cm;->d:Landroid/widget/CheckBox;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmail/heagoo/apkeditor/cm;

    :goto_0
    iget-object v3, v2, Lcom/gmail/heagoo/apkeditor/cm;->b:Landroid/widget/TextView;

    iget-object v4, p3, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p3, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/gmail/heagoo/apkeditor/cm;->a:Landroid/widget/ImageView;

    const v4, 0x7f0700b5

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    :cond_1
    iget-boolean v3, p3, Lcom/gmail/heagoo/common/c;->b:Z

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/gmail/heagoo/apkeditor/cm;->a:Landroid/widget/ImageView;

    const v4, 0x7f0700b2

    goto :goto_1

    :cond_2
    iget-object v3, p3, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const v4, 0x7f07015e

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/gmail/heagoo/apkeditor/cm;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    iget-object v3, p3, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    const-string v5, ".png"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_5

    const-string v5, ".jpg"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->e:Ljava/lang/String;

    iget-object v3, p3, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/ci;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/ci;->d:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/ci;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_4

    :cond_7
    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/ci;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-direct {p0, v3}, Lcom/gmail/heagoo/apkeditor/ci;->e(Ljava/lang/String;)Lcom/gmail/heagoo/apkeditor/fm;

    move-result-object v0

    iget-object v3, v2, Lcom/gmail/heagoo/apkeditor/cm;->a:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/gmail/heagoo/apkeditor/fm;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/fm;->b:Ljava/lang/String;

    goto :goto_6

    :cond_8
    iget-object v3, p3, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    const-string v5, ".xml"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v2, Lcom/gmail/heagoo/apkeditor/cm;->a:Landroid/widget/ImageView;

    goto/16 :goto_1

    :cond_9
    iget-object v3, v2, Lcom/gmail/heagoo/apkeditor/cm;->a:Landroid/widget/ImageView;

    const v4, 0x7f0700b1

    goto/16 :goto_1

    :goto_6
    const/16 v3, 0x8

    if-eqz v0, :cond_a

    iget-object v4, v2, Lcom/gmail/heagoo/apkeditor/cm;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/gmail/heagoo/apkeditor/cm;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_a
    iget-object v0, v2, Lcom/gmail/heagoo/apkeditor/cm;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    iget-object v0, v2, Lcom/gmail/heagoo/apkeditor/cm;->d:Landroid/widget/CheckBox;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->j:Z

    if-eqz v0, :cond_c

    iget-object v0, v2, Lcom/gmail/heagoo/apkeditor/cm;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    if-nez p1, :cond_b

    iget-object p3, p3, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    const-string v0, ".."

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p1, v2, Lcom/gmail/heagoo/apkeditor/cm;->d:Landroid/widget/CheckBox;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_8

    :cond_b
    iget-object p3, v2, Lcom/gmail/heagoo/apkeditor/cm;->d:Landroid/widget/CheckBox;

    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object p3, v2, Lcom/gmail/heagoo/apkeditor/cm;->d:Landroid/widget/CheckBox;

    invoke-virtual {p3, p1}, Landroid/widget/CheckBox;->setId(I)V

    iget-object p3, v2, Lcom/gmail/heagoo/apkeditor/cm;->d:Landroid/widget/CheckBox;

    invoke-virtual {p3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p3, v2, Lcom/gmail/heagoo/apkeditor/cm;->d:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ci;->i:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_8

    :cond_c
    iget-object p1, v2, Lcom/gmail/heagoo/apkeditor/cm;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_d
    :goto_8
    return-object p2
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/ci;->i:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/ci;->i:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->b:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ci;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/apkeditor/cp;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/ci;->i:Ljava/util/Set;

    invoke-interface {p1, p2}, Lcom/gmail/heagoo/apkeditor/cp;->a(Ljava/util/Set;)V

    :cond_1
    return-void
.end method
