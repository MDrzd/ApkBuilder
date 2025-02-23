.class public Lcom/gmail/heagoo/apkeditor/ce;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Lcom/gmail/heagoo/apkeditor/cg;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gmail/heagoo/apkeditor/cg;I)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const v0, 0x7f0e00a6

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ce;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/ce;->b:Lcom/gmail/heagoo/apkeditor/cg;

    iput p3, p0, Lcom/gmail/heagoo/apkeditor/ce;->c:I

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/gmail/heagoo/apkeditor/ce;->requestWindowFeature(I)Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0a006a

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    new-instance p1, Lcom/gmail/heagoo/apkeditor/ch;

    invoke-direct {p1, p0}, Lcom/gmail/heagoo/apkeditor/ch;-><init>(Lcom/gmail/heagoo/apkeditor/ce;)V

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ch;->start()V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ce;)Lcom/gmail/heagoo/apkeditor/cg;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ce;->b:Lcom/gmail/heagoo/apkeditor/cg;

    return-object p0
.end method

.method private a()V
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ce;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/ce;)I
    .registers 1

    iget p0, p0, Lcom/gmail/heagoo/apkeditor/ce;->c:I

    return p0
.end method

.method static synthetic c(Lcom/gmail/heagoo/apkeditor/ce;)V
    .registers 1

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ce;->a()V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ce;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ce;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/gmail/heagoo/apkeditor/cf;

    invoke-direct {v1, p0, p1}, Lcom/gmail/heagoo/apkeditor/cf;-><init>(Lcom/gmail/heagoo/apkeditor/ce;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ce;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08008e

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ce;->a()V

    :cond_0
    return-void
.end method
