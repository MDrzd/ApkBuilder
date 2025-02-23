.class public final Lb/b/d/a/au;
.super Lb/b/d/a/e;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lb/b/d/a/i;IIIIII)V
    .registers 16

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lb/b/d/a/e;-><init>(Lb/b/d/a/i;IIIIJ)V

    int-to-short p1, p7

    if-ne p7, p1, :cond_0

    iput p5, p0, Lb/b/d/a/au;->a:I

    iput p6, p0, Lb/b/d/a/au;->b:I

    iput p7, p0, Lb/b/d/a/au;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "protoIndex doesn\'t fit in a short: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(II)Lb/b/d/a/e;
    .registers 12

    new-instance v8, Lb/b/d/a/au;

    invoke-virtual {p0}, Lb/b/d/a/au;->a()Lb/b/d/a/i;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/d/a/au;->b()I

    move-result v2

    invoke-virtual {p0}, Lb/b/d/a/au;->f()I

    move-result v4

    iget v5, p0, Lb/b/d/a/au;->a:I

    iget v6, p0, Lb/b/d/a/au;->b:I

    move-object v0, v8

    move v3, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lb/b/d/a/au;-><init>(Lb/b/d/a/i;IIIIII)V

    return-object v8
.end method

.method public final d(I)Lb/b/d/a/e;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "use withProtoIndex to update both the method and proto indices for invoke-polymorphic/range"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m()I
    .registers 2

    iget v0, p0, Lb/b/d/a/au;->b:I

    return v0
.end method

.method public final p()I
    .registers 2

    iget v0, p0, Lb/b/d/a/au;->a:I

    return v0
.end method

.method public final u()S
    .registers 2

    iget v0, p0, Lb/b/d/a/au;->c:I

    int-to-short v0, v0

    return v0
.end method
