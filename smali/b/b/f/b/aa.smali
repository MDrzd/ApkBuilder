.class public final Lb/b/f/b/aa;
.super Lb/b/f/b/i;


# instance fields
.field private final a:Lb/b/h/k;


# direct methods
.method public constructor <init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;Lb/b/h/k;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lb/b/f/b/i;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-virtual {p1}, Lb/b/f/b/x;->d()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    if-eqz p5, :cond_0

    iput-object p5, p0, Lb/b/f/b/aa;->a:Lb/b/h/k;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cases == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus branchingness"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lb/b/f/b/r;Lb/b/f/b/u;)Lb/b/f/b/i;
    .registers 10

    new-instance v6, Lb/b/f/b/aa;

    invoke-virtual {p0}, Lb/b/f/b/aa;->e()Lb/b/f/b/x;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/f/b/aa;->f()Lb/b/f/b/z;

    move-result-object v2

    iget-object v5, p0, Lb/b/f/b/aa;->a:Lb/b/h/k;

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lb/b/f/b/aa;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;Lb/b/h/k;)V

    return-object v6
.end method

.method public final a(Lb/b/f/d/c;)Lb/b/f/b/i;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/aa;->a:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lb/b/f/b/k;)V
    .registers 2

    invoke-interface {p1, p0}, Lb/b/f/b/k;->a(Lb/b/f/b/aa;)V

    return-void
.end method

.method public final a(Lb/b/f/b/i;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final b()Lb/b/f/d/e;
    .registers 2

    sget-object v0, Lb/b/f/d/b;->a:Lb/b/f/d/b;

    return-object v0
.end method

.method public final c()Lb/b/h/k;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/aa;->a:Lb/b/h/k;

    return-object v0
.end method
