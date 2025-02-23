.class public Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/gmail/heagoo/apkeditor/cg;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->c:Landroid/os/Handler;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(IJLjava/lang/String;)V
    .registers 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "show_tip_"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->c:Landroid/os/Handler;

    new-instance v0, Lcom/gmail/heagoo/apkeditor/bc;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/gmail/heagoo/apkeditor/bc;-><init>(Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;ILandroid/content/SharedPreferences;Ljava/lang/String;)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;)V
    .registers 3

    new-instance v0, Lcom/gmail/heagoo/apkeditor/ce;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p0, v1}, Lcom/gmail/heagoo/apkeditor/ce;-><init>(Landroid/app/Activity;Lcom/gmail/heagoo/apkeditor/cg;I)V

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ce;->show()V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;Ljava/lang/String;)V
    .registers 6

    const-string v0, "search?q="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v1, p1, v2

    const-string v3, "png"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "jpg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iput-object v1, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->d:Ljava/lang/String;

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const p1, 0x7f0d012a

    const-wide/16 v0, 0x1f4

    const-string v2, "download2"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->a(IJLjava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->f:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/.download.img"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x8

    :try_start_2
    new-array v5, v2, [B

    fill-array-data v5, :array_0

    new-array v2, v2, [B

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v3, v4}, Lcom/a/a/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->d:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    const-string v2, ".png"

    goto :goto_1

    :cond_2
    const-string v2, ".jpg"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2, v0}, La/a/a;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->g:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->f:Z

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, v2

    :goto_2
    invoke-static {v3}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    throw v0

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public final b()V
    .registers 6

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->f:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d018d

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->g:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/webkit/WebView;

    invoke-direct {p1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->a:Landroid/webkit/WebView;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Directory"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->a:Landroid/webkit/WebView;

    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->a:Landroid/webkit/WebView;

    new-instance v0, Lcom/gmail/heagoo/apkeditor/bb;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/bb;-><init>(Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/SettingActivity;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "https://icons8.com"

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const p1, 0x7f0d0129

    const-wide/16 v0, 0x1f4

    const-string v2, "download1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->a(IJLjava/lang/String;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p2

    new-instance p3, Lcom/gmail/heagoo/apkeditor/bd;

    invoke-direct {p3, p0}, Lcom/gmail/heagoo/apkeditor/bd;-><init>(Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;)V

    invoke-virtual {p2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f0d0128

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const/4 p2, 0x1

    const v0, 0x7f0d0270

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
