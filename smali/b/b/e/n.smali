.class final Lb/b/e/n;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Lb/b/e/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x70

    iput v0, p0, Lb/b/e/n;->a:I

    invoke-static {p1}, Lb/b/e/b;->h(Lb/b/e/b;)Lb/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/o;->q()I

    move-result v0

    iput v0, p0, Lb/b/e/n;->a:I

    invoke-static {p1}, Lb/b/e/b;->e(Lb/b/e/b;)Lb/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/o;->q()I

    move-result v0

    iput v0, p0, Lb/b/e/n;->b:I

    invoke-static {p1}, Lb/b/e/b;->i(Lb/b/e/b;)Lb/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/o;->q()I

    move-result v0

    iput v0, p0, Lb/b/e/n;->c:I

    invoke-static {p1}, Lb/b/e/b;->f(Lb/b/e/b;)Lb/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/o;->q()I

    move-result v0

    iput v0, p0, Lb/b/e/n;->d:I

    invoke-static {p1}, Lb/b/e/b;->j(Lb/b/e/b;)Lb/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/o;->q()I

    move-result v0

    iput v0, p0, Lb/b/e/n;->e:I

    invoke-static {p1}, Lb/b/e/b;->k(Lb/b/e/b;)Lb/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/o;->q()I

    move-result v0

    iput v0, p0, Lb/b/e/n;->f:I

    invoke-static {p1}, Lb/b/e/b;->d(Lb/b/e/b;)Lb/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/o;->q()I

    move-result v0

    iput v0, p0, Lb/b/e/n;->g:I

    invoke-static {p1}, Lb/b/e/b;->l(Lb/b/e/b;)Lb/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/o;->q()I

    move-result v0

    iput v0, p0, Lb/b/e/n;->h:I

    invoke-static {p1}, Lb/b/e/b;->m(Lb/b/e/b;)Lb/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/o;->q()I

    move-result v0

    iput v0, p0, Lb/b/e/n;->i:I

    invoke-static {p1}, Lb/b/e/b;->n(Lb/b/e/b;)Lb/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/o;->q()I

    move-result v0

    iput v0, p0, Lb/b/e/n;->j:I

    invoke-static {p1}, Lb/b/e/b;->o(Lb/b/e/b;)Lb/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/o;->q()I

    move-result v0

    iput v0, p0, Lb/b/e/n;->k:I

    invoke-static {p1}, Lb/b/e/b;->p(Lb/b/e/b;)Lb/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/o;->q()I

    move-result v0

    iput v0, p0, Lb/b/e/n;->l:I

    invoke-static {p1}, Lb/b/e/b;->g(Lb/b/e/b;)Lb/a/o;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/o;->q()I

    move-result p1

    iput p1, p0, Lb/b/e/n;->m:I

    invoke-direct {p0}, Lb/b/e/n;->b()V

    return-void
.end method

