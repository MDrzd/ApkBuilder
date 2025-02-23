.class final Lcom/gmail/heagoo/apkeditor/es;
.super Landroid/os/Handler;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private synthetic d:Lcom/gmail/heagoo/apkeditor/er;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/er;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/es;->d:Lcom/gmail/heagoo/apkeditor/er;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)V
    .registers 4

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/es;->a:I

    iput p2, p0, Lcom/gmail/heagoo/apkeditor/es;->b:I

    iput p3, p0, Lcom/gmail/heagoo/apkeditor/es;->c:I

    const/16 p1, 0x3e8

    const-wide/16 p2, 0x64

    invoke-virtual {p0, p1, p2, p3}, Lcom/gmail/heagoo/apkeditor/es;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/es;->d:Lcom/gmail/heagoo/apkeditor/er;

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/es;->a:I

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/apkeditor/er;->f(I)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/es;->b:I

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/es;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    :cond_1
    :goto_0
    return-void
.end method
