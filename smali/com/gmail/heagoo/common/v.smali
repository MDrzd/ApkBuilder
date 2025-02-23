.class public Lcom/gmail/heagoo/common/v;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public final b:Landroid/graphics/PointF;

.field private c:F

.field private d:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/common/v;->d:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/common/v;->b:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/common/v;->b:Landroid/graphics/PointF;

    iget v1, p0, Lcom/gmail/heagoo/common/v;->c:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/gmail/heagoo/common/v;->a:F

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/gmail/heagoo/common/v;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/gmail/heagoo/common/v;->b:Landroid/graphics/PointF;

    iget v1, p0, Lcom/gmail/heagoo/common/v;->c:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/gmail/heagoo/common/v;->a:F

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/gmail/heagoo/common/v;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public a(Landroid/graphics/PointF;)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/common/v;->d:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/gmail/heagoo/common/v;->d:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/common/v;->d:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/gmail/heagoo/common/v;->d:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/gmail/heagoo/common/v;->b:Landroid/graphics/PointF;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/gmail/heagoo/common/v;->b:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public b()F
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/common/v;->d:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/gmail/heagoo/common/v;->b:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    mul-float v2, v2, v2

    mul-float v0, v0, v0

    add-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/gmail/heagoo/common/v;->a:F

    iget v0, p0, Lcom/gmail/heagoo/common/v;->a:F

    return v0
.end method

.method public b(Landroid/graphics/PointF;)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/common/v;->b:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/gmail/heagoo/common/v;->b:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public c()F
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/common/v;->d:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/gmail/heagoo/common/v;->b:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    float-to-double v0, v1

    sub-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/gmail/heagoo/common/v;->c:F

    iget v0, p0, Lcom/gmail/heagoo/common/v;->c:F

    return v0
.end method
