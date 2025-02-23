.class public final Lb/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lb/a/i;

.field private final b:Lb/a/z;

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Lb/a/i;Lb/a/z;III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/x;->a:Lb/a/i;

    iput-object p2, p0, Lb/a/x;->b:Lb/a/z;

    iput p3, p0, Lb/a/x;->c:I

    iput p4, p0, Lb/a/x;->d:I

    iput p5, p0, Lb/a/x;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lb/a/z;
    .registers 2

    iget-object v0, p0, Lb/a/x;->b:Lb/a/z;

    return-object v0
.end method

.method public final a(Lb/a/o;)V
    .registers 3

    iget-object v0, p0, Lb/a/x;->b:Lb/a/z;

    invoke-static {v0}, Lb/a/z;->a(Lb/a/z;)I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/o;->e(I)V

    iget v0, p0, Lb/a/x;->c:I

    invoke-virtual {p1, v0}, Lb/a/o;->e(I)V

    iget v0, p0, Lb/a/x;->d:I

    invoke-virtual {p1, v0}, Lb/a/o;->e(I)V

    iget v0, p0, Lb/a/x;->e:I

    invoke-virtual {p1, v0}, Lb/a/o;->e(I)V

    return-void
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lb/a/x;->c:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lb/a/x;->d:I

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lb/a/x;

    iget-object v0, p0, Lb/a/x;->b:Lb/a/z;

    iget-object v1, p1, Lb/a/x;->b:Lb/a/z;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lb/a/x;->b:Lb/a/z;

    iget-object p1, p1, Lb/a/x;->b:Lb/a/z;

    invoke-virtual {v0, p1}, Lb/a/z;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Lb/a/x;->d:I

    iget p1, p1, Lb/a/x;->d:I

    invoke-static {v0, p1}, La/a/a;->a(II)I

    move-result p1

    return p1
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lb/a/x;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lb/a/x;->a:Lb/a/i;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/x;->b:Lb/a/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/x;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/x;->b:Lb/a/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/x;->b:Lb/a/z;

    invoke-virtual {v1}, Lb/a/z;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/a/x;->a:Lb/a/i;

    invoke-virtual {v1}, Lb/a/i;->i()Ljava/util/List;

    move-result-object v1

    :goto_1
    iget v2, p0, Lb/a/x;->d:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lb/a/x;->a:Lb/a/i;

    invoke-virtual {v1}, Lb/a/i;->j()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
