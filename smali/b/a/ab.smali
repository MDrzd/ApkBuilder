.class public final Lb/a/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lb/a/i;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Lb/a/i;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/ab;->a:Lb/a/i;

    iput p2, p0, Lb/a/ab;->b:I

    iput p3, p0, Lb/a/ab;->c:I

    iput p4, p0, Lb/a/ab;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/a/ab;->b:I

    return v0
.end method

.method public final a(Lb/a/o;)V
    .registers 3

    iget v0, p0, Lb/a/ab;->b:I

    invoke-virtual {p1, v0}, Lb/a/o;->f(I)V

    iget v0, p0, Lb/a/ab;->c:I

    invoke-virtual {p1, v0}, Lb/a/o;->f(I)V

    iget v0, p0, Lb/a/ab;->d:I

    invoke-virtual {p1, v0}, Lb/a/o;->f(I)V

    return-void
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lb/a/ab;->c:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lb/a/ab;->d:I

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lb/a/ab;

    iget v0, p0, Lb/a/ab;->c:I

    iget v1, p1, Lb/a/ab;->c:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lb/a/ab;->c:I

    iget p1, p1, Lb/a/ab;->c:I

    :goto_0
    invoke-static {v0, p1}, La/a/a;->a(II)I

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Lb/a/ab;->d:I

    iget p1, p1, Lb/a/ab;->d:I

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lb/a/ab;->a:Lb/a/i;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lb/a/ab;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/ab;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/ab;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/ab;->a:Lb/a/i;

    invoke-virtual {v1}, Lb/a/i;->e()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lb/a/ab;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/ab;->a:Lb/a/i;

    invoke-virtual {v1}, Lb/a/i;->g()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lb/a/ab;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/ab;->a:Lb/a/i;

    iget v2, p0, Lb/a/ab;->d:I

    invoke-virtual {v1, v2}, Lb/a/i;->b(I)Lb/a/ae;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
