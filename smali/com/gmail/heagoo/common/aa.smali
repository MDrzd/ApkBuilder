.class public Lcom/gmail/heagoo/common/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/a;


# instance fields
.field private a:Z

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:J

.field private j:J

.field private k:Lcom/b/a/n;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gmail/heagoo/common/aa;->a:Z

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/gmail/heagoo/common/aa;->i:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gmail/heagoo/common/aa;->j:J

    return-void
.end method


# virtual methods
.method public a(F)V
    .registers 2

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lcom/gmail/heagoo/common/aa;->b:F

    return-void
.end method

.method public a(Lcom/b/a/n;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/common/aa;->k:Lcom/b/a/n;

    return-void
.end method

.method public a(Lcom/b/a/e;J)Z
    .registers 9

    iget-boolean v0, p0, Lcom/gmail/heagoo/common/aa;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/gmail/heagoo/common/aa;->a:Z

    invoke-virtual {p1}, Lcom/b/a/e;->f()F

    move-result v0

    iput v0, p0, Lcom/gmail/heagoo/common/aa;->c:F

    invoke-virtual {p1}, Lcom/b/a/e;->g()F

    move-result v0

    iput v0, p0, Lcom/gmail/heagoo/common/aa;->d:F

    invoke-virtual {p1}, Lcom/b/a/e;->e()F

    move-result v0

    iput v0, p0, Lcom/gmail/heagoo/common/aa;->e:F

    iget v0, p0, Lcom/gmail/heagoo/common/aa;->b:F

    iget v3, p0, Lcom/gmail/heagoo/common/aa;->e:F

    mul-float v0, v0, v3

    iget v3, p0, Lcom/gmail/heagoo/common/aa;->e:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/gmail/heagoo/common/aa;->h:F

    iget v0, p0, Lcom/gmail/heagoo/common/aa;->h:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    new-instance p1, Lcom/gmail/heagoo/common/v;

    invoke-direct {p1}, Lcom/gmail/heagoo/common/v;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/common/v;->a(Landroid/graphics/PointF;)V

    new-instance v0, Landroid/graphics/PointF;

    iget v3, p0, Lcom/gmail/heagoo/common/aa;->c:F

    iget v4, p0, Lcom/gmail/heagoo/common/aa;->d:F

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/common/v;->b(Landroid/graphics/PointF;)V

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/v;->c()F

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/v;->b()F

    move-result v0

    iget v3, p0, Lcom/gmail/heagoo/common/aa;->b:F

    mul-float v0, v0, v3

    iput v0, p1, Lcom/gmail/heagoo/common/v;->a:F

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/v;->a()V

    iget-object v0, p1, Lcom/gmail/heagoo/common/v;->b:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/gmail/heagoo/common/aa;->c:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/gmail/heagoo/common/aa;->f:F

    iget-object p1, p1, Lcom/gmail/heagoo/common/v;->b:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    :goto_0
    iget v0, p0, Lcom/gmail/heagoo/common/aa;->d:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/gmail/heagoo/common/aa;->g:F

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/b/a/e;->i()F

    move-result v0

    iget v3, p0, Lcom/gmail/heagoo/common/aa;->c:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/gmail/heagoo/common/aa;->f:F

    invoke-virtual {p1}, Lcom/b/a/e;->j()F

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    iget-wide v3, p0, Lcom/gmail/heagoo/common/aa;->j:J

    add-long/2addr v3, p2

    iput-wide v3, p0, Lcom/gmail/heagoo/common/aa;->j:J

    iget-wide p1, p0, Lcom/gmail/heagoo/common/aa;->j:J

    long-to-float p1, p1

    iget-wide p2, p0, Lcom/gmail/heagoo/common/aa;->i:J

    long-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_3

    cmpl-float p2, p1, v2

    if-lez p2, :cond_2

    iget p2, p0, Lcom/gmail/heagoo/common/aa;->h:F

    mul-float p2, p2, p1

    iget p3, p0, Lcom/gmail/heagoo/common/aa;->e:F

    add-float/2addr p2, p3

    iget p3, p0, Lcom/gmail/heagoo/common/aa;->f:F

    mul-float p3, p3, p1

    iget v0, p0, Lcom/gmail/heagoo/common/aa;->c:F

    add-float/2addr p3, v0

    iget v0, p0, Lcom/gmail/heagoo/common/aa;->g:F

    mul-float p1, p1, v0

    iget v0, p0, Lcom/gmail/heagoo/common/aa;->d:F

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/gmail/heagoo/common/aa;->k:Lcom/b/a/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gmail/heagoo/common/aa;->k:Lcom/b/a/n;

    invoke-interface {v0, p2, p3, p1}, Lcom/b/a/n;->a(FFF)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    iget p1, p0, Lcom/gmail/heagoo/common/aa;->h:F

    iget p2, p0, Lcom/gmail/heagoo/common/aa;->e:F

    add-float/2addr p1, p2

    iget p2, p0, Lcom/gmail/heagoo/common/aa;->f:F

    iget p3, p0, Lcom/gmail/heagoo/common/aa;->c:F

    add-float/2addr p2, p3

    iget p3, p0, Lcom/gmail/heagoo/common/aa;->g:F

    iget v0, p0, Lcom/gmail/heagoo/common/aa;->d:F

    add-float/2addr p3, v0

    iget-object v0, p0, Lcom/gmail/heagoo/common/aa;->k:Lcom/b/a/n;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gmail/heagoo/common/aa;->k:Lcom/b/a/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/b/a/n;->a(FFF)V

    iget-object p1, p0, Lcom/gmail/heagoo/common/aa;->k:Lcom/b/a/n;

    invoke-interface {p1}, Lcom/b/a/n;->a()V

    :cond_4
    return v1
.end method
