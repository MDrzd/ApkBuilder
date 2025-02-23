.class public abstract Lb/b/d/a/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/d/a/i;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:J


# direct methods
.method public constructor <init>(Lb/b/d/a/i;IIIIJ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p2}, La/a/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lb/b/d/a/e;->a:Lb/b/d/a/i;

    iput p2, p0, Lb/b/d/a/e;->b:I

    iput p3, p0, Lb/b/d/a/e;->c:I

    iput p4, p0, Lb/b/d/a/e;->d:I

    iput p5, p0, Lb/b/d/a/e;->e:I

    iput-wide p6, p0, Lb/b/d/a/e;->f:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid opcode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "format == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a([S)[Lb/b/d/a/e;
    .registers 6

    array-length v0, p0

    new-array v0, v0, [Lb/b/d/a/e;

    new-instance v1, Lb/b/d/a/ay;

    invoke-direct {v1, p0}, Lb/b/d/a/ay;-><init>([S)V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lb/b/d/a/ay;->f()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Lb/b/d/a/ay;->a()I

    move-result p0

    invoke-interface {v1}, Lb/b/d/a/c;->c()I

    move-result v2

    and-int/lit16 v3, v2, 0xff

    if-eqz v3, :cond_0

    const/16 v4, 0xff

    if-ne v3, v4, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    invoke-static {v3}, Lb/b/d/e;->b(I)Lb/b/d/a/i;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lb/b/d/a/i;->a(ILb/b/d/a/c;)Lb/b/d/a/e;

    move-result-object v2

    aput-object v2, v0, p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lb/a/s;

    invoke-direct {v0, p0}, Lb/a/s;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(I)I
    .registers 3

    iget v0, p0, Lb/b/d/a/e;->e:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public a(II)Lb/b/d/a/e;
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Lb/b/d/a/i;
    .registers 2

    iget-object v0, p0, Lb/b/d/a/e;->a:Lb/b/d/a/i;

    return-object v0
.end method

.method public final a(Lb/b/d/a/d;)V
    .registers 3

    iget-object v0, p0, Lb/b/d/a/e;->a:Lb/b/d/a/i;

    invoke-virtual {v0, p0, p1}, Lb/b/d/a/i;->a(Lb/b/d/a/e;Lb/b/d/a/d;)V

    return-void
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lb/b/d/a/e;->b:I

    return v0
.end method

.method public final b(I)S
    .registers 5

    iget v0, p0, Lb/b/d/a/e;->e:I

    sub-int/2addr v0, p1

    int-to-short p1, v0

    if-ne v0, p1, :cond_0

    return p1

    :cond_0
    new-instance p1, Lb/a/s;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Target out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->t(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(I)I
    .registers 5

    iget v0, p0, Lb/b/d/a/e;->e:I

    sub-int/2addr v0, p1

    int-to-byte p1, v0

    if-ne v0, p1, :cond_0

    and-int/lit16 p1, v0, 0xff

    return p1

    :cond_0
    new-instance p1, Lb/a/s;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Target out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->t(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()S
    .registers 2

    iget v0, p0, Lb/b/d/a/e;->b:I

    int-to-short v0, v0

    return v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lb/b/d/a/e;->c:I

    return v0
.end method

.method public abstract d(I)Lb/b/d/a/e;
.end method

.method public final e()S
    .registers 2

    iget v0, p0, Lb/b/d/a/e;->c:I

    int-to-short v0, v0

    return v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lb/b/d/a/e;->d:I

    return v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lb/b/d/a/e;->e:I

    return v0
.end method

.method public final h()J
    .registers 3

    iget-wide v0, p0, Lb/b/d/a/e;->f:J

    return-wide v0
.end method

.method public final i()I
    .registers 6

    iget-wide v0, p0, Lb/b/d/a/e;->f:J

    iget-wide v2, p0, Lb/b/d/a/e;->f:J

    long-to-int v2, v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lb/b/d/a/e;->f:J

    long-to-int v0, v0

    return v0

    :cond_0
    new-instance v0, Lb/a/s;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Literal out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lb/b/d/a/e;->f:J

    invoke-static {v2, v3}, La/a/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()S
    .registers 6

    iget-wide v0, p0, Lb/b/d/a/e;->f:J

    iget-wide v2, p0, Lb/b/d/a/e;->f:J

    long-to-int v2, v2

    int-to-short v2, v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lb/b/d/a/e;->f:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0

    :cond_0
    new-instance v0, Lb/a/s;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Literal out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lb/b/d/a/e;->f:J

    invoke-static {v2, v3}, La/a/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()I
    .registers 6

    iget-wide v0, p0, Lb/b/d/a/e;->f:J

    iget-wide v2, p0, Lb/b/d/a/e;->f:J

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lb/b/d/a/e;->f:J

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    new-instance v0, Lb/a/s;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Literal out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lb/b/d/a/e;->f:J

    invoke-static {v2, v3}, La/a/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()I
    .registers 6

    iget-wide v0, p0, Lb/b/d/a/e;->f:J

    const-wide/16 v2, -0x8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p0, Lb/b/d/a/e;->f:J

    const-wide/16 v2, 0x7

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v0, p0, Lb/b/d/a/e;->f:J

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    return v0

    :cond_0
    new-instance v0, Lb/a/s;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Literal out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lb/b/d/a/e;->f:J

    invoke-static {v2, v3}, La/a/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract m()I
.end method

.method public n()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public o()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public p()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public q()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public r()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final s()S
    .registers 6

    invoke-virtual {p0}, Lb/b/d/a/e;->n()I

    move-result v0

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    :cond_0
    new-instance v1, Lb/a/s;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Register A out of range: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v3, v0

    invoke-static {v3, v4}, La/a/a;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final t()S
    .registers 6

    invoke-virtual {p0}, Lb/b/d/a/e;->o()I

    move-result v0

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    :cond_0
    new-instance v1, Lb/a/s;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Register B out of range: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v3, v0

    invoke-static {v3, v4}, La/a/a;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public u()S
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