.method public constructor <init>([Lb/a/i;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x70

    iput v0, p0, Lb/b/e/n;->a:I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lb/a/i;->a()Lb/a/ac;

    move-result-object v1

    iget v2, p0, Lb/b/e/n;->b:I

    iget-object v3, v1, Lb/a/ac;->b:Lb/a/ad;

    iget v3, v3, Lb/a/ad;->b:I

    shl-int/lit8 v3, v3, 0x2

    iget-object v4, v1, Lb/a/ac;->c:Lb/a/ad;

    iget v4, v4, Lb/a/ad;->b:I

    shl-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, v1, Lb/a/ac;->d:Lb/a/ad;

    iget v4, v4, Lb/a/ad;->b:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v3, v4

    iget-object v4, v1, Lb/a/ac;->e:Lb/a/ad;

    iget v4, v4, Lb/a/ad;->b:I

    shl-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    iget-object v4, v1, Lb/a/ac;->f:Lb/a/ad;

    iget v4, v4, Lb/a/ad;->b:I

    shl-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    iget-object v4, v1, Lb/a/ac;->g:Lb/a/ad;

    iget v4, v4, Lb/a/ad;->b:I

    shl-int/lit8 v4, v4, 0x5

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lb/b/e/n;->b:I

    const/16 v2, 0xf4

    iput v2, p0, Lb/b/e/n;->c:I

    iget v2, p0, Lb/b/e/n;->d:I

    iget-object v3, v1, Lb/a/ac;->k:Lb/a/ad;

    iget v3, v3, Lb/a/ad;->d:I

    add-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, -0x4

    add-int/2addr v2, v3

    iput v2, p0, Lb/b/e/n;->d:I

    iget v2, p0, Lb/b/e/n;->g:I

    iget-object v3, v1, Lb/a/ac;->p:Lb/a/ad;

    iget v3, v3, Lb/a/ad;->d:I

    add-int/2addr v2, v3

    iput v2, p0, Lb/b/e/n;->g:I

    iget v2, p0, Lb/b/e/n;->j:I

    iget-object v3, v1, Lb/a/ac;->t:Lb/a/ad;

    iget v3, v3, Lb/a/ad;->d:I

    add-int/2addr v2, v3

    iput v2, p0, Lb/b/e/n;->j:I

    iget v2, p0, Lb/b/e/n;->k:I

    iget-object v3, v1, Lb/a/ac;->m:Lb/a/ad;

    iget v3, v3, Lb/a/ad;->d:I

    add-int/2addr v2, v3

    iput v2, p0, Lb/b/e/n;->k:I

    iget v2, p0, Lb/b/e/n;->l:I

    iget-object v3, v1, Lb/a/ac;->l:Lb/a/ad;

    iget v3, v3, Lb/a/ad;->d:I

    add-int/2addr v2, v3

    iput v2, p0, Lb/b/e/n;->l:I

    iget v2, p0, Lb/b/e/n;->f:I

    iget-object v3, v1, Lb/a/ac;->o:Lb/a/ad;

    iget v3, v3, Lb/a/ad;->d:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff4000000000000L    # 1.25

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lb/b/e/n;->f:I

    iget v2, p0, Lb/b/e/n;->e:I

    iget-object v3, v1, Lb/a/ac;->n:Lb/a/ad;

    iget v3, v3, Lb/a/ad;->d:I

    int-to-double v3, v3

    const-wide v5, 0x3ffab851eb851eb8L    # 1.67

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lb/b/e/n;->e:I

    iget v2, p0, Lb/b/e/n;->i:I

    iget-object v3, v1, Lb/a/ac;->s:Lb/a/ad;

    iget v3, v3, Lb/a/ad;->d:I

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lb/b/e/n;->i:I

    iget v2, p0, Lb/b/e/n;->m:I

    iget-object v3, v1, Lb/a/ac;->r:Lb/a/ad;

    iget v3, v3, Lb/a/ad;->d:I

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lb/b/e/n;->m:I

    iget v2, p0, Lb/b/e/n;->h:I

    iget-object v1, v1, Lb/a/ac;->q:Lb/a/ad;

    iget v1, v1, Lb/a/ad;->d:I

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v2, v1

    iput v2, p0, Lb/b/e/n;->h:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0}, Lb/b/e/n;->b()V

    return-void
.end method

.method static synthetic a(Lb/b/e/n;)I
    .registers 1

    iget p0, p0, Lb/b/e/n;->a:I

    return p0
.end method

.method static synthetic b(Lb/b/e/n;)I
    .registers 1

    iget p0, p0, Lb/b/e/n;->b:I

    return p0
.end method

.method private b()V
    .registers 2

    iget v0, p0, Lb/b/e/n;->a:I

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lb/b/e/n;->a:I

    iget v0, p0, Lb/b/e/n;->b:I

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lb/b/e/n;->b:I

    iget v0, p0, Lb/b/e/n;->c:I

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lb/b/e/n;->c:I

    iget v0, p0, Lb/b/e/n;->d:I

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lb/b/e/n;->d:I

    iget v0, p0, Lb/b/e/n;->e:I

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lb/b/e/n;->e:I

    iget v0, p0, Lb/b/e/n;->f:I

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lb/b/e/n;->f:I

    iget v0, p0, Lb/b/e/n;->g:I

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lb/b/e/n;->g:I

    iget v0, p0, Lb/b/e/n;->h:I

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lb/b/e/n;->h:I

    iget v0, p0, Lb/b/e/n;->i:I

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lb/b/e/n;->i:I

    iget v0, p0, Lb/b/e/n;->j:I

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lb/b/e/n;->j:I

    iget v0, p0, Lb/b/e/n;->k:I

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lb/b/e/n;->k:I

    iget v0, p0, Lb/b/e/n;->l:I

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lb/b/e/n;->l:I

    iget v0, p0, Lb/b/e/n;->m:I

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lb/b/e/n;->m:I

    return-void
.end method

.method static synthetic c(Lb/b/e/n;)I
    .registers 1

    iget p0, p0, Lb/b/e/n;->c:I

    return p0
.end method

.method static synthetic d(Lb/b/e/n;)I
    .registers 1

    iget p0, p0, Lb/b/e/n;->d:I

    return p0
.end method

.method static synthetic e(Lb/b/e/n;)I
    .registers 1

    iget p0, p0, Lb/b/e/n;->l:I

    return p0
.end method

.method static synthetic f(Lb/b/e/n;)I
    .registers 1

    iget p0, p0, Lb/b/e/n;->k:I

    return p0
.end method

.method static synthetic g(Lb/b/e/n;)I
    .registers 1

    iget p0, p0, Lb/b/e/n;->e:I

    return p0
.end method

.method static synthetic h(Lb/b/e/n;)I
    .registers 1

    iget p0, p0, Lb/b/e/n;->f:I

    return p0
.end method

.method static synthetic i(Lb/b/e/n;)I
    .registers 1

    iget p0, p0, Lb/b/e/n;->g:I

    return p0
.end method

.method static synthetic j(Lb/b/e/n;)I
    .registers 1

    iget p0, p0, Lb/b/e/n;->h:I

    return p0
.end method

.method static synthetic k(Lb/b/e/n;)I
    .registers 1

    iget p0, p0, Lb/b/e/n;->m:I

    return p0
.end method

.method static synthetic l(Lb/b/e/n;)I
    .registers 1

    iget p0, p0, Lb/b/e/n;->i:I

    return p0
.end method

.method static synthetic m(Lb/b/e/n;)I
    .registers 1

    iget p0, p0, Lb/b/e/n;->j:I

    return p0
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget v0, p0, Lb/b/e/n;->a:I

    iget v1, p0, Lb/b/e/n;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/e/n;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/e/n;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/e/n;->e:I

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/e/n;->f:I

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/e/n;->g:I

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/e/n;->h:I

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/e/n;->i:I

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/e/n;->j:I

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/e/n;->k:I

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/e/n;->l:I

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/e/n;->m:I

    add-int/2addr v0, v1

    return v0
.end method
