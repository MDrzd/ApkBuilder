.class final enum Lb/b/d/a/al;
.super Lb/b/d/a/i;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/16 p2, 0x22

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb/b/d/a/i;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(ILb/b/d/a/c;)Lb/b/d/a/e;
    .registers 10

    invoke-interface {p2}, Lb/b/d/a/c;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2}, Lb/b/d/a/c;->c()I

    move-result v1

    new-array v2, v1, [I

    new-array v3, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-interface {p2}, Lb/b/d/a/c;->d()I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v4, v1, :cond_1

    invoke-interface {p2}, Lb/b/d/a/c;->d()I

    move-result v5

    add-int/2addr v5, v0

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance p2, Lb/b/d/a/ba;

    invoke-direct {p2, p0, p1, v2, v3}, Lb/b/d/a/ba;-><init>(Lb/b/d/a/i;I[I[I)V

    return-object p2
.end method

.method public final a(Lb/b/d/a/e;Lb/b/d/a/d;)V
    .registers 9

    check-cast p1, Lb/b/d/a/ba;

    invoke-virtual {p1}, Lb/b/d/a/ba;->v()[I

    move-result-object v0

    invoke-virtual {p1}, Lb/b/d/a/ba;->w()[I

    move-result-object v1

    invoke-interface {p2}, Lb/b/d/a/d;->b()I

    move-result v2

    invoke-virtual {p1}, Lb/b/d/a/ba;->c()S

    move-result p1

    invoke-interface {p2, p1}, Lb/b/d/a/d;->a(S)V

    array-length p1, v1

    invoke-static {p1}, Lb/b/d/a/i;->i(I)S

    move-result p1

    invoke-interface {p2, p1}, Lb/b/d/a/d;->a(S)V

    array-length p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_0

    aget v5, v0, v4

    invoke-interface {p2, v5}, Lb/b/d/a/d;->a_(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    array-length p1, v1

    :goto_1
    if-ge v3, p1, :cond_1

    aget v0, v1, v3

    sub-int/2addr v0, v2

    invoke-interface {p2, v0}, Lb/b/d/a/d;->a_(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
