.class public final Lb/b/d/a/f;
.super Lb/b/d/a/e;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:I

.field private final c:I


# direct methods
.method private constructor <init>(Lb/b/d/a/i;ILjava/lang/Object;II)V
    .registers 14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lb/b/d/a/e;-><init>(Lb/b/d/a/i;IIIIJ)V

    iput-object p3, p0, Lb/b/d/a/f;->a:Ljava/lang/Object;

    iput p4, p0, Lb/b/d/a/f;->b:I

    iput p5, p0, Lb/b/d/a/f;->c:I

    return-void
.end method

.method public constructor <init>(Lb/b/d/a/i;I[B)V
    .registers 10

    array-length v4, p3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lb/b/d/a/f;-><init>(Lb/b/d/a/i;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lb/b/d/a/i;I[I)V
    .registers 10

    array-length v4, p3

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lb/b/d/a/f;-><init>(Lb/b/d/a/i;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lb/b/d/a/i;I[J)V
    .registers 10

    array-length v4, p3

    const/16 v5, 0x8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lb/b/d/a/f;-><init>(Lb/b/d/a/i;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lb/b/d/a/i;I[S)V
    .registers 10

    array-length v4, p3

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lb/b/d/a/f;-><init>(Lb/b/d/a/i;ILjava/lang/Object;II)V

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

.method public final v()S
    .registers 2

    iget v0, p0, Lb/b/d/a/f;->c:I

    int-to-short v0, v0

    return v0
.end method

.method public final w()I
    .registers 2

    iget v0, p0, Lb/b/d/a/f;->b:I

    return v0
.end method

.method public final x()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lb/b/d/a/f;->a:Ljava/lang/Object;

    return-object v0
.end method
