.class public final Lb/b/a/b/y;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/f/d/d;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    iput p1, p0, Lb/b/a/b/y;->a:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "subroutineAddress < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lb/b/f/d/c;
    .registers 2

    sget-object v0, Lb/b/f/d/c;->k:Lb/b/f/d/c;

    return-object v0
.end method

.method public final b()Lb/b/f/d/d;
    .registers 1

    return-object p0
.end method

.method public final c()I
    .registers 2

    sget-object v0, Lb/b/f/d/c;->k:Lb/b/f/d/c;

    invoke-virtual {v0}, Lb/b/f/d/c;->c()I

    move-result v0

    return v0
.end method

.method public final d()I
    .registers 2

    sget-object v0, Lb/b/f/d/c;->k:Lb/b/f/d/c;

    invoke-virtual {v0}, Lb/b/f/d/c;->d()I

    move-result v0

    return v0
.end method

.method public final e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lb/b/a/b/y;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lb/b/a/b/y;->a:I

    check-cast p1, Lb/b/a/b/y;

    iget p1, p1, Lb/b/a/b/y;->a:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lb/b/a/b/y;->a:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lb/b/a/b/y;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lb/b/a/b/y;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<addr:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lb/b/a/b/y;->a:I

    invoke-static {v1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
