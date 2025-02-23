.class public final Lb/b/d/a/bd;
.super Lb/b/d/a/e;


# direct methods
.method public constructor <init>(Lb/b/d/a/i;IIIIJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lb/b/d/a/e;-><init>(Lb/b/d/a/i;IIIIJ)V

    return-void
.end method


# virtual methods
.method public final d(I)Lb/b/d/a/e;
    .registers 11

    new-instance v8, Lb/b/d/a/bd;

    invoke-virtual {p0}, Lb/b/d/a/bd;->a()Lb/b/d/a/i;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/d/a/bd;->b()I

    move-result v2

    invoke-virtual {p0}, Lb/b/d/a/bd;->f()I

    move-result v4

    invoke-virtual {p0}, Lb/b/d/a/bd;->g()I

    move-result v5

    invoke-virtual {p0}, Lb/b/d/a/bd;->h()J

    move-result-wide v6

    move-object v0, v8

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lb/b/d/a/bd;-><init>(Lb/b/d/a/i;IIIIJ)V

    return-object v8
.end method

.method public final m()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
