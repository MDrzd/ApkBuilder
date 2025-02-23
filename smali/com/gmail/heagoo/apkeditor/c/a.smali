.class public final Lcom/gmail/heagoo/apkeditor/c/a;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/gmail/heagoo/apkeditor/do;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Landroid/webkit/WebView;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/File;

.field private f:Ljava/lang/ref/WeakReference;

.field private g:Lcom/gmail/heagoo/apkeditor/c/c;

.field private h:Lcom/gmail/heagoo/apkeditor/dm;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    const v0, 0x7f0e00a4

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/gmail/heagoo/apkeditor/c/c;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/c/c;-><init>(Lcom/gmail/heagoo/apkeditor/c/a;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/c/a;->g:Lcom/gmail/heagoo/apkeditor/c/c;

    new-instance v0, Lcom/gmail/heagoo/apkeditor/dm;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/dm;-><init>(Lcom/gmail/heagoo/apkeditor/do;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/c/a;->h:Lcom/gmail/heagoo/apkeditor/dm;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/c/a;->f:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ba;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/c/a;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    const p1, 0x7f0a0062

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/c/a;->setContentView(I)V

    const p1, 0x7f0800d8

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/c/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/c/a;->a:Landroid/widget/TextView;

    const p1, 0x7f080139

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/c/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/c/a;->b:Landroid/view/View;

    const p1, 0x7f080211

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/c/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/c/a;->c:Landroid/webkit/WebView;

    const p1, 0x7f0800b4

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/c/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/c/a;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/c/a;)Lcom/gmail/heagoo/apkeditor/c/c;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/c/a;->g:Lcom/gmail/heagoo/apkeditor/c/c;

    return-object p0
.end method

.method private a(I)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/c/a;->e:Ljava/io/File;

    if-eqz v0, :cond_1

    const-string v0, ""

    if-lez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#line"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/c/a;->c:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/c/a;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/c/a;I)V
    .registers 2

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/c/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/c/a;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/c/a;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/c/a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "viewsource.css"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/c/a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v4, "viewsource.css"

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2, v4}, Lcom/a/a/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/c/a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, ".html"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_2
    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/gmail/heagoo/apkeditor/b/e;

    invoke-direct {p1}, Lcom/gmail/heagoo/apkeditor/b/e;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/gmail/heagoo/apkeditor/b/e;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, La/a/a;->a(Ljava/util/List;Ljava/lang/String;)V

    :goto_2
    iput-object v3, p0, Lcom/gmail/heagoo/apkeditor/c/a;->e:Ljava/io/File;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/c/a;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/c/a;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Lcom/gmail/heagoo/apkeditor/b/d;

    invoke-direct {v0, p1}, Lcom/gmail/heagoo/apkeditor/b/d;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/c/a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    const-string v2, ".html"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/b/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v1, p0, Lcom/gmail/heagoo/apkeditor/c/a;->e:Ljava/io/File;

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/c/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/c/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/c/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->c(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/c/a;->b:Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/c/a;->b:Landroid/view/View;

    const/16 v0, 0x8

    goto :goto_0

    :goto_1
    new-instance p2, Lcom/gmail/heagoo/apkeditor/c/b;

    invoke-direct {p2, p0, p1}, Lcom/gmail/heagoo/apkeditor/c/b;-><init>(Lcom/gmail/heagoo/apkeditor/c/a;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gmail/heagoo/apkeditor/c/b;->start()V

    :cond_1
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/c/a;->show()V

    return-void
.end method

.method public final b(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/c/a;->a(I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080139

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/c/a;->h:Lcom/gmail/heagoo/apkeditor/dm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/c/a;->h:Lcom/gmail/heagoo/apkeditor/dm;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/dm;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/c/a;->h:Lcom/gmail/heagoo/apkeditor/dm;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/dm;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/gmail/heagoo/apkeditor/d/a;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/c/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/gmail/heagoo/apkeditor/d/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/d/a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/c/a;->h:Lcom/gmail/heagoo/apkeditor/dm;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/c/a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/c/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/gmail/heagoo/apkeditor/dm;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    :cond_1
    const p1, 0x7f0800b4

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/c/a;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method
