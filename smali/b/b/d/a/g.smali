.class public final Lb/b/d/a/g;
.super Lb/b/d/a/e;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Lb/b/d/a/i;IIIIJIIIII)V
    .registers 13

    invoke-direct/range {p0 .. p7}, Lb/b/d/a/e;-><init>(Lb/b/d/a/i;IIIIJ)V

    iput p8, p0, Lb/b/d/a/g;->a:I

    iput p9, p0, Lb/b/d/a/g;->b:I

    iput p10, p0, Lb/b/d/a/g;->c:I

    iput p11, p0, Lb/b/d/a/g;->d:I

    iput p12, p0, Lb/b/d/a/g;->e:I

    return-void
.end method


# virtual methods
.method public final d(I)Lb/b/d/a/e;
    .registers 16

    new-instance v13, Lb/b/d/a/g;

    invoke-virtual {p0}, Lb/b/d/a/g;->a()Lb/b/d/a/i;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/d/a/g;->b()I

    move-result v2

    invoke-virtual {p0}, Lb/b/d/a/g;->f()I

    move-result v4

    invoke-virtual {p0}, Lb/b/d/a/g;->g()I

    move-result v5

    invoke-virtual {p0}, Lb/b/d/a/g;->h()J

    move-result-wide v6

    iget v8, p0, Lb/b/d/a/g;->a:I

    iget v9, p0, Lb/b/d/a/g;->b:I

    iget v10, p0, Lb/b/d/a/g;->c:I

    iget v11, p0, Lb/b/d/a/g;->d:I

    iget v12, p0, Lb/b/d/a/g;->e:I

    move-object v0, v13

    move v3, p1

    invoke-direct/range {v0 .. v12}, Lb/b/d/a/g;-><init>(Lb/b/d/a/i;IIIIJIIIII)V

    return-object v13
.end method

.method public final m()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public final n()I
    .registers 2

    iget v0, p0, Lb/b/d/a/g;->a:I

    return v0
.end method

.method public final o()I
    .registers 2

    iget v0, p0, Lb/b/d/a/g;->b:I

    return v0
.end method

.method public final p()I
    .registers 2

    iget v0, p0, Lb/b/d/a/g;->c:I

    return v0
.end method

.method public final q()I
    .registers 2

    iget v0, p0, Lb/b/d/a/g;->d:I

    return v0
.end method

.method public final r()I
    .registers 2

    iget v0, p0, Lb/b/d/a/g;->e:I

    return v0
.end method
