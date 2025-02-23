.class final Lcom/gmail/heagoo/apkeditor/e;
.super Landroid/os/Handler;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    if-eqz v0, :cond_1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->e(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Lcom/gmail/heagoo/apkeditor/a/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/gmail/heagoo/apkeditor/a/a;->a()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->f(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    const/4 p1, 0x5

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Lcom/gmail/heagoo/apkeditor/e;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    :pswitch_1
    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->c(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_3
    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->a(Z)V

    return-void

    :pswitch_4
    invoke-virtual {v0, v2}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->a(Z)V

    return-void

    :pswitch_5
    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->b()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
