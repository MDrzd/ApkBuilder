.class public Ljackpal/androidterm/a/l;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Ljackpal/androidterm/a/l;->a:[B

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljackpal/androidterm/a/l;->c:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a([BII)I
    .registers 11

    array-length v0, p1

    if-gt p3, v0, :cond_7

    if-ltz p3, :cond_6

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v1, p0, Ljackpal/androidterm/a/l;->c:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljackpal/androidterm/a/l;->a:[B

    array-length v1, v1

    iget v2, p0, Ljackpal/androidterm/a/l;->c:I

    if-ne v1, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move v3, p2

    const/4 p2, 0x0

    :goto_2
    if-lez p3, :cond_4

    iget v4, p0, Ljackpal/androidterm/a/l;->c:I

    if-lez v4, :cond_4

    iget v4, p0, Ljackpal/androidterm/a/l;->b:I

    sub-int v4, v1, v4

    iget v5, p0, Ljackpal/androidterm/a/l;->c:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Ljackpal/androidterm/a/l;->a:[B

    iget v6, p0, Ljackpal/androidterm/a/l;->b:I

    invoke-static {v5, v6, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Ljackpal/androidterm/a/l;->b:I

    add-int/2addr v5, v4

    iput v5, p0, Ljackpal/androidterm/a/l;->b:I

    iget v5, p0, Ljackpal/androidterm/a/l;->b:I

    if-lt v5, v1, :cond_3

    iput v0, p0, Ljackpal/androidterm/a/l;->b:I

    :cond_3
    iget v5, p0, Ljackpal/androidterm/a/l;->c:I

    sub-int/2addr v5, v4

    iput v5, p0, Ljackpal/androidterm/a/l;->c:I

    sub-int/2addr p3, v4

    add-int/2addr v3, v4

    add-int/2addr p2, v4

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_5
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length + offset > buffer.length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b([BII)I
    .registers 8

    add-int v0, p3, p2

    array-length v1, p1

    if-gt v0, v1, :cond_6

    if-ltz p3, :cond_5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljackpal/androidterm/a/l;->a:[B

    array-length v1, v1

    iget v2, p0, Ljackpal/androidterm/a/l;->c:I

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    iget v2, p0, Ljackpal/androidterm/a/l;->c:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_2
    iget v2, p0, Ljackpal/androidterm/a/l;->b:I

    iget v3, p0, Ljackpal/androidterm/a/l;->c:I

    add-int/2addr v2, v3

    if-lt v2, v1, :cond_3

    sub-int/2addr v2, v1

    iget v1, p0, Ljackpal/androidterm/a/l;->b:I

    :cond_3
    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, p0, Ljackpal/androidterm/a/l;->a:[B

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ljackpal/androidterm/a/l;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Ljackpal/androidterm/a/l;->c:I

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_4
    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length + offset > buffer.length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
