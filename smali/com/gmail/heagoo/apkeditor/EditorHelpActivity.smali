.class public Lcom/gmail/heagoo/apkeditor/EditorHelpActivity;
.super Lcom/gmail/heagoo/common/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/gmail/heagoo/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/gmail/heagoo/common/f;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ba;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/EditorHelpActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    const p1, 0x7f0a0036

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/EditorHelpActivity;->setContentView(I)V

    const p1, 0x7f0800f0

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/EditorHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    const-string v0, "file:///android_res/raw/editor_help.htm"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
