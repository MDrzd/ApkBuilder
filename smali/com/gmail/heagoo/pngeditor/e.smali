.class final Lcom/gmail/heagoo/pngeditor/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/e;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x7f08006a

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/e;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->c(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Lcom/b/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/e;->a()F

    move-result v0

    goto :goto_0

    :cond_0
    const v1, 0x7f080067

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const v1, 0x7f080068

    if-ne p1, v1, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_2
    const v1, 0x7f080069

    if-ne p1, v1, :cond_3

    const/high16 v0, 0x40800000    # 4.0f

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/e;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->c(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Lcom/b/a/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/b/a/e;->a(F)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/e;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->c(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Lcom/b/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/e;->postInvalidate()V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/e;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->a(F)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/e;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->e(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
