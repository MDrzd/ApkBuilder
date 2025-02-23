.class public final Lcom/b/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:Lcom/b/a/d;

.field private I:Lcom/gmail/heagoo/common/r;

.field private J:Lcom/gmail/heagoo/common/aa;

.field private K:Lcom/gmail/heagoo/common/u;

.field private L:Landroid/view/GestureDetector;

.field private M:Lcom/b/a/h;

.field private a:Lcom/b/a/e;

.field private b:Landroid/view/View$OnClickListener;

.field private final c:Landroid/graphics/PointF;

.field private final d:Landroid/graphics/PointF;

.field private final e:Landroid/graphics/PointF;

.field private final f:Landroid/graphics/PointF;

.field private final g:Lcom/gmail/heagoo/common/v;

.field private final h:Lcom/gmail/heagoo/common/v;

.field private i:Z

.field private j:Z

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:I

.field private w:I

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Lcom/b/a/e;II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/b/a/i;->c:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/b/a/i;->d:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/b/a/i;->f:Landroid/graphics/PointF;

    new-instance v0, Lcom/gmail/heagoo/common/v;

    invoke-direct {v0}, Lcom/gmail/heagoo/common/v;-><init>()V

    iput-object v0, p0, Lcom/b/a/i;->g:Lcom/gmail/heagoo/common/v;

    new-instance v0, Lcom/gmail/heagoo/common/v;

    invoke-direct {v0}, Lcom/gmail/heagoo/common/v;-><init>()V

    iput-object v0, p0, Lcom/b/a/i;->h:Lcom/gmail/heagoo/common/v;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/i;->i:Z

    iput-boolean v0, p0, Lcom/b/a/i;->j:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/b/a/i;->l:F

    iput v1, p0, Lcom/b/a/i;->m:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/b/a/i;->n:F

    iput v2, p0, Lcom/b/a/i;->o:F

    iput v2, p0, Lcom/b/a/i;->p:F

    iput v2, p0, Lcom/b/a/i;->q:F

    const/high16 v3, 0x40a00000    # 5.0f

    iput v3, p0, Lcom/b/a/i;->r:F

    const/high16 v3, 0x3e800000    # 0.25f

    iput v3, p0, Lcom/b/a/i;->s:F

    iput v1, p0, Lcom/b/a/i;->t:F

    iput v1, p0, Lcom/b/a/i;->u:F

    iput v0, p0, Lcom/b/a/i;->v:I

    iput v0, p0, Lcom/b/a/i;->w:I

    iput v2, p0, Lcom/b/a/i;->x:F

    iput v2, p0, Lcom/b/a/i;->y:F

    iput v2, p0, Lcom/b/a/i;->z:F

    iput-boolean v0, p0, Lcom/b/a/i;->A:Z

    iput-boolean v0, p0, Lcom/b/a/i;->B:Z

    iput-boolean v0, p0, Lcom/b/a/i;->C:Z

    iput-object p1, p0, Lcom/b/a/i;->a:Lcom/b/a/e;

    iput p2, p0, Lcom/b/a/i;->D:I

    iput p3, p0, Lcom/b/a/i;->E:I

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p2, v0

    iput v1, p0, Lcom/b/a/i;->x:F

    int-to-float p3, p3

    div-float v1, p3, v0

    iput v1, p0, Lcom/b/a/i;->y:F

    invoke-virtual {p1}, Lcom/b/a/e;->c()I

    move-result v1

    iput v1, p0, Lcom/b/a/i;->F:I

    invoke-virtual {p1}, Lcom/b/a/e;->d()I

    move-result v1

    iput v1, p0, Lcom/b/a/i;->G:I

    invoke-virtual {p1}, Lcom/b/a/e;->e()F

    move-result v1

    iput v1, p0, Lcom/b/a/i;->z:F

    iget v1, p0, Lcom/b/a/i;->z:F

    iput v1, p0, Lcom/b/a/i;->m:F

    iget v1, p0, Lcom/b/a/i;->z:F

    iput v1, p0, Lcom/b/a/i;->l:F

    iput p2, p0, Lcom/b/a/i;->p:F

    iput p3, p0, Lcom/b/a/i;->q:F

    iput v2, p0, Lcom/b/a/i;->n:F

    iput v2, p0, Lcom/b/a/i;->o:F

    iget-object p2, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/b/a/e;->f()F

    move-result p3

    iput p3, p2, Landroid/graphics/PointF;->x:F

    iget-object p2, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/b/a/e;->g()F

    move-result p3

    iput p3, p2, Landroid/graphics/PointF;->y:F

    new-instance p2, Lcom/b/a/d;

    invoke-direct {p2}, Lcom/b/a/d;-><init>()V

    iput-object p2, p0, Lcom/b/a/i;->H:Lcom/b/a/d;

    new-instance p2, Lcom/gmail/heagoo/common/r;

    invoke-direct {p2}, Lcom/gmail/heagoo/common/r;-><init>()V

    iput-object p2, p0, Lcom/b/a/i;->I:Lcom/gmail/heagoo/common/r;

    new-instance p2, Lcom/gmail/heagoo/common/aa;

    invoke-direct {p2}, Lcom/gmail/heagoo/common/aa;-><init>()V

    iput-object p2, p0, Lcom/b/a/i;->J:Lcom/gmail/heagoo/common/aa;

    new-instance p2, Lcom/gmail/heagoo/common/u;

    invoke-direct {p2}, Lcom/gmail/heagoo/common/u;-><init>()V

    iput-object p2, p0, Lcom/b/a/i;->K:Lcom/gmail/heagoo/common/u;

    iget-object p2, p0, Lcom/b/a/i;->I:Lcom/gmail/heagoo/common/r;

    new-instance p3, Lcom/b/a/j;

    invoke-direct {p3, p0}, Lcom/b/a/j;-><init>(Lcom/b/a/i;)V

    invoke-virtual {p2, p3}, Lcom/gmail/heagoo/common/r;->a(Lcom/b/a/c;)V

    iget-object p2, p0, Lcom/b/a/i;->J:Lcom/gmail/heagoo/common/aa;

    invoke-virtual {p2, v0}, Lcom/gmail/heagoo/common/aa;->a(F)V

    iget-object p2, p0, Lcom/b/a/i;->J:Lcom/gmail/heagoo/common/aa;

    new-instance p3, Lcom/b/a/k;

    invoke-direct {p3, p0}, Lcom/b/a/k;-><init>(Lcom/b/a/i;)V

    invoke-virtual {p2, p3}, Lcom/gmail/heagoo/common/aa;->a(Lcom/b/a/n;)V

    iget-object p2, p0, Lcom/b/a/i;->K:Lcom/gmail/heagoo/common/u;

    new-instance p3, Lcom/b/a/l;

    invoke-direct {p3, p0, p1}, Lcom/b/a/l;-><init>(Lcom/b/a/i;Lcom/b/a/e;)V

    invoke-virtual {p2, p3}, Lcom/gmail/heagoo/common/u;->a(Lcom/b/a/m;)V

    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/b/a/e;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/b/a/i;->H:Lcom/b/a/d;

    invoke-direct {p2, p3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/b/a/i;->L:Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/b/a/e;->h()Lcom/b/a/h;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/i;->M:Lcom/b/a/h;

    invoke-direct {p0}, Lcom/b/a/i;->c()V

    return-void
.end method

.method static synthetic a(Lcom/b/a/i;)Landroid/graphics/PointF;
    .registers 1

    iget-object p0, p0, Lcom/b/a/i;->c:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic a(Lcom/b/a/i;Z)Z
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/b/a/i;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/b/a/i;)F
    .registers 1

    iget p0, p0, Lcom/b/a/i;->r:F

    return p0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/b/a/i;->n:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget v1, p0, Lcom/b/a/i;->n:F

    :goto_0
    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/b/a/i;->p:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget v1, p0, Lcom/b/a/i;->p:F

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/b/a/i;->o:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget v1, p0, Lcom/b/a/i;->o:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-void

    :cond_2
    iget-object v0, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/b/a/i;->q:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget v1, p0, Lcom/b/a/i;->q:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/b/a/i;)F
    .registers 1

    iget p0, p0, Lcom/b/a/i;->s:F

    return p0
