.class final enum Lb/b/d/a/ak;
.super Lb/b/d/a/i;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/16 p2, 0x21

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb/b/d/a/i;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(ILb/b/d/a/c;)Lb/b/d/a/e;
    .registers 9

    invoke-interface {p2}, Lb/b/d/a/c;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2}, Lb/b/d/a/c;->c()I

    move-result v1

    invoke-interface {p2}, Lb/b/d/a/c;->d()I

    move-result v2

    new-array v3, v1, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-interface {p2}, Lb/b/d/a/c;->d()I

    move-result v5

    add-int/2addr v5, v0

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lb/b/d/a/aw;

    invoke-direct {p2, p0, p1, v2, v3}, Lb/b/d/a/aw;-><init>(Lb/b/d/a/i;II[I)V

    return-object p2
.end method

.method public final a(Lb/b/d/a/e;Lb/b/d/a/d;)V
    .registers 7

    check-cast p1, Lb/b/d/a/aw;

    invoke-virtual {p1}, Lb/b/d/a/aw;->w()[I

    move-result-object v0

    invoke-interface {p2}, Lb/b/d/a/d;->b()I

    move-result v1

    invoke-virtual {p1}, Lb/b/d/a/aw;->c()S

    move-result v2

    invoke-interface {p2, v2}, Lb/b/d/a/d;->a(S)V

    array-length v2, v0

    invoke-static {v2}, Lb/b/d/a/i;->i(I)S

    move-result v2

    invoke-interface {p2, v2}, Lb/b/d/a/d;->a(S)V

    invoke-virtual {p1}, Lb/b/d/a/aw;->v()I

    move-result p1

    invoke-interface {p2, p1}, Lb/b/d/a/d;->a_(I)V

    array-length p1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget v3, v0, v2

    sub-int/2addr v3, v1

    invoke-interface {p2, v3}, Lb/b/d/a/d;->a_(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
