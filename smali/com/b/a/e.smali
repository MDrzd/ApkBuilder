.class public final Lcom/b/a/e;
.super Landroid/widget/ImageView;


# instance fields
.field private A:I

.field private B:Lcom/b/a/h;

.field private C:Lcom/b/a/i;

.field private D:Landroid/view/View$OnTouchListener;

.field private E:Landroid/view/View$OnClickListener;

.field private final a:Ljava/util/concurrent/Semaphore;

.field private b:Lcom/b/a/b;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:F

.field private e:F

.field private f:Z

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:Landroid/graphics/ColorFilter;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/b/a/e;->a:Ljava/util/concurrent/Semaphore;

    const/4 p1, 0x0

    iput p1, p0, Lcom/b/a/e;->d:F

    iput p1, p0, Lcom/b/a/e;->e:F

    iput-boolean v0, p0, Lcom/b/a/e;->f:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/b/a/e;->g:F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/b/a/e;->h:F

    iput v1, p0, Lcom/b/a/e;->i:F

    const/high16 v2, 0x41000000    # 8.0f

    iput v2, p0, Lcom/b/a/e;->j:F

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/b/a/e;->k:F

    iput v1, p0, Lcom/b/a/e;->l:F

    iput v1, p0, Lcom/b/a/e;->m:F

    iput p1, p0, Lcom/b/a/e;->n:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/b/a/e;->s:I

    iput-boolean v0, p0, Lcom/b/a/e;->t:Z

    iput-boolean v0, p0, Lcom/b/a/e;->u:Z

    const/16 v0, 0xff

    iput v0, p0, Lcom/b/a/e;->x:I

    iput p1, p0, Lcom/b/a/e;->z:I

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/b/a/e;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/b/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/b/a/e;->k()V

    return-void
.end method

.method static synthetic a(Lcom/b/a/e;)Landroid/view/View$OnTouchListener;
    .registers 1

    iget-object p0, p0, Lcom/b/a/e;->D:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic b(Lcom/b/a/e;)Lcom/b/a/i;
    .registers 1

    iget-object p0, p0, Lcom/b/a/e;->C:Lcom/b/a/i;

    return-object p0
.end method

.method private k()V
    .registers 6

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/b/a/e;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/b/a/e;->y:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/b/a/e;->y:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    iget-boolean v0, p0, Lcom/b/a/e;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/b/a/e;->requestLayout()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/b/a/e;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/e;->d()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/b/a/e;->q:I

    int-to-float v0, v1

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/b/a/e;->r:I

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/b/a/e;->q:I

    neg-int v1, v1

    iget v2, p0, Lcom/b/a/e;->r:I

    neg-int v2, v2

    iget v3, p0, Lcom/b/a/e;->q:I

    iget v4, p0, Lcom/b/a/e;->r:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/e;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public final a()F
    .registers 3

    iget v0, p0, Lcom/b/a/e;->l:F

    iget v1, p0, Lcom/b/a/e;->m:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/b/a/e;->l:F

    return v0

    :cond_0
    iget v0, p0, Lcom/b/a/e;->m:F

    return v0
.end method

.method public final a(F)V
    .registers 2

    iput p1, p0, Lcom/b/a/e;->g:F

    return-void
.end method

.method public final a(FF)V
    .registers 3

    iput p1, p0, Lcom/b/a/e;->d:F

    iput p2, p0, Lcom/b/a/e;->e:F

    return-void
.end method

