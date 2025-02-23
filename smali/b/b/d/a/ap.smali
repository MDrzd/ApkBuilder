.class final enum Lb/b/d/a/ap;
.super Lb/b/d/a/i;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 p2, 0x5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb/b/d/a/i;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(ILb/b/d/a/c;)Lb/b/d/a/e;
    .registers 12

    invoke-interface {p2}, Lb/b/d/a/c;->a()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1}, Lb/b/d/a/i;->a(I)I

    move-result v2

    invoke-static {p1}, Lb/b/d/a/i;->b(I)I

    move-result p1

    int-to-byte p1, p1

    new-instance v8, Lb/b/d/a/bd;

    add-int v5, p2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lb/b/d/a/bd;-><init>(Lb/b/d/a/i;IIIIJ)V

    return-object v8
.end method

.method public final a(Lb/b/d/a/e;Lb/b/d/a/d;)V
    .registers 4

    invoke-interface {p2}, Lb/b/d/a/d;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/b/d/a/e;->c(I)I

    move-result v0

    invoke-virtual {p1}, Lb/b/d/a/e;->b()I

    move-result p1

    invoke-static {p1, v0}, Lb/b/d/a/i;->b(II)S

    move-result p1

    invoke-interface {p2, p1}, Lb/b/d/a/d;->a(S)V

    return-void
.end method
