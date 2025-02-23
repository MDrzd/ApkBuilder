.class public final Lb/b/d/a/h;
.super Lb/b/d/a/e;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Lb/b/d/a/i;IIIIJIIII)V
    .registers 12

    invoke-direct/range {p0 .. p7}, Lb/b/d/a/e;-><init>(Lb/b/d/a/i;IIIIJ)V

    iput p8, p0, Lb/b/d/a/h;->a:I

    iput p9, p0, Lb/b/d/a/h;->b:I

    iput p10, p0, Lb/b/d/a/h;->c:I

    iput p11, p0, Lb/b/d/a/h;->d:I

    return-void
.end method


# virtual methods
.method public final d(I)Lb/b/d/a/e;
    .registers 15

    new-instance v12, Lb/b/d/a/h;

    invoke-virtual {p0}, Lb/b/d/a/h;->a()Lb/b/d/a/i;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/d/a/h;->b()I

    move-result v2

    invoke-virtual {p0}, Lb/b/d/a/h;->f()I

    move-result v4

    invoke-virtual {p0}, Lb/b/d/a/h;->g()I

    move-result v5

    invoke-virtual {p0}, Lb/b/d/a/h;->h()J

    move-result-wide v6

    iget v8, p0, Lb/b/d/a/h;->a:I

    iget v9, p0, Lb/b/d/a/h;->b:I

    iget v10, p0, Lb/b/d/a/h;->c:I

    iget v11, p0, Lb/b/d/a/h;->d:I

    move-object v0, v12

    move v3, p1

    invoke-direct/range {v0 .. v11}, Lb/b/d/a/h;-><init>(Lb/b/d/a/i;IIIIJIIII)V

    return-object v12
.end method

.method public final m()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public final n()I
    .registers 2

    iget v0, p0, Lb/b/d/a/h;->a:I

    return v0
.end method

.method public final o()I
    .registers 2

    iget v0, p0, Lb/b/d/a/h;->b:I

    return v0
.end method

.method public final p()I
    .registers 2

    iget v0, p0, Lb/b/d/a/h;->c:I

    return v0
.end method

.method public final q()I
    .registers 2

    iget v0, p0, Lb/b/d/a/h;->d:I

    return v0
.end method
