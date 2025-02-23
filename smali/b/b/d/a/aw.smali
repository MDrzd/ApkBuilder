.class public final Lb/b/d/a/aw;
.super Lb/b/d/a/e;


# instance fields
.field private final a:I

.field private final b:[I


# direct methods
.method public constructor <init>(Lb/b/d/a/i;II[I)V
    .registers 13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lb/b/d/a/e;-><init>(Lb/b/d/a/i;IIIIJ)V

    iput p3, p0, Lb/b/d/a/aw;->a:I

    iput-object p4, p0, Lb/b/d/a/aw;->b:[I

    return-void
.end method


# virtual methods
.method public final d(I)Lb/b/d/a/e;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "no index in instruction"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final v()I
    .registers 2

    iget v0, p0, Lb/b/d/a/aw;->a:I

    return v0
.end method

.method public final w()[I
    .registers 2

    iget-object v0, p0, Lb/b/d/a/aw;->b:[I

    return-object v0
.end method
