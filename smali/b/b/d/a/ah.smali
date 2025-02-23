.class final enum Lb/b/d/a/ah;
.super Lb/b/d/a/i;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/16 p2, 0x1e

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb/b/d/a/i;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(ILb/b/d/a/c;)Lb/b/d/a/e;
    .registers 12

    invoke-static {p1}, Lb/b/d/a/i;->a(I)I

    move-result v2

    invoke-static {p1}, Lb/b/d/a/i;->b(I)I

    move-result v8

    invoke-interface {p2}, Lb/b/d/a/c;->e()J

    move-result-wide v6

    new-instance p1, Lb/b/d/a/av;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lb/b/d/a/av;-><init>(Lb/b/d/a/i;IIIIJI)V

    return-object p1
.end method

.method public final a(Lb/b/d/a/e;Lb/b/d/a/d;)V
    .registers 12

    invoke-virtual {p1}, Lb/b/d/a/e;->h()J

    move-result-wide v0

    invoke-virtual {p1}, Lb/b/d/a/e;->b()I

    move-result v2

    invoke-virtual {p1}, Lb/b/d/a/e;->n()I

    move-result p1

    invoke-static {v2, p1}, Lb/b/d/a/i;->b(II)S

    move-result v4

    invoke-static {v0, v1}, Lb/b/d/a/i;->a(J)S

    move-result v5

    invoke-static {v0, v1}, Lb/b/d/a/i;->b(J)S

    move-result v6

    invoke-static {v0, v1}, Lb/b/d/a/i;->c(J)S

    move-result v7

    invoke-static {v0, v1}, Lb/b/d/a/i;->d(J)S

    move-result v8

    move-object v3, p2

    invoke-interface/range {v3 .. v8}, Lb/b/d/a/d;->a(SSSSS)V

    return-void
.end method
