.class final Lcom/gmail/heagoo/apkeditor/dh;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private synthetic f:Lcom/gmail/heagoo/apkeditor/cx;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/apkeditor/cx;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/dh;->f:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/dh;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/dh;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/gmail/heagoo/apkeditor/dh;->c:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/dh;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/gmail/heagoo/apkeditor/dh;->e:Z

    return-void
.end method

.method private a(Ljava/io/File;)Z
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/dh;->e:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    :goto_0
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dh;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dh;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-object v1, v2

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_4
    throw p1

    :catch_2
    :goto_5
    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_5
    :goto_6
    return v0
.end method

.method private b(Ljava/io/File;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lcom/gmail/heagoo/apkeditor/dh;->b(Ljava/io/File;)V

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/dh;->c(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/gmail/heagoo/apkeditor/dh;->a(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/dh;->f:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {v3}, Lcom/gmail/heagoo/apkeditor/cx;->a(Lcom/gmail/heagoo/apkeditor/cx;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static c(Ljava/io/File;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".smali"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".txt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".java"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dh;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dh;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/gmail/heagoo/apkeditor/dh;->b(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/dh;->c(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lcom/gmail/heagoo/apkeditor/dh;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dh;->f:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/cx;->a(Lcom/gmail/heagoo/apkeditor/cx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dh;->f:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/cx;->a(Lcom/gmail/heagoo/apkeditor/cx;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dh;->f:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/cx;->b(Lcom/gmail/heagoo/apkeditor/cx;)V

    return-void
.end method
