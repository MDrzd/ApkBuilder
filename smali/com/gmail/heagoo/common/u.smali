.class public Lcom/gmail/heagoo/common/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/a;


# instance fields
.field private a:Z

.field private b:F

.field private c:F

.field private d:J

.field private e:J

.field private f:Lcom/b/a/m;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gmail/heagoo/common/u;->a:Z

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/gmail/heagoo/common/u;->d:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gmail/heagoo/common/u;->e:J

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/m;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/common/u;->f:Lcom/b/a/m;

    return-void
.end method

.method public a(Lcom/b/a/e;J)Z
    .registers 7

    iget-wide v0, p0, Lcom/gmail/heagoo/common/u;->e:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/gmail/heagoo/common/u;->e:J

    iget-boolean p2, p0, Lcom/gmail/heagoo/common/u;->a:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    iput-boolean p3, p0, Lcom/gmail/heagoo/common/u;->a:Z

    invoke-virtual {p1}, Lcom/b/a/e;->f()F

    move-result p2

    iput p2, p0, Lcom/gmail/heagoo/common/u;->b:F

    invoke-virtual {p1}, Lcom/b/a/e;->g()F

    move-result p1

    iput p1, p0, Lcom/gmail/heagoo/common/u;->c:F

    :cond_0
    iget-wide p1, p0, Lcom/gmail/heagoo/common/u;->e:J

    iget-wide v0, p0, Lcom/gmail/heagoo/common/u;->d:J

    cmp-long v2, p1, v0

    const/4 p1, 0x0

    if-gez v2, :cond_2

    iget-wide p2, p0, Lcom/gmail/heagoo/common/u;->e:J

    long-to-float p2, p2

    iget-wide v0, p0, Lcom/gmail/heagoo/common/u;->d:J

    long-to-float p3, v0

    div-float/2addr p2, p3

    iget p3, p0, Lcom/gmail/heagoo/common/u;->b:F

    sub-float p3, p1, p3

    mul-float p3, p3, p2

    iget v0, p0, Lcom/gmail/heagoo/common/u;->b:F

    add-float/2addr p3, v0

    iget v0, p0, Lcom/gmail/heagoo/common/u;->c:F

    sub-float/2addr p1, v0

    mul-float p1, p1, p2

    iget p2, p0, Lcom/gmail/heagoo/common/u;->c:F

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/gmail/heagoo/common/u;->f:Lcom/b/a/m;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/gmail/heagoo/common/u;->f:Lcom/b/a/m;

    invoke-interface {p2, p3, p1}, Lcom/b/a/m;->a(FF)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object p2, p0, Lcom/gmail/heagoo/common/u;->f:Lcom/b/a/m;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/gmail/heagoo/common/u;->f:Lcom/b/a/m;

    invoke-interface {p2, p1, p1}, Lcom/b/a/m;->a(FF)V

    :cond_3
    return p3
.end method
