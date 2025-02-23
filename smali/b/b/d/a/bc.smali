.class public final Lb/b/d/a/bc;
.super Lb/b/d/a/e;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(Lb/b/d/a/i;IIIIJII)V
    .registers 10

    invoke-direct/range {p0 .. p7}, Lb/b/d/a/e;-><init>(Lb/b/d/a/i;IIIIJ)V

    iput p8, p0, Lb/b/d/a/bc;->a:I

    iput p9, p0, Lb/b/d/a/bc;->b:I

    return-void
.end method


# virtual methods
.method public final d(I)Lb/b/d/a/e;
    .registers 13

    new-instance v10, Lb/b/d/a/bc;

    invoke-virtual {p0}, Lb/b/d/a/bc;->a()Lb/b/d/a/i;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/d/a/bc;->b()I

    move-result v2

    invoke-virtual {p0}, Lb/b/d/a/bc;->f()I

    move-result v4

    invoke-virtual {p0}, Lb/b/d/a/bc;->g()I

    move-result v5

    invoke-virtual {p0}, Lb/b/d/a/bc;->h()J

    move-result-wide v6

    iget v8, p0, Lb/b/d/a/bc;->a:I

    iget v9, p0, Lb/b/d/a/bc;->b:I

    move-object v0, v10

    move v3, p1

    invoke-direct/range {v0 .. v9}, Lb/b/d/a/bc;-><init>(Lb/b/d/a/i;IIIIJII)V

    return-object v10
.end method

.method public final m()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final n()I
    .registers 2

    iget v0, p0, Lb/b/d/a/bc;->a:I

    return v0
.end method

.method public final o()I
    .registers 2

    iget v0, p0, Lb/b/d/a/bc;->b:I

    return v0
.end method
