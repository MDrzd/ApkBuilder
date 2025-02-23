.class final Lb/b/g/a/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:[I

.field private final b:[I

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Lb/b/g/a/f;->a:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lb/b/g/a/f;->b:[I

    const/4 p1, 0x0

    iput p1, p0, Lb/b/g/a/f;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_0
    iget v5, p0, Lb/b/g/a/f;->c:I

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lb/b/g/a/f;->b:[I

    aget v5, v5, v0

    if-ge v2, v5, :cond_0

    iget-object v2, p0, Lb/b/g/a/f;->a:[I

    aget v2, v2, v0

    iget-object v3, p0, Lb/b/g/a/f;->b:[I

    aget v3, v3, v0

    move v4, v2

    move v2, v3

    move v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/b/g/a/f;->b:[I

    aput v1, v0, v3

    return v4
.end method

.method public final a(I)V
    .registers 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lb/b/g/a/f;->c:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lb/b/g/a/f;->a:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lb/b/g/a/f;->b:[I

    aget v1, p1, v0

    add-int/2addr v1, v2

    aput v1, p1, v0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/b/g/a/f;->a:[I

    iget v1, p0, Lb/b/g/a/f;->c:I

    aput p1, v0, v1

    iget-object p1, p0, Lb/b/g/a/f;->b:[I

    iget v0, p0, Lb/b/g/a/f;->c:I

    aput v2, p1, v0

    iget p1, p0, Lb/b/g/a/f;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lb/b/g/a/f;->c:I

    return-void
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lb/b/g/a/f;->c:I

    return v0
.end method
