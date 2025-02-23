.class public final Lb/b/d/a/az;
.super Lb/b/d/a/a;

# interfaces
.implements Lb/b/d/a/d;


# instance fields
.field private final a:[S


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lb/b/d/a/a;-><init>()V

    if-ltz p1, :cond_0

    new-array p1, p1, [S

    iput-object p1, p0, Lb/b/d/a/az;->a:[S

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(S)V
    .registers 4

    iget-object v0, p0, Lb/b/d/a/az;->a:[S

    invoke-virtual {p0}, Lb/b/d/a/az;->a()I

    move-result v1

    aput-short p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lb/b/d/a/az;->a(I)V

    return-void
.end method

.method public final a(SS)V
    .registers 3

    invoke-virtual {p0, p1}, Lb/b/d/a/az;->a(S)V

    invoke-virtual {p0, p2}, Lb/b/d/a/az;->a(S)V

    return-void
.end method

.method public final a(SSS)V
    .registers 4

    invoke-virtual {p0, p1}, Lb/b/d/a/az;->a(S)V

    invoke-virtual {p0, p2}, Lb/b/d/a/az;->a(S)V

    invoke-virtual {p0, p3}, Lb/b/d/a/az;->a(S)V

    return-void
.end method

.method public final a(SSSS)V
    .registers 5

    invoke-virtual {p0, p1}, Lb/b/d/a/az;->a(S)V

    invoke-virtual {p0, p2}, Lb/b/d/a/az;->a(S)V

    invoke-virtual {p0, p3}, Lb/b/d/a/az;->a(S)V

    invoke-virtual {p0, p4}, Lb/b/d/a/az;->a(S)V

    return-void
.end method

.method public final a(SSSSS)V
    .registers 6

    invoke-virtual {p0, p1}, Lb/b/d/a/az;->a(S)V

    invoke-virtual {p0, p2}, Lb/b/d/a/az;->a(S)V

    invoke-virtual {p0, p3}, Lb/b/d/a/az;->a(S)V

    invoke-virtual {p0, p4}, Lb/b/d/a/az;->a(S)V

    invoke-virtual {p0, p5}, Lb/b/d/a/az;->a(S)V

    return-void
.end method

.method public final a([B)V
    .registers 9

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-byte v6, p1, v3

    if-eqz v4, :cond_0

    and-int/lit16 v4, v6, 0xff

    move v5, v4

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    shl-int/lit8 v4, v6, 0x8

    or-int/2addr v4, v5

    int-to-short v5, v4

    invoke-virtual {p0, v5}, Lb/b/d/a/az;->a(S)V

    move v5, v4

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    int-to-short p1, v5

    invoke-virtual {p0, p1}, Lb/b/d/a/az;->a(S)V

    :cond_2
    return-void
.end method

.method public final a([I)V
    .registers 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lb/b/d/a/az;->a_(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a([J)V
    .registers 8

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    long-to-int v4, v2

    int-to-short v4, v4

    invoke-virtual {p0, v4}, Lb/b/d/a/az;->a(S)V

    const/16 v4, 0x10

    shr-long v4, v2, v4

    long-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {p0, v4}, Lb/b/d/a/az;->a(S)V

    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {p0, v4}, Lb/b/d/a/az;->a(S)V

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p0, v2}, Lb/b/d/a/az;->a(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a([S)V
    .registers 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Lb/b/d/a/az;->a(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a_(I)V
    .registers 3

    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lb/b/d/a/az;->a(S)V

    shr-int/lit8 p1, p1, 0x10

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lb/b/d/a/az;->a(S)V

    return-void
.end method

.method public final c()[S
    .registers 5

    invoke-virtual {p0}, Lb/b/d/a/az;->a()I

    move-result v0

    iget-object v1, p0, Lb/b/d/a/az;->a:[S

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/b/d/a/az;->a:[S

    return-object v0

    :cond_0
    new-array v1, v0, [S

    iget-object v2, p0, Lb/b/d/a/az;->a:[S

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
