.class public final Lb/b/d/a/av;
.super Lb/b/d/a/e;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Lb/b/d/a/i;IIIIJI)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lb/b/d/a/e;-><init>(Lb/b/d/a/i;IIIIJ)V

    iput p8, p0, Lb/b/d/a/av;->a:I

    return-void
.end method


# virtual methods
.method public final d(I)Lb/b/d/a/e;
    .registers 12

    new-instance v9, Lb/b/d/a/av;

    invoke-virtual {p0}, Lb/b/d/a/av;->a()Lb/b/d/a/i;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/d/a/av;->b()I

    move-result v2

    invoke-virtual {p0}, Lb/b/d/a/av;->f()I

    move-result v4

    invoke-virtual {p0}, Lb/b/d/a/av;->g()I

    move-result v5

    invoke-virtual {p0}, Lb/b/d/a/av;->h()J

    move-result-wide v6

    iget v8, p0, Lb/b/d/a/av;->a:I

    move-object v0, v9

    move v3, p1

    invoke-direct/range {v0 .. v8}, Lb/b/d/a/av;-><init>(Lb/b/d/a/i;IIIIJI)V

    return-object v9
.end method

.method public final m()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final n()I
    .registers 2

    iget v0, p0, Lb/b/d/a/av;->a:I

    return v0
.end method
