.class public Lcom/gmail/heagoo/common/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/a;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:Lcom/b/a/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/gmail/heagoo/common/r;->c:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/gmail/heagoo/common/r;->d:F

    return-void
.end method

.method public static a()Landroid/text/InputFilter;
    .registers 1

    new-instance v0, Lcom/gmail/heagoo/common/s;

    invoke-direct {v0}, Lcom/gmail/heagoo/common/s;-><init>()V

    return-object v0
.end method

.method static synthetic a(C)Z
    .registers 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static b()Landroid/text/InputFilter;
    .registers 1

    new-instance v0, Lcom/gmail/heagoo/common/t;

    invoke-direct {v0}, Lcom/gmail/heagoo/common/t;-><init>()V

    return-object v0
.end method

.method static synthetic b(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(F)V
    .registers 2

    iput p1, p0, Lcom/gmail/heagoo/common/r;->a:F

    return-void
.end method

.method public a(Lcom/b/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/common/r;->e:Lcom/b/a/c;

    return-void
.end method

.method public a(Lcom/b/a/e;J)Z
    .registers 5

    long-to-float p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    iget p2, p0, Lcom/gmail/heagoo/common/r;->a:F

    mul-float p2, p2, p1

    iget p3, p0, Lcom/gmail/heagoo/common/r;->b:F

    mul-float p3, p3, p1

    iget p1, p0, Lcom/gmail/heagoo/common/r;->a:F

    iget v0, p0, Lcom/gmail/heagoo/common/r;->c:F

    mul-float p1, p1, v0

    iput p1, p0, Lcom/gmail/heagoo/common/r;->a:F

    iget p1, p0, Lcom/gmail/heagoo/common/r;->b:F

    iget v0, p0, Lcom/gmail/heagoo/common/r;->c:F

    mul-float p1, p1, v0

    iput p1, p0, Lcom/gmail/heagoo/common/r;->b:F

    iget p1, p0, Lcom/gmail/heagoo/common/r;->a:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/gmail/heagoo/common/r;->d:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget p1, p0, Lcom/gmail/heagoo/common/r;->b:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/gmail/heagoo/common/r;->d:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/gmail/heagoo/common/r;->e:Lcom/b/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/common/r;->e:Lcom/b/a/c;

    invoke-interface {v0, p2, p3}, Lcom/b/a/c;->a(FF)V

    :cond_1
    return p1
.end method

.method public b(F)V
    .registers 2

    iput p1, p0, Lcom/gmail/heagoo/common/r;->b:F

    return-void
.end method
