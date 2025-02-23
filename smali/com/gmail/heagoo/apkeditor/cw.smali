.class final Lcom/gmail/heagoo/apkeditor/cw;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private synthetic e:Lcom/gmail/heagoo/apkeditor/cq;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/cq;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/cw;->e:Lcom/gmail/heagoo/apkeditor/cq;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/cw;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/cw;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/gmail/heagoo/apkeditor/cw;->c:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/cw;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/io/File;)V
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

    invoke-direct {p0, v2}, Lcom/gmail/heagoo/apkeditor/cw;->a(Ljava/io/File;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/gmail/heagoo/apkeditor/cw;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/cw;->e:Lcom/gmail/heagoo/apkeditor/cq;

    invoke-static {v3}, Lcom/gmail/heagoo/apkeditor/cq;->b(Lcom/gmail/heagoo/apkeditor/cq;)Ljava/util/ArrayList;

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

.method private a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cw;->e:Lcom/gmail/heagoo/apkeditor/cq;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/cq;->a(Lcom/gmail/heagoo/apkeditor/cq;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cw;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cw;->d:Ljava/lang/String;

    goto :goto_0

    :goto_1
    return p1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cw;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cw;->b:Ljava/util/List;

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

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/gmail/heagoo/apkeditor/cw;->a(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/gmail/heagoo/apkeditor/cw;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/cw;->e:Lcom/gmail/heagoo/apkeditor/cq;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/cq;->b(Lcom/gmail/heagoo/apkeditor/cq;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cw;->e:Lcom/gmail/heagoo/apkeditor/cq;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/cq;->b(Lcom/gmail/heagoo/apkeditor/cq;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cw;->e:Lcom/gmail/heagoo/apkeditor/cq;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/cq;->c(Lcom/gmail/heagoo/apkeditor/cq;)V

    return-void
.end method
