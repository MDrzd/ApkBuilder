.class public abstract Lb/b/c/c/av;
.super Lb/b/c/c/ah;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:I

.field private b:I

.field private c:Lb/b/c/c/az;

.field private d:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Lb/b/c/c/ah;-><init>()V

    invoke-static {p1}, Lb/b/c/c/az;->a(I)V

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iput p1, p0, Lb/b/c/c/av;->a:I

    iput p2, p0, Lb/b/c/c/av;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/c/c/av;->c:Lb/b/c/c/az;

    iput v0, p0, Lb/b/c/c/av;->d:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "writeSize < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Lb/b/c/c/av;)I
    .registers 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lb/b/c/c/av;->f()I

    move-result p0

    return p0
.end method


# virtual methods
.method protected a(Lb/b/c/c/av;)I
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(I)V
    .registers 3

    if-ltz p1, :cond_1

    iget v0, p0, Lb/b/c/c/av;->b:I

    if-gez v0, :cond_0

    iput p1, p0, Lb/b/c/c/av;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "writeSize already set"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "writeSize < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Lb/b/c/c/az;I)V
    .registers 3

    return-void
.end method

.method public final a(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 4

    iget v0, p0, Lb/b/c/c/av;->a:I

    invoke-interface {p2, v0}, Lb/b/h/r;->h(I)V

    :try_start_0
    iget v0, p0, Lb/b/c/c/av;->b:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lb/b/c/c/av;->f()I

    move-result v0

    invoke-interface {p2, v0}, Lb/b/h/r;->a(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p2}, Lb/b/c/c/av;->a_(Lb/b/c/c/u;Lb/b/h/r;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "writeSize is unknown"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "...while writing "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lb/a/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lb/a/a/c;

    move-result-object p1

    throw p1
.end method

.method protected abstract a_(Lb/b/c/c/u;Lb/b/h/r;)V
.end method

.method public final b(Lb/b/c/c/az;I)I
    .registers 4

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    iget-object v0, p0, Lb/b/c/c/av;->c:Lb/b/c/c/az;

    if-nez v0, :cond_0

    iget v0, p0, Lb/b/c/c/av;->a:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p2, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p2, v0

    iput-object p1, p0, Lb/b/c/c/av;->c:Lb/b/c/c/az;

    iput p2, p0, Lb/b/c/c/av;->d:I

    invoke-virtual {p0, p1, p2}, Lb/b/c/c/av;->a(Lb/b/c/c/az;I)V

    return p2

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "already written"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "addedTo == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public final c(Lb/b/c/c/av;)I
    .registers 4

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lb/b/c/c/av;->a()Lb/b/c/c/ai;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/c/c/av;->a()Lb/b/c/c/ai;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {v0, v1}, Lb/b/c/c/ai;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lb/b/c/c/av;->a(Lb/b/c/c/av;)I

    move-result p1

    return p1
.end method

.method public final c_()I
    .registers 3

    iget v0, p0, Lb/b/c/c/av;->b:I

    if-ltz v0, :cond_0

    iget v0, p0, Lb/b/c/c/av;->b:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writeSize is unknown"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/b/c/c/av;

    invoke-virtual {p0, p1}, Lb/b/c/c/av;->c(Lb/b/c/c/av;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Lb/b/c/c/av;

    invoke-virtual {p0}, Lb/b/c/c/av;->a()Lb/b/c/c/ai;

    move-result-object v1

    invoke-virtual {p1}, Lb/b/c/c/av;->a()Lb/b/c/c/ai;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0, p1}, Lb/b/c/c/av;->a(Lb/b/c/c/av;)I

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v3
.end method

.method public final f()I
    .registers 3

    iget v0, p0, Lb/b/c/c/av;->d:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lb/b/c/c/av;->c:Lb/b/c/c/az;

    iget v1, p0, Lb/b/c/c/av;->d:I

    invoke-virtual {v0, v1}, Lb/b/c/c/az;->c(I)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "offset not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lb/b/c/c/av;->a:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/b/c/c/av;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
