.class final enum Lb/b/d/a/aq;
.super Lb/b/d/a/i;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb/b/d/a/i;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(ILb/b/d/a/c;)Lb/b/d/a/e;
    .registers 13

    invoke-interface {p2}, Lb/b/d/a/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1}, Lb/b/d/a/i;->a(I)I

    move-result v3

    invoke-static {p1}, Lb/b/d/a/i;->b(I)I

    move-result p1

    invoke-interface {p2}, Lb/b/d/a/c;->c()I

    move-result p2

    int-to-short p2, p2

    new-instance v9, Lb/b/d/a/bd;

    add-int v6, v0, p2

    int-to-long v7, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lb/b/d/a/bd;-><init>(Lb/b/d/a/i;IIIIJ)V

    return-object v9
.end method

.method public final a(Lb/b/d/a/e;Lb/b/d/a/d;)V
    .registers 4

    invoke-interface {p2}, Lb/b/d/a/d;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/b/d/a/e;->b(I)S

    move-result v0

    invoke-virtual {p1}, Lb/b/d/a/e;->c()S

    move-result p1

    invoke-interface {p2, p1, v0}, Lb/b/d/a/d;->a(SS)V

    return-void
.end method
