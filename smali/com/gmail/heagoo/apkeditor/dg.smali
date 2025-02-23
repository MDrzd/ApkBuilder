.class final Lcom/gmail/heagoo/apkeditor/dg;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private synthetic d:Lcom/gmail/heagoo/apkeditor/cx;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/apkeditor/cx;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/dg;->d:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/dg;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/dg;->b:Ljava/lang/String;

    iput p4, p0, Lcom/gmail/heagoo/apkeditor/dg;->c:I

    return-void
.end method

.method private varargs a()Lcom/gmail/heagoo/apkeditor/fn;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    new-instance v0, Lcom/gmail/heagoo/apkeditor/fn;

    invoke-direct {v0}, Lcom/gmail/heagoo/apkeditor/fn;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dg;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/gmail/heagoo/apkeditor/fn;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dg;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/gmail/heagoo/apkeditor/fn;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dg;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/gmail/heagoo/apkeditor/dg;->a:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    :goto_0
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/gmail/heagoo/apkeditor/dg;->d:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {v6}, Lcom/gmail/heagoo/apkeditor/cx;->c(Lcom/gmail/heagoo/apkeditor/cx;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/gmail/heagoo/apkeditor/dg;->b:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    :goto_1
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    new-instance v7, Lcom/gmail/heagoo/apkeditor/bu;

    invoke-direct {v7, v5, v6, v2}, Lcom/gmail/heagoo/apkeditor/bu;-><init>(IILjava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iput-object v3, v0, Lcom/gmail/heagoo/apkeditor/fn;->c:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-object v2, v4

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v4, v2

    :goto_2
    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_3
    throw v0

    :catch_2
    :goto_3
    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_4
    :goto_4
    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/dg;->a()Lcom/gmail/heagoo/apkeditor/fn;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/gmail/heagoo/apkeditor/fn;

    iget-object v0, p1, Lcom/gmail/heagoo/apkeditor/fn;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dg;->d:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/cx;->d(Lcom/gmail/heagoo/apkeditor/cx;)Lcom/gmail/heagoo/apkeditor/bv;

    move-result-object v0

    iget-object v1, p1, Lcom/gmail/heagoo/apkeditor/fn;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/fn;->c:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/gmail/heagoo/apkeditor/bv;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dg;->d:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/cx;->e(Lcom/gmail/heagoo/apkeditor/cx;)Landroid/widget/ExpandableListView;

    move-result-object p1

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/dg;->c:I

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    return-void
.end method
