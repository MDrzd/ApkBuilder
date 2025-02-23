.class public final Lcom/gmail/heagoo/common/w;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/gmail/heagoo/common/y;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gmail/heagoo/common/y;I)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const v0, 0x7f0e00a6

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/gmail/heagoo/common/w;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/gmail/heagoo/common/w;->b:Lcom/gmail/heagoo/common/y;

    iput p3, p0, Lcom/gmail/heagoo/common/w;->c:I

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/gmail/heagoo/common/w;->requestWindowFeature(I)Z

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0a006a

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    new-instance p1, Lcom/gmail/heagoo/common/z;

    invoke-direct {p1, p0}, Lcom/gmail/heagoo/common/z;-><init>(Lcom/gmail/heagoo/common/w;)V

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/z;->start()V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/common/w;)Lcom/gmail/heagoo/common/y;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/common/w;->b:Lcom/gmail/heagoo/common/y;

    return-object p0
.end method

.method static synthetic b(Lcom/gmail/heagoo/common/w;)I
    .registers 1

    iget p0, p0, Lcom/gmail/heagoo/common/w;->c:I

    return p0
.end method


# virtual methods
.method protected final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/common/w;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/common/w;->a:Landroid/app/Activity;

    new-instance v1, Lcom/gmail/heagoo/common/x;

    invoke-direct {v1, p0, p1}, Lcom/gmail/heagoo/common/x;-><init>(Lcom/gmail/heagoo/common/w;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/common/w;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
