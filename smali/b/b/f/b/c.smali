.class public final Lb/b/f/b/c;
.super Lb/b/h/n;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/n;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Lb/b/f/b/c;->a:I

    return-void
.end method

.method private constructor <init>(Lb/b/f/b/c;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/n;-><init>(Lb/b/h/n;)V

    iget p1, p1, Lb/b/f/b/c;->a:I

    iput p1, p0, Lb/b/f/b/c;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)Lb/b/f/b/a;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/f/b/c;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/f/b/a;

    return-object p1
.end method

.method public final a(ILb/b/f/b/a;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lb/b/h/n;->a(ILb/b/h/m;)V

    const/4 p1, -0x1

    iput p1, p0, Lb/b/f/b/c;->a:I

    return-void
.end method

.method public final a(Lb/b/f/b/k;)V
    .registers 5

    invoke-virtual {p0}, Lb/b/f/b/c;->a_()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lb/b/f/b/c;->a(I)Lb/b/f/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/a;->b()Lb/b/f/b/l;

    move-result-object v2

    invoke-virtual {v2, p1}, Lb/b/f/b/l;->a(Lb/b/f/b/k;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(I)Lb/b/f/b/a;
    .registers 5

    invoke-virtual {p0, p1}, Lb/b/f/b/c;->c(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lb/b/f/b/c;->a(I)Lb/b/f/b/a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no such label: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()I
    .registers 3

    iget v0, p0, Lb/b/f/b/c;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lb/b/f/b/d;

    invoke-direct {v0}, Lb/b/f/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lb/b/f/b/c;->a(Lb/b/f/b/k;)V

    invoke-virtual {v0}, Lb/b/f/b/d;->a()I

    move-result v0

    iput v0, p0, Lb/b/f/b/c;->a:I

    :cond_0
    iget v0, p0, Lb/b/f/b/c;->a:I

    return v0
.end method

.method public final g()I
    .registers 5

    invoke-virtual {p0}, Lb/b/f/b/c;->a_()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lb/b/f/b/c;->f(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/f/b/a;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lb/b/f/b/a;->b()Lb/b/f/b/l;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/l;->a_()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final i()I
    .registers 10

    invoke-virtual {p0}, Lb/b/f/b/c;->a_()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lb/b/f/b/c;->f(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/f/b/a;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lb/b/f/b/a;->b()Lb/b/f/b/l;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/b/l;->a_()I

    move-result v5

    move v6, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    invoke-virtual {v4, v3}, Lb/b/f/b/l;->a(I)Lb/b/f/b/i;

    move-result-object v7

    invoke-virtual {v7}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v7

    invoke-virtual {v7}, Lb/b/f/b/x;->a()I

    move-result v7

    const/16 v8, 0x36

    if-eq v7, v8, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public final j()Lb/b/f/b/c;
    .registers 2

    new-instance v0, Lb/b/f/b/c;

    invoke-direct {v0, p0}, Lb/b/f/b/c;-><init>(Lb/b/f/b/c;)V

    return-object v0
.end method
