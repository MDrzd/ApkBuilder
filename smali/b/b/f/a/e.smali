.class public final Lb/b/f/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lb/b/f/c/ad;

.field private final b:Lb/b/f/c/a;


# direct methods
.method public constructor <init>(Lb/b/f/c/ad;Lb/b/f/c/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lb/b/f/a/e;->a:Lb/b/f/c/ad;

    iput-object p2, p0, Lb/b/f/a/e;->b:Lb/b/f/c/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lb/b/f/a/e;)I
    .registers 4

    iget-object v0, p0, Lb/b/f/a/e;->a:Lb/b/f/c/ad;

    iget-object v1, p1, Lb/b/f/a/e;->a:Lb/b/f/c/ad;

    invoke-virtual {v0, v1}, Lb/b/f/c/ad;->a(Lb/b/f/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lb/b/f/a/e;->b:Lb/b/f/c/a;

    iget-object p1, p1, Lb/b/f/a/e;->b:Lb/b/f/c/a;

    invoke-virtual {v0, p1}, Lb/b/f/c/a;->a(Lb/b/f/c/a;)I

    move-result p1

    return p1
.end method

.method public final a()Lb/b/f/c/ad;
    .registers 2

    iget-object v0, p0, Lb/b/f/a/e;->a:Lb/b/f/c/ad;

    return-object v0
.end method

.method public final b()Lb/b/f/c/a;
    .registers 2

    iget-object v0, p0, Lb/b/f/a/e;->b:Lb/b/f/c/a;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/b/f/a/e;

    invoke-virtual {p0, p1}, Lb/b/f/a/e;->a(Lb/b/f/a/e;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lb/b/f/a/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lb/b/f/a/e;

    iget-object v0, p0, Lb/b/f/a/e;->a:Lb/b/f/c/ad;

    iget-object v2, p1, Lb/b/f/a/e;->a:Lb/b/f/c/ad;

    invoke-virtual {v0, v2}, Lb/b/f/c/ad;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/f/a/e;->b:Lb/b/f/c/a;

    iget-object p1, p1, Lb/b/f/a/e;->b:Lb/b/f/c/a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lb/b/f/a/e;->a:Lb/b/f/c/ad;

    invoke-virtual {v0}, Lb/b/f/c/ad;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/b/f/a/e;->b:Lb/b/f/c/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/b/f/a/e;->a:Lb/b/f/c/ad;

    invoke-virtual {v1}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/f/a/e;->b:Lb/b/f/c/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