.end method

.method private c()V
    .registers 6

    iget v0, p0, Lcom/b/a/i;->F:I

    int-to-float v0, v0

    iget v1, p0, Lcom/b/a/i;->m:F

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/b/a/i;->G:I

    int-to-float v1, v1

    iget v2, p0, Lcom/b/a/i;->m:F

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/b/a/i;->D:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/b/a/i;->A:Z

    iget v2, p0, Lcom/b/a/i;->E:I

    if-le v1, v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p0, Lcom/b/a/i;->B:Z

    iget-boolean v2, p0, Lcom/b/a/i;->A:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/b/a/i;->D:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget v2, p0, Lcom/b/a/i;->x:F

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/b/a/i;->n:F

    iget v2, p0, Lcom/b/a/i;->x:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/b/a/i;->p:F

    :cond_2
    iget-boolean v0, p0, Lcom/b/a/i;->B:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/b/a/i;->E:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr v0, v3

    iget v1, p0, Lcom/b/a/i;->y:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/b/a/i;->o:F

    iget v1, p0, Lcom/b/a/i;->y:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/b/a/i;->q:F

    :cond_3
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/i;->C:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/i;->k:F

    iget v0, p0, Lcom/b/a/i;->m:F

    iput v0, p0, Lcom/b/a/i;->l:F

    iget-boolean v0, p0, Lcom/b/a/i;->A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget v1, p0, Lcom/b/a/i;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    :cond_0
    iget-boolean v0, p0, Lcom/b/a/i;->B:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget v1, p0, Lcom/b/a/i;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_1
    invoke-direct {p0}, Lcom/b/a/i;->b()V

    iget-object v0, p0, Lcom/b/a/i;->a:Lcom/b/a/e;

    iget v1, p0, Lcom/b/a/i;->m:F

    invoke-virtual {v0, v1}, Lcom/b/a/e;->a(F)V

    iget-object v0, p0, Lcom/b/a/i;->a:Lcom/b/a/e;

    iget-object v1, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/b/a/e;->a(FF)V

    iget-object v0, p0, Lcom/b/a/i;->M:Lcom/b/a/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/i;->M:Lcom/b/a/h;

    iget v1, p0, Lcom/b/a/i;->m:F

    invoke-interface {v0, v1}, Lcom/b/a/h;->a(F)V

    iget-object v0, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    :cond_2
    iget-object v0, p0, Lcom/b/a/i;->a:Lcom/b/a/e;

    invoke-virtual {v0}, Lcom/b/a/e;->postInvalidate()V

    return-void
