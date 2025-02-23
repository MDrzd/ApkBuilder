.class final enum Lb/b/d/a/y;
.super Lb/b/d/a/i;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/16 p2, 0x16

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

    move-result v9

    invoke-interface {p2}, Lb/b/d/a/c;->d()I

    move-result p1

    add-int v6, v0, p1

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p2, v6, v0}, Lb/b/d/a/c;->a(II)V

    :goto_0
    new-instance p1, Lb/b/d/a/av;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lb/b/d/a/av;-><init>(Lb/b/d/a/i;IIIIJI)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lb/b/d/a/e;Lb/b/d/a/d;)V
    .registers 5

    invoke-interface {p2}, Lb/b/d/a/d;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/b/d/a/e;->a(I)I

    move-result v0

    invoke-virtual {p1}, Lb/b/d/a/e;->b()I

    move-result v1

    invoke-virtual {p1}, Lb/b/d/a/e;->n()I

    move-result p1

    invoke-static {v1, p1}, Lb/b/d/a/i;->b(II)S

    move-result p1

    invoke-static {v0}, Lb/b/d/a/i;->e(I)S

    move-result v1

    invoke-static {v0}, Lb/b/d/a/i;->f(I)S

    move-result v0

    invoke-interface {p2, p1, v1, v0}, Lb/b/d/a/d;->a(SSS)V

    return-void
.end method
