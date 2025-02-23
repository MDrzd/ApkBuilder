.class public final Lb/b/c/c/ap;
.super Lb/b/c/c/ak;


# direct methods
.method public constructor <init>(Lb/b/f/c/f;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/c/c/ak;-><init>(Lb/b/f/c/x;)V

    return-void
.end method


# virtual methods
.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->f:Lb/b/c/c/ai;

    return-object v0
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 3

    invoke-super {p0, p1}, Lb/b/c/c/ak;->a(Lb/b/c/c/u;)V

    invoke-virtual {p1}, Lb/b/c/c/u;->l()Lb/b/c/c/ay;

    move-result-object p1

    invoke-virtual {p0}, Lb/b/c/c/ap;->e()Lb/b/f/c/x;

    move-result-object v0

    check-cast v0, Lb/b/f/c/f;

    invoke-virtual {v0}, Lb/b/f/c/f;->i()Lb/b/f/d/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/b/c/c/ay;->a(Lb/b/f/d/a;)Lb/b/c/c/ax;

    return-void
.end method

.method protected final b(Lb/b/c/c/u;)I
    .registers 3

    invoke-virtual {p1}, Lb/b/c/c/u;->l()Lb/b/c/c/ay;

    move-result-object p1

    invoke-virtual {p0}, Lb/b/c/c/ap;->e()Lb/b/f/c/x;

    move-result-object v0

    check-cast v0, Lb/b/f/c/f;

    invoke-virtual {v0}, Lb/b/f/c/f;->i()Lb/b/f/d/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/b/c/c/ay;->b(Lb/b/f/d/a;)I

    move-result p1

    return p1
.end method

.method protected final c()Ljava/lang/String;
    .registers 2

    const-string v0, "proto_idx"

    return-object v0
.end method
