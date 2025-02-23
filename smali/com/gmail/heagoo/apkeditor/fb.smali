.class final Lcom/gmail/heagoo/apkeditor/fb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Z

.field private b:F

.field private c:F

.field private d:J

.field private synthetic e:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/fb;->e:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/fb;->a:Z

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/fb;->a:Z

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fb;->e:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    move-result v0

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/fb;->e:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v3, v3, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v3}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v3

    if-eq v0, v3, :cond_2

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/gmail/heagoo/apkeditor/fb;->e:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v5, v5, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v5}, Lcom/gmail/heagoo/neweditor/ObEditText;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/gmail/heagoo/apkeditor/fb;->e:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v6, v6, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v6}, Lcom/gmail/heagoo/neweditor/ObEditText;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    invoke-virtual {p1, v5, v4}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    if-lt p1, v0, :cond_2

    if-ge p1, v3, :cond_2

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/fb;->e:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->c()Z

    move-result p1

    if-nez p1, :cond_2

    iput-boolean v2, p0, Lcom/gmail/heagoo/apkeditor/fb;->a:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/fb;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/fb;->c:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/gmail/heagoo/apkeditor/fb;->d:J

    return v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_2

    iget-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/fb;->a:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/fb;->b:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    iget p1, p0, Lcom/gmail/heagoo/apkeditor/fb;->c:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    iget-wide p1, p0, Lcom/gmail/heagoo/apkeditor/fb;->d:J

    sub-long/2addr v3, p1

    const-wide/16 p1, 0x1f4

    cmp-long v0, v3, p1

    if-gez v0, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/fb;->e:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->r(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V

    return v2

    :cond_1
    iput-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/fb;->a:Z

    :cond_2
    return v1
.end method
