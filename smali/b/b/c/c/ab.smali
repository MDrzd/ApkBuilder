.class public final Lb/b/c/c/ab;
.super Lb/b/c/c/ak;


# direct methods
.method public constructor <init>(Lb/b/f/c/n;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/c/c/ak;-><init>(Lb/b/f/c/x;)V

    return-void
.end method


# virtual methods
.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->e:Lb/b/c/c/ai;

    return-object v0
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 3

    invoke-super {p0, p1}, Lb/b/c/c/ak;->a(Lb/b/c/c/u;)V

    invoke-virtual {p1}, Lb/b/c/c/u;->k()Lb/b/c/c/bg;

    move-result-object p1

    invoke-virtual {p0}, Lb/b/c/c/ab;->e()Lb/b/f/c/x;

    move-result-object v0

    check-cast v0, Lb/b/f/c/n;

    invoke-virtual {v0}, Lb/b/f/c/n;->a()Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/b/c/c/bg;->a(Lb/b/f/d/c;)Lb/b/c/c/bf;

    return-void
.end method

.method protected final b(Lb/b/c/c/u;)I
    .registers 3

    invoke-virtual {p1}, Lb/b/c/c/u;->k()Lb/b/c/c/bg;

    move-result-object p1

    invoke-virtual {p0}, Lb/b/c/c/ab;->e()Lb/b/f/c/x;

    move-result-object v0

    check-cast v0, Lb/b/f/c/n;

    invoke-virtual {v0}, Lb/b/f/c/n;->a()Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/b/c/c/bg;->b(Lb/b/f/d/c;)I

    move-result p1

    return p1
.end method

.method protected final c()Ljava/lang/String;
    .registers 2

    const-string v0, "type_idx"

    return-object v0
.end method
