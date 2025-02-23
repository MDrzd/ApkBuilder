.class final enum Lb/b/d/a/l;
.super Lb/b/d/a/i;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/16 p2, 0xa

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

    invoke-interface {p2}, Lb/b/d/a/c;->c()I

    move-result p1

    int-to-short p1, p1

    new-instance p2, Lb/b/d/a/av;

    int-to-long v6, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lb/b/d/a/av;-><init>(Lb/b/d/a/i;IIIIJI)V

    return-object p2
.end method

.method public final a(Lb/b/d/a/e;Lb/b/d/a/d;)V
    .registers 5

    invoke-virtual {p1}, Lb/b/d/a/e;->b()I

    move-result v0

    invoke-virtual {p1}, Lb/b/d/a/e;->n()I

    move-result v1

    invoke-static {v0, v1}, Lb/b/d/a/i;->b(II)S

    move-result v0

    invoke-virtual {p1}, Lb/b/d/a/e;->j()S

    move-result p1

    invoke-interface {p2, v0, p1}, Lb/b/d/a/d;->a(SS)V

    return-void
.end method