.end method

.method public final a(F)V
    .registers 2

    iput p1, p0, Lcom/b/a/i;->r:F

    return-void
.end method

.method protected final a(FFF)V
    .registers 5

    iput p1, p0, Lcom/b/a/i;->m:F

    iget p1, p0, Lcom/b/a/i;->m:F

    iget v0, p0, Lcom/b/a/i;->r:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget p1, p0, Lcom/b/a/i;->r:F

    :goto_0
    iput p1, p0, Lcom/b/a/i;->m:F

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/b/a/i;->m:F

    iget v0, p0, Lcom/b/a/i;->s:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    iget p1, p0, Lcom/b/a/i;->s:F

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iput p2, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iput p3, p1, Landroid/graphics/PointF;->y:F

    :goto_1
    invoke-direct {p0}, Lcom/b/a/i;->c()V

    iget-object p1, p0, Lcom/b/a/i;->a:Lcom/b/a/e;

    iget p2, p0, Lcom/b/a/i;->m:F

    invoke-virtual {p1, p2}, Lcom/b/a/e;->a(F)V

    iget-object p1, p0, Lcom/b/a/i;->a:Lcom/b/a/e;

    iget-object p2, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object p3, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Lcom/b/a/e;->a(FF)V

    iget-object p1, p0, Lcom/b/a/i;->M:Lcom/b/a/h;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/b/a/i;->M:Lcom/b/a/h;

    iget p2, p0, Lcom/b/a/i;->m:F

    invoke-interface {p1, p2}, Lcom/b/a/h;->a(F)V

    iget-object p1, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    :cond_2
    iget-object p1, p0, Lcom/b/a/i;->a:Lcom/b/a/e;

    invoke-virtual {p1}, Lcom/b/a/e;->postInvalidate()V

    return-void
