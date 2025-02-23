.class public Lcom/gmail/heagoo/apkeditor/HelpActivity;
.super Lcom/gmail/heagoo/common/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/gmail/heagoo/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/gmail/heagoo/common/f;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ba;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/HelpActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    const p1, 0x7f0a0036

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/HelpActivity;->setContentView(I)V

    const p1, 0x7f0800f0

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    const-string v0, "file:///android_res/raw/help.htm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "de"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "es"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "hu"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "iw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "file:///android_res/raw/help.htm"

    :cond_2
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
