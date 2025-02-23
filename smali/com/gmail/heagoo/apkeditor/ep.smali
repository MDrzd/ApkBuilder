.class final Lcom/gmail/heagoo/apkeditor/ep;
.super Landroid/os/Handler;


# instance fields
.field a:Landroid/view/View;

.field private synthetic b:Lcom/gmail/heagoo/apkeditor/en;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/en;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ep;->b:Lcom/gmail/heagoo/apkeditor/en;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 2

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ep;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :goto_0
    return-void
.end method
