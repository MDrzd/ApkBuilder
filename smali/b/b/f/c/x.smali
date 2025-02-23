.class public abstract Lb/b/f/c/x;
.super Lb/b/f/c/ag;


# instance fields
.field private final a:Lb/b/f/c/ae;

.field private final b:Lb/b/f/c/aa;


# direct methods
.method constructor <init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V
    .registers 3

    invoke-direct {p0}, Lb/b/f/c/ag;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lb/b/f/c/x;->a:Lb/b/f/c/ae;

    iput-object p2, p0, Lb/b/f/c/x;->b:Lb/b/f/c/aa;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "nat == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "definingClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected b(Lb/b/f/c/a;)I
    .registers 4

    check-cast p1, Lb/b/f/c/x;

    iget-object v0, p0, Lb/b/f/c/x;->a:Lb/b/f/c/ae;

    iget-object v1, p1, Lb/b/f/c/x;->a:Lb/b/f/c/ae;

    invoke-virtual {v0, v1}, Lb/b/f/c/ae;->a(Lb/b/f/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lb/b/f/c/x;->b:Lb/b/f/c/aa;

    invoke-virtual {v0}, Lb/b/f/c/aa;->a()Lb/b/f/c/ad;

    move-result-object v0

    iget-object p1, p1, Lb/b/f/c/x;->b:Lb/b/f/c/aa;

    invoke-virtual {p1}, Lb/b/f/c/aa;->a()Lb/b/f/c/ad;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/b/f/c/ad;->a(Lb/b/f/c/a;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lb/b/f/c/x;

    iget-object v1, p0, Lb/b/f/c/x;->a:Lb/b/f/c/ae;

    iget-object v2, p1, Lb/b/f/c/x;->a:Lb/b/f/c/ae;

    invoke-virtual {v1, v2}, Lb/b/f/c/ae;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/b/f/c/x;->b:Lb/b/f/c/aa;

    iget-object p1, p1, Lb/b/f/c/x;->b:Lb/b/f/c/aa;

    invoke-virtual {v1, p1}, Lb/b/f/c/aa;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/b/f/c/x;->a:Lb/b/f/c/ae;

    invoke-virtual {v1}, Lb/b/f/c/ae;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/f/c/x;->b:Lb/b/f/c/aa;

    invoke-virtual {v1}, Lb/b/f/c/aa;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lb/b/f/c/x;->a:Lb/b/f/c/ae;

    invoke-virtual {v0}, Lb/b/f/c/ae;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/b/f/c/x;->b:Lb/b/f/c/aa;

    invoke-virtual {v1}, Lb/b/f/c/aa;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final l()Lb/b/f/c/ae;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/x;->a:Lb/b/f/c/ae;

    return-object v0
.end method

.method public final m()Lb/b/f/c/aa;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/x;->b:Lb/b/f/c/aa;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/f/c/x;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/b/f/c/x;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
