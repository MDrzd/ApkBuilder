.class final Lcom/gmail/heagoo/apkeditor/bb;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bb;->a:Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/bb;->a:Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->a(Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/bb;->a:Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;

    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->a(Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
