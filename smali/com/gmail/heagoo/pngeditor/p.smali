.class final Lcom/gmail/heagoo/pngeditor/p;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/pngeditor/o;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/pngeditor/o;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/p;->a:Lcom/gmail/heagoo/pngeditor/o;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/p;->a:Lcom/gmail/heagoo/pngeditor/o;

    invoke-static {p1}, Lcom/gmail/heagoo/pngeditor/o;->a(Lcom/gmail/heagoo/pngeditor/o;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Landroid/webkit/WebViewClient;

    invoke-direct {p2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/p;->a:Lcom/gmail/heagoo/pngeditor/o;

    invoke-static {p1}, Lcom/gmail/heagoo/pngeditor/o;->a(Lcom/gmail/heagoo/pngeditor/o;)Landroid/webkit/WebView;

    move-result-object p1

    iget-object p2, p0, Lcom/gmail/heagoo/pngeditor/p;->a:Lcom/gmail/heagoo/pngeditor/o;

    invoke-static {p2}, Lcom/gmail/heagoo/pngeditor/o;->b(Lcom/gmail/heagoo/pngeditor/o;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
