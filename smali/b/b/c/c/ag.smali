.class public abstract Lb/b/c/c/ag;
.super Lb/b/c/c/ah;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lb/b/c/c/ah;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/b/c/c/ag;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    iget v0, p0, Lb/b/c/c/ag;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lb/b/c/c/ag;->a:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "index already set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h()Z
    .registers 2

    iget v0, p0, Lb/b/c/c/ag;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()I
    .registers 3

    iget v0, p0, Lb/b/c/c/ag;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lb/b/c/c/ag;->a:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index not yet set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lb/b/c/c/ag;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
