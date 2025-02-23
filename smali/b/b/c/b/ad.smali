.class final Lb/b/c/b/ad;
.super Lb/b/f/b/j;


# instance fields
.field private synthetic a:[Z

.field private synthetic b:I

.field private synthetic c:I


# direct methods
.method constructor <init>([ZII)V
    .registers 4

    iput-object p1, p0, Lb/b/c/b/ad;->a:[Z

    iput p2, p0, Lb/b/c/b/ad;->b:I

    iput p3, p0, Lb/b/c/b/ad;->c:I

    invoke-direct {p0}, Lb/b/f/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/f/b/p;)V
    .registers 7

    invoke-virtual {p1}, Lb/b/f/b/p;->e()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lb/b/f/b/p;->e_()Lb/b/f/c/a;

    move-result-object v0

    check-cast v0, Lb/b/f/c/p;

    invoke-virtual {v0}, Lb/b/f/c/p;->j()I

    move-result v0

    iget-object v1, p0, Lb/b/c/b/ad;->a:[Z

    iget-object v2, p0, Lb/b/c/b/ad;->a:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, p0, Lb/b/c/b/ad;->b:I

    iget v4, p0, Lb/b/c/b/ad;->c:I

    sub-int/2addr v2, v4

    add-int/2addr v2, v0

    invoke-virtual {p1}, Lb/b/f/b/p;->g()Lb/b/f/b/r;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result p1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    aput-boolean p1, v1, v3

    :cond_1
    return-void
.end method
