.class final Lcom/gmail/heagoo/apkeditor/du;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/gmail/heagoo/neweditor/r;

.field private synthetic c:Lcom/gmail/heagoo/apkeditor/dr;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/dr;Landroid/view/View;Lcom/gmail/heagoo/neweditor/r;)V
    .registers 4

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/du;->c:Lcom/gmail/heagoo/apkeditor/dr;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/du;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/du;->b:Lcom/gmail/heagoo/neweditor/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/du;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/du;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/du;->c:Lcom/gmail/heagoo/apkeditor/dr;

    int-to-double v3, v0

    int-to-double v0, v1

    const-wide v5, 0x3fc3333333333333L    # 0.15

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v5

    cmpl-double v5, v3, v0

    if-lez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v0}, Lcom/gmail/heagoo/apkeditor/dr;->a(Lcom/gmail/heagoo/apkeditor/dr;Z)Z

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/du;->b:Lcom/gmail/heagoo/neweditor/r;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/du;->c:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/dr;->c(Lcom/gmail/heagoo/apkeditor/dr;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/gmail/heagoo/neweditor/r;->a(Z)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/du;->c:Lcom/gmail/heagoo/apkeditor/dr;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/du;->c:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/dr;->c(Lcom/gmail/heagoo/apkeditor/dr;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/gmail/heagoo/apkeditor/dr;->b(Lcom/gmail/heagoo/apkeditor/dr;Z)V

    return-void
.end method