.end method

.method protected final a(I)V
    .registers 2

    iput p1, p0, Lcom/b/a/i;->v:I

    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/i;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected final a(FF)Z
    .registers 5

    iget-object v0, p0, Lcom/b/a/i;->c:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/b/a/i;->c:Landroid/graphics/PointF;

    iput p2, p1, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lcom/b/a/i;->c:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object p2, p0, Lcom/b/a/i;->d:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/b/a/i;->c:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/b/a/i;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/b/a/i;->A:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    :cond_1
    iget-boolean p1, p0, Lcom/b/a/i;->B:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/PointF;->y:F

    :cond_2
    invoke-direct {p0}, Lcom/b/a/i;->b()V

    iget-object p1, p0, Lcom/b/a/i;->d:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/b/a/i;->c:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iput p2, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/b/a/i;->d:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/b/a/i;->c:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p1, Landroid/graphics/PointF;->y:F

    iget-boolean p1, p0, Lcom/b/a/i;->A:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/b/a/i;->B:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/b/a/i;->a:Lcom/b/a/e;

    iget-object p2, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v0}, Lcom/b/a/e;->a(FF)V

    iget-object p1, p0, Lcom/b/a/i;->M:Lcom/b/a/h;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public final b(F)V
    .registers 2

    iput p1, p0, Lcom/b/a/i;->s:F

    return-void
.end method

.method protected final b(I)V
    .registers 2

    iput p1, p0, Lcom/b/a/i;->w:I

    return-void
.end method

.method protected final c(F)V
    .registers 2

    iput p1, p0, Lcom/b/a/i;->t:F

    return-void
.end method

