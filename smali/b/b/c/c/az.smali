.class public abstract Lb/b/c/c/az;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lb/b/c/c/u;

.field private final c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lb/b/c/c/u;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p3}, Lb/b/c/c/az;->a(I)V

    iput-object p1, p0, Lb/b/c/c/az;->a:Ljava/lang/String;

    iput-object p2, p0, Lb/b/c/c/az;->b:Lb/b/c/c/u;

    iput p3, p0, Lb/b/c/c/az;->c:I

    const/4 p1, -0x1

    iput p1, p0, Lb/b/c/c/az;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/b/c/c/az;->e:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(I)V
    .registers 2

    if-lez p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid alignment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a(Lb/b/c/c/ah;)I
.end method

.method protected abstract a_(Lb/b/h/r;)V
.end method

.method public final b(I)I
    .registers 3

    if-ltz p1, :cond_1

    iget v0, p0, Lb/b/c/c/az;->d:I

    if-gez v0, :cond_0

    iget v0, p0, Lb/b/c/c/az;->c:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lb/b/c/c/az;->d:I

    return p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "fileOffset already set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fileOffset < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract b()Ljava/util/Collection;
.end method

.method public final c(I)I
    .registers 3

    if-ltz p1, :cond_1

    iget v0, p0, Lb/b/c/c/az;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lb/b/c/c/az;->d:I

    add-int/2addr v0, p1

    return v0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "fileOffset not yet set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "relative < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract c()V
.end method

.method public final c(Lb/b/h/r;)V
    .registers 5

    invoke-virtual {p0}, Lb/b/c/c/az;->i()V

    iget v0, p0, Lb/b/c/c/az;->c:I

    invoke-interface {p1, v0}, Lb/b/h/r;->h(I)V

    invoke-interface {p1}, Lb/b/h/r;->c()I

    move-result v0

    iget v1, p0, Lb/b/c/c/az;->d:I

    if-gez v1, :cond_0

    iput v0, p0, Lb/b/c/c/az;->d:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lb/b/c/c/az;->d:I

    if-ne v1, v0, :cond_3

    :goto_0
    invoke-interface {p1}, Lb/b/h/r;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/b/c/c/az;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/b/c/c/az;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p1, v2, v0}, Lb/b/h/r;->a(ILjava/lang/String;)V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    const-string v0, "\n"

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Lb/b/c/c/az;->a_(Lb/b/h/r;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "alignment mismatch: for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but expected "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lb/b/c/c/az;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract d_()I
.end method

.method public final e()Lb/b/c/c/u;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/az;->b:Lb/b/c/c/u;

    return-object v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lb/b/c/c/az;->c:I

    return v0
.end method

.method public final g()I
    .registers 3

    iget v0, p0, Lb/b/c/c/az;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lb/b/c/c/az;->d:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fileOffset not set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()V
    .registers 2

    invoke-virtual {p0}, Lb/b/c/c/az;->j()V

    invoke-virtual {p0}, Lb/b/c/c/az;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/c/c/az;->e:Z

    return-void
.end method

.method protected final i()V
    .registers 3

    iget-boolean v0, p0, Lb/b/c/c/az;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not prepared"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final j()V
    .registers 3

    iget-boolean v0, p0, Lb/b/c/c/az;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "already prepared"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