.method public final a(Lcom/b/a/a;)V
    .registers 3

    iget-object v0, p0, Lcom/b/a/e;->b:Lcom/b/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/e;->b:Lcom/b/a/b;

    invoke-virtual {v0, p1}, Lcom/b/a/b;->a(Lcom/b/a/a;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/b/a/h;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/e;->B:Lcom/b/a/h;

    return-void
.end method

.method public final a(J)Z
    .registers 5

    iget-object p1, p0, Lcom/b/a/e;->a:Ljava/util/concurrent/Semaphore;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x20

    invoke-virtual {p1, v0, v1, p2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/b/a/e;->b:Lcom/b/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/e;->b:Lcom/b/a/b;

    invoke-virtual {v0}, Lcom/b/a/b;->b()V

    :cond_0
    return-void
.end method

.method public final b(F)V
    .registers 2

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/b/a/e;->h:F

    return-void
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()I
    .registers 2

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()F
    .registers 2

    iget v0, p0, Lcom/b/a/e;->g:F

    return v0
.end method

.method public final f()F
    .registers 2

    iget v0, p0, Lcom/b/a/e;->d:F

    return v0
.end method

.method public final g()F
    .registers 2

    iget v0, p0, Lcom/b/a/e;->e:F

    return v0
.end method

.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getImageMatrix()Landroid/graphics/Matrix;
    .registers 2

    invoke-super {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/b/a/h;
    .registers 2

    iget-object v0, p0, Lcom/b/a/e;->B:Lcom/b/a/h;

    return-object v0
.end method

.method public final i()F
    .registers 2

    iget v0, p0, Lcom/b/a/e;->o:F

    return v0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final j()F
    .registers 2

    iget v0, p0, Lcom/b/a/e;->p:F

    return v0
.end method

.method protected final onAttachedToWindow()V
    .registers 3

    new-instance v0, Lcom/b/a/b;

    const-string v1, "GestureImageViewAnimator"

    invoke-direct {v0, p0, v1}, Lcom/b/a/b;-><init>(Lcom/b/a/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/b/a/e;->b:Lcom/b/a/b;

    iget-object v0, p0, Lcom/b/a/e;->b:Lcom/b/a/b;

    invoke-virtual {v0}, Lcom/b/a/b;->start()V

    iget v0, p0, Lcom/b/a/e;->s:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/b/a/e;->s:I

    invoke-virtual {p0, v0}, Lcom/b/a/e;->setImageResource(I)V

    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1
.end method

.method protected final onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Lcom/b/a/e;->b:Lcom/b/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/e;->b:Lcom/b/a/b;

    invoke-virtual {v0}, Lcom/b/a/b;->a()V

    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    iget-boolean v0, p0, Lcom/b/a/e;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/b/a/e;->i:F

    iget v1, p0, Lcom/b/a/e;->g:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/b/a/e;->d:F

    iget v2, p0, Lcom/b/a/e;->e:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/b/a/e;->n:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/b/a/e;->n:F

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_2
    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    iget-object p1, p0, Lcom/b/a/e;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result p1

    if-gtz p1, :cond_4

    iget-object p1, p0, Lcom/b/a/e;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_4
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .registers 12

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/b/a/e;->f:Z

    if-nez p1, :cond_4

    :cond_0
    iget p1, p0, Lcom/b/a/e;->w:I

    iget p2, p0, Lcom/b/a/e;->v:I

    invoke-virtual {p0}, Lcom/b/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    iget p4, p0, Lcom/b/a/e;->z:I

    if-eq p4, p3, :cond_1

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/b/a/e;->f:Z

    iput p3, p0, Lcom/b/a/e;->z:I

    :cond_1
    iget-object p3, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_4

    iget-boolean p3, p0, Lcom/b/a/e;->f:Z

    if-nez p3, :cond_4

    invoke-virtual {p0}, Lcom/b/a/e;->c()I

    move-result p3

    invoke-virtual {p0}, Lcom/b/a/e;->d()I

    move-result p4

    int-to-float p3, p3

    const/high16 p5, 0x40000000    # 2.0f

    div-float v0, p3, p5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/b/a/e;->q:I

    int-to-float p4, p4

    div-float v0, p4, p5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/b/a/e;->r:I

    invoke-virtual {p0}, Lcom/b/a/e;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/e;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/b/a/e;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/e;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    int-to-float v0, p1

    div-float v1, v0, p3

    iput v1, p0, Lcom/b/a/e;->l:F

    int-to-float v2, p2

    div-float v3, v2, p4

    iput v3, p0, Lcom/b/a/e;->m:F

    iget v4, p0, Lcom/b/a/e;->h:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    sget-object v4, Lcom/b/a/g;->a:[I

    invoke-virtual {p0}, Lcom/b/a/e;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    div-float/2addr p3, v0

    div-float/2addr p4, v2

    cmpl-float p3, p3, p4

    if-lez p3, :cond_2

    iget p3, p0, Lcom/b/a/e;->l:F

    goto :goto_0

    :cond_2
    iget p3, p0, Lcom/b/a/e;->m:F

    goto :goto_0

    :pswitch_1
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result p3

    goto :goto_0

    :pswitch_2
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_0
    iput p3, p0, Lcom/b/a/e;->h:F

    :cond_3
    :goto_1
    iget p3, p0, Lcom/b/a/e;->h:F

    iput p3, p0, Lcom/b/a/e;->g:F

    div-float/2addr v0, p5

    iput v0, p0, Lcom/b/a/e;->o:F

    div-float/2addr v2, p5

    iput v2, p0, Lcom/b/a/e;->p:F

    iget p3, p0, Lcom/b/a/e;->o:F

    iput p3, p0, Lcom/b/a/e;->d:F

    iget p3, p0, Lcom/b/a/e;->p:F

    iput p3, p0, Lcom/b/a/e;->e:F

    new-instance p3, Lcom/b/a/i;

    invoke-direct {p3, p0, p1, p2}, Lcom/b/a/i;-><init>(Lcom/b/a/e;II)V

    iput-object p3, p0, Lcom/b/a/e;->C:Lcom/b/a/i;

    iget-object p3, p0, Lcom/b/a/e;->C:Lcom/b/a/i;

    iget p4, p0, Lcom/b/a/e;->k:F

    invoke-virtual {p3, p4}, Lcom/b/a/i;->b(F)V

    iget-object p3, p0, Lcom/b/a/e;->C:Lcom/b/a/i;

    iget p4, p0, Lcom/b/a/e;->j:F

    invoke-virtual {p3, p4}, Lcom/b/a/i;->a(F)V

    iget-object p3, p0, Lcom/b/a/e;->C:Lcom/b/a/i;

    iget p4, p0, Lcom/b/a/e;->l:F

    invoke-virtual {p3, p4}, Lcom/b/a/i;->c(F)V

    iget-object p3, p0, Lcom/b/a/e;->C:Lcom/b/a/i;

    iget p4, p0, Lcom/b/a/e;->m:F

    invoke-virtual {p3, p4}, Lcom/b/a/i;->d(F)V

    iget-object p3, p0, Lcom/b/a/e;->C:Lcom/b/a/i;

    invoke-virtual {p3, p1}, Lcom/b/a/i;->a(I)V

    iget-object p1, p0, Lcom/b/a/e;->C:Lcom/b/a/i;

    invoke-virtual {p1, p2}, Lcom/b/a/i;->b(I)V

    iget-object p1, p0, Lcom/b/a/e;->C:Lcom/b/a/i;

    iget-object p2, p0, Lcom/b/a/e;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/b/a/i;->a(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/b/a/e;->q:I

    neg-int p2, p2

    iget p3, p0, Lcom/b/a/e;->r:I

    neg-int p3, p3

    iget p4, p0, Lcom/b/a/e;->q:I

    iget p5, p0, Lcom/b/a/e;->r:I

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance p1, Lcom/b/a/f;

    invoke-direct {p1, p0}, Lcom/b/a/f;-><init>(Lcom/b/a/e;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/b/a/e;->f:Z

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final onMeasure(II)V
    .registers 6

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/b/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, -0x2

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iput p2, p0, Lcom/b/a/e;->v:I

    invoke-virtual {p0}, Lcom/b/a/e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v2, :cond_3

    invoke-virtual {p0}, Lcom/b/a/e;->c()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/b/a/e;->d()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget p2, p0, Lcom/b/a/e;->v:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/b/a/e;->w:I

    invoke-virtual {p0}, Lcom/b/a/e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/b/a/e;->d()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/b/a/e;->c()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget p2, p0, Lcom/b/a/e;->w:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/b/a/e;->v:I

    goto :goto_2

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iput p2, p0, Lcom/b/a/e;->v:I

    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/b/a/e;->w:I

    :goto_2
    iget p1, p0, Lcom/b/a/e;->w:I

    iget p2, p0, Lcom/b/a/e;->v:I

    invoke-virtual {p0, p1, p2}, Lcom/b/a/e;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setAdjustViewBounds(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    return-void
.end method

.method public final setAlpha(I)V
    .registers 3

    iput p1, p0, Lcom/b/a/e;->x:I

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iput-object p1, p0, Lcom/b/a/e;->y:Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 4

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/b/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/b/a/e;->k()V

    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/b/a/e;->k()V

    return-void
.end method

.method public final setImageLevel(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method

.method public final setImageMatrix(Landroid/graphics/Matrix;)V
    .registers 2

    return-void
.end method

.method public final setImageResource(I)V
    .registers 3

    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/b/a/e;->s:I

    invoke-virtual {p0}, Lcom/b/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/b/a/e;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setImageState([IZ)V
    .registers 3

    return-void
.end method

.method public final setImageURI(Landroid/net/Uri;)V
    .registers 13

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "orientation"

    const/4 v7, 0x0

    aput-object v1, v0, v7

    invoke-virtual {p0}, Lcom/b/a/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v0, v0, v7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/b/a/e;->A:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/b/a/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v3, p0, Lcom/b/a/e;->A:I

    if-eqz v3, :cond_1

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iget v3, p0, Lcom/b/a/e;->A:I

    int-to-float v3, v3

    invoke-virtual {v8, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object v3, v0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/b/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/b/a/e;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/b/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3}, Lcom/b/a/e;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "GestureImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to open content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/e;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/b/a/e;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    const-string v0, "GestureImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resolveUri failed on bad bitmap uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/b/a/e;->E:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/b/a/e;->C:Lcom/b/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/e;->C:Lcom/b/a/i;

    invoke-virtual {v0, p1}, Lcom/b/a/i;->a(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/e;->D:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public final setRotation(F)V
    .registers 2

    iput p1, p0, Lcom/b/a/e;->n:F

    return-void
.end method

.method public final setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    return-void
.end method

.method public final setSelected(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method
