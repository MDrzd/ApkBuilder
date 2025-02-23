.class public Lcom/gmail/heagoo/pngeditor/o;
.super Landroid/support/v7/app/AppCompatActivity;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private d:Ljava/lang/String;

.field private e:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gmail/heagoo/pngeditor/o;->d:Ljava/lang/String;

    iput p1, p0, Lcom/gmail/heagoo/pngeditor/o;->a:I

    iput-object p2, p0, Lcom/gmail/heagoo/pngeditor/o;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmail/heagoo/pngeditor/o;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/gmail/heagoo/pngeditor/o;->c:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gmail/heagoo/pngeditor/o;->d:Ljava/lang/String;

    iput p1, p0, Lcom/gmail/heagoo/pngeditor/o;->a:I

    iput-object p2, p0, Lcom/gmail/heagoo/pngeditor/o;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/gmail/heagoo/pngeditor/o;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/pngeditor/o;)Landroid/webkit/WebView;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/pngeditor/o;->e:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic b(Lcom/gmail/heagoo/pngeditor/o;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/pngeditor/o;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    iget p1, p0, Lcom/gmail/heagoo/pngeditor/o;->a:I

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/o;->setTitle(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/pngeditor/o;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    new-instance p1, Landroid/webkit/WebView;

    invoke-direct {p1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/o;->e:Landroid/webkit/WebView;

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/o;->e:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/o;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/o;->d:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/o;->e:Landroid/webkit/WebView;

    new-instance v0, Lcom/gmail/heagoo/pngeditor/p;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/pngeditor/p;-><init>(Lcom/gmail/heagoo/pngeditor/o;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_1
    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/o;->e:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/o;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/gmail/heagoo/pngeditor/o;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f08001d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-boolean v0, p0, Lcom/gmail/heagoo/pngeditor/o;->c:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f08000f

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/pngeditor/o;->finish()V

    return v1

    :cond_0
    const v2, 0x7f08001d

    if-ne v0, v2, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/gmail/heagoo/pngeditor/o;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/o;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
