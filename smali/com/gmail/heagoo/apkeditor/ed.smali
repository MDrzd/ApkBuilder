.class final Lcom/gmail/heagoo/apkeditor/ed;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ed;->a:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ed;->a:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->i(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Landroid/widget/SlidingDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ed;->a:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->i(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Landroid/widget/SlidingDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->close()V

    return p3

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ed;->a:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->j(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)V

    const/4 p1, 0x0

    return p1
.end method
