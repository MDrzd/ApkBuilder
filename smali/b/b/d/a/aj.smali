.class final enum Lb/b/d/a/aj;
.super Lb/b/d/a/i;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/16 p2, 0x20

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb/b/d/a/i;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(ILb/b/d/a/c;)Lb/b/d/a/e;
    .registers 11

    invoke-static {p1}, Lb/b/d/a/i;->a(I)I

    move-result v2

    const/16 v0, 0xfb

    if-ne v2, v0, :cond_0

    invoke-static {p1}, Lb/b/d/a/i;->b(I)I

    move-result v6

    invoke-interface {p2}, Lb/b/d/a/c;->c()I

    move-result v3

    invoke-interface {p2}, Lb/b/d/a/c;->c()I

    move-result v5

    invoke-interface {p2}, Lb/b/d/a/c;->c()I

    move-result v7

    invoke-static {v2}, Lb/b/d/e;->c(I)I

    move-result v4

    new-instance p1, Lb/b/d/a/au;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lb/b/d/a/au;-><init>(Lb/b/d/a/i;IIIIII)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/d/a/e;Lb/b/d/a/d;)V
    .registers 7

    invoke-virtual {p1}, Lb/b/d/a/e;->b()I

    move-result v0

    invoke-virtual {p1}, Lb/b/d/a/e;->m()I

    move-result v1

    invoke-static {v0, v1}, Lb/b/d/a/i;->b(II)S

    move-result v0

    invoke-virtual {p1}, Lb/b/d/a/e;->e()S

    move-result v1

    invoke-virtual {p1}, Lb/b/d/a/e;->p()I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v3, v2

    if-nez v3, :cond_0

    int-to-short v2, v2

    invoke-virtual {p1}, Lb/b/d/a/e;->u()S

    move-result p1

    invoke-interface {p2, v0, v1, v2, p1}, Lb/b/d/a/d;->a(SSSS)V

    return-void

    :cond_0
    new-instance p1, Lb/a/s;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Register C out of range: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v0, v2

    invoke-static {v0, v1}, La/a/a;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method
