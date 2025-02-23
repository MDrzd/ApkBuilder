.class final Lcom/gmail/heagoo/apkeditor/ez;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ez;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ez;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {p1, v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->d(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;Z)Z

    return v0

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ez;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->p(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Landroid/widget/SlidingDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ez;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->p(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Landroid/widget/SlidingDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->close()V

    return v0

    :cond_1
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ez;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->q(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V

    const/4 p1, 0x0

    return p1
.end method