.method protected final d(F)V
    .registers 2

    iput p1, p0, Lcom/b/a/i;->u:F

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    iget-boolean p1, p0, Lcom/b/a/i;->j:Z

    const/4 v0, 0x1

    if-nez p1, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/b/a/i;->L:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/b/a/i;->I:Lcom/gmail/heagoo/common/r;

    iget-object v1, p0, Lcom/b/a/i;->H:Lcom/b/a/d;

    invoke-virtual {v1}, Lcom/b/a/d;->a()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/gmail/heagoo/common/r;->a(F)V

    iget-object p1, p0, Lcom/b/a/i;->I:Lcom/gmail/heagoo/common/r;

    iget-object v1, p0, Lcom/b/a/i;->H:Lcom/b/a/d;

    invoke-virtual {v1}, Lcom/b/a/d;->b()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/gmail/heagoo/common/r;->b(F)V

    iget-object p1, p0, Lcom/b/a/i;->a:Lcom/b/a/e;

    iget-object v1, p0, Lcom/b/a/i;->I:Lcom/gmail/heagoo/common/r;

    invoke-virtual {p1, v1}, Lcom/b/a/e;->a(Lcom/b/a/a;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/b/a/i;->a()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/b/a/i;->a:Lcom/b/a/e;

    invoke-virtual {p1}, Lcom/b/a/e;->b()V

    iget-object p1, p0, Lcom/b/a/i;->d:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/b/a/i;->d:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lcom/b/a/i;->M:Lcom/b/a/h;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/b/a/i;->d:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/b/a/i;->d:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    :cond_2
    iput-boolean v0, p0, Lcom/b/a/i;->i:Z

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v0, :cond_5

    iput-boolean v0, p0, Lcom/b/a/i;->C:Z

    iget p1, p0, Lcom/b/a/i;->k:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/b/a/i;->h:Lcom/gmail/heagoo/common/v;

    invoke-virtual {p1, p2}, Lcom/gmail/heagoo/common/v;->a(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/b/a/i;->h:Lcom/gmail/heagoo/common/v;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/v;->b()F

    iget-object p1, p0, Lcom/b/a/i;->h:Lcom/gmail/heagoo/common/v;

    iget p1, p1, Lcom/gmail/heagoo/common/v;->a:F

    iget p2, p0, Lcom/b/a/i;->k:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_7

    iget p2, p0, Lcom/b/a/i;->k:F

    div-float/2addr p1, p2

    iget p2, p0, Lcom/b/a/i;->l:F

    mul-float p1, p1, p2

    iget p2, p0, Lcom/b/a/i;->r:F

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_7

    iget-object p2, p0, Lcom/b/a/i;->g:Lcom/gmail/heagoo/common/v;

    iget v1, p2, Lcom/gmail/heagoo/common/v;->a:F

    mul-float v1, v1, p1

    iput v1, p2, Lcom/gmail/heagoo/common/v;->a:F

    iget-object p2, p0, Lcom/b/a/i;->g:Lcom/gmail/heagoo/common/v;

    invoke-virtual {p2}, Lcom/gmail/heagoo/common/v;->a()V

    iget-object p2, p0, Lcom/b/a/i;->g:Lcom/gmail/heagoo/common/v;

    iget v1, p2, Lcom/gmail/heagoo/common/v;->a:F

    div-float/2addr v1, p1

    iput v1, p2, Lcom/gmail/heagoo/common/v;->a:F

    iget-object p2, p0, Lcom/b/a/i;->g:Lcom/gmail/heagoo/common/v;

    iget-object p2, p2, Lcom/gmail/heagoo/common/v;->b:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object p2, p0, Lcom/b/a/i;->g:Lcom/gmail/heagoo/common/v;

    iget-object p2, p2, Lcom/gmail/heagoo/common/v;->b:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p2, p0, Lcom/b/a/i;->x:F

    iget v1, p0, Lcom/b/a/i;->y:F

    invoke-virtual {p0, p1, p2, v1}, Lcom/b/a/i;->a(FFF)V

    goto/16 :goto_0

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v1, v1, v1

    mul-float v2, v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/b/a/i;->k:F

    iget-object v1, p0, Lcom/b/a/i;->f:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, p2

    div-float/2addr p1, v3

    iput p1, v1, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lcom/b/a/i;->g:Lcom/gmail/heagoo/common/v;

    iget-object p2, p0, Lcom/b/a/i;->f:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Lcom/gmail/heagoo/common/v;->a(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/b/a/i;->g:Lcom/gmail/heagoo/common/v;

    iget-object p2, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Lcom/gmail/heagoo/common/v;->b(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/b/a/i;->g:Lcom/gmail/heagoo/common/v;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/v;->b()F

    iget-object p1, p0, Lcom/b/a/i;->g:Lcom/gmail/heagoo/common/v;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/v;->c()F

    iget-object p1, p0, Lcom/b/a/i;->g:Lcom/gmail/heagoo/common/v;

    iget p2, p1, Lcom/gmail/heagoo/common/v;->a:F

    iget v1, p0, Lcom/b/a/i;->l:F

    div-float/2addr p2, v1

    iput p2, p1, Lcom/gmail/heagoo/common/v;->a:F

    goto :goto_0

    :cond_5
    iget-boolean p1, p0, Lcom/b/a/i;->i:Z

    if-nez p1, :cond_6

    iput-boolean v0, p0, Lcom/b/a/i;->i:Z

    iget-object p1, p0, Lcom/b/a/i;->d:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/b/a/i;->d:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/b/a/i;->a:Lcom/b/a/e;

    invoke-virtual {p2}, Lcom/b/a/e;->f()F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/b/a/i;->e:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/b/a/i;->a:Lcom/b/a/e;

    invoke-virtual {p2}, Lcom/b/a/e;->g()F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_6
    iget-boolean p1, p0, Lcom/b/a/i;->C:Z

    if-nez p1, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/b/a/i;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/b/a/i;->a:Lcom/b/a/e;

    invoke-virtual {p1}, Lcom/b/a/e;->postInvalidate()V

    :cond_7
    :goto_0
    return v0
.end method
