.class public final Lb/b/d/a/bb;
.super Lb/b/d/a/e;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lb/b/d/a/i;IIIIJIII)V
    .registers 11

    invoke-direct/range {p0 .. p7}, Lb/b/d/a/e;-><init>(Lb/b/d/a/i;IIIIJ)V

    iput p8, p0, Lb/b/d/a/bb;->a:I

    iput p9, p0, Lb/b/d/a/bb;->b:I

    iput p10, p0, Lb/b/d/a/bb;->c:I

    return-void
.end method


# virtual methods
.method public final d(I)Lb/b/d/a/e;
    .registers 14

    new-instance v11, Lb/b/d/a/bb;

    invoke-virtual {p0}, Lb/b/d/a/bb;->a()Lb/b/d/a/i;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/d/a/bb;->b()I

    move-result v2

    invoke-virtual {p0}, Lb/b/d/a/bb;->f()I

    move-result v4

    invoke-virtual {p0}, Lb/b/d/a/bb;->g()I

    move-result v5

    invoke-virtual {p0}, Lb/b/d/a/bb;->h()J

    move-result-wide v6

    iget v8, p0, Lb/b/d/a/bb;->a:I

    iget v9, p0, Lb/b/d/a/bb;->b:I

    iget v10, p0, Lb/b/d/a/bb;->c:I

    move-object v0, v11

    move v3, p1

    invoke-direct/range {v0 .. v10}, Lb/b/d/a/bb;-><init>(Lb/b/d/a/i;IIIIJIII)V

    return-object v11
.end method

.method public final m()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public final n()I
    .registers 2

    iget v0, p0, Lb/b/d/a/bb;->a:I

    return v0
.end method

.method public final o()I
    .registers 2

    iget v0, p0, Lb/b/d/a/bb;->b:I

    return v0
.end method

.method public final p()I
    .registers 2

    iget v0, p0, Lb/b/d/a/bb;->c:I

    return v0
.end method
