.class final enum Lb/b/d/a/m;
.super Lb/b/d/a/i;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/16 p2, 0xb

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

    int-to-long p1, p1

    const/16 v0, 0x15

    if-ne v2, v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    :goto_0
    shl-long v6, p1, v0

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
    .registers 7

    invoke-virtual {p1}, Lb/b/d/a/e;->b()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    const/16 v1, 0x30

    :goto_0
    invoke-virtual {p1}, Lb/b/d/a/e;->h()J

    move-result-wide v2

    shr-long v1, v2, v1

    long-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {p1}, Lb/b/d/a/e;->n()I

    move-result p1

    invoke-static {v0, p1}, Lb/b/d/a/i;->b(II)S

    move-result p1

    invoke-interface {p2, p1, v1}, Lb/b/d/a/d;->a(SS)V

    return-void
.end method
