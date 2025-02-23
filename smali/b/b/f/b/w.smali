.class public final Lb/b/f/b/w;
.super Lcom/gmail/heagoo/pngeditor/n;


# instance fields
.field private final a:[Lb/b/f/b/r;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb/b/f/b/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/b/f/b/w;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/gmail/heagoo/pngeditor/n;-><init>(Z)V

    new-array p1, p1, [Lb/b/f/b/r;

    iput-object p1, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    iput v0, p0, Lb/b/f/b/w;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)Lb/b/f/b/r;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus reg"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/f/b/n;)Lb/b/f/b/r;
    .registers 6

    iget-object v0, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v3

    invoke-virtual {p1, v3}, Lb/b/f/b/n;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lb/b/f/b/r;)Lb/b/f/b/r;
    .registers 2

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Lb/b/f/b/w;->a(I)Lb/b/f/b/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/f/b/w;)V
    .registers 5

    iget-object v0, p1, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lb/b/f/b/w;->a(I)Lb/b/f/b/r;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lb/b/f/b/w;->d(Lb/b/f/b/r;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lb/b/f/b/w;Z)V
    .registers 8

    invoke-virtual {p0}, Lb/b/f/b/w;->d()V

    iget-object p1, p1, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    iget-object p2, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    array-length p2, p2

    array-length v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, -0x1

    iput v1, p0, Lb/b/f/b/w;->b:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    aget-object v3, p1, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lb/b/f/b/r;->a(Lb/b/f/b/r;Z)Lb/b/f/b/r;

    move-result-object v3

    if-eq v3, v2, :cond_0

    iget-object v2, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, p2, :cond_2

    iget-object p1, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final b(Lb/b/f/b/r;)Lb/b/f/b/r;
    .registers 6

    iget-object v0, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Lb/b/f/b/r;->b(Lb/b/f/b/r;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(I)Lb/b/f/b/w;
    .registers 6

    iget-object v0, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    array-length v0, v0

    new-instance v1, Lb/b/f/b/w;

    add-int v2, v0, p1

    invoke-direct {v1, v2}, Lb/b/f/b/w;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lb/b/f/b/r;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lb/b/f/b/w;->d(Lb/b/f/b/r;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lb/b/f/b/w;->b:I

    iput p1, v1, Lb/b/f/b/w;->b:I

    invoke-virtual {p0}, Lb/b/f/b/w;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lb/b/f/b/w;->b_()V

    :cond_2
    return-object v1
.end method

.method public final c(Lb/b/f/b/r;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result p1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    const/4 p1, -0x1

    iput p1, p0, Lb/b/f/b/w;->b:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus reg"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lb/b/f/b/r;)V
    .registers 7

    invoke-virtual {p0}, Lb/b/f/b/w;->d()V

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lb/b/f/b/w;->b:I

    :try_start_0
    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v0

    iget-object v1, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    aput-object p1, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lez v0, :cond_0

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lb/b/f/b/r;->k()I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    aput-object v1, v4, v3

    :cond_0
    invoke-virtual {p1}, Lb/b/f/b/r;->k()I

    move-result p1

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    add-int/lit8 v0, v0, 0x1

    aput-object v1, p1, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spec.getReg() out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "spec == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    instance-of v0, p1, Lb/b/f/b/w;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lb/b/f/b/w;

    iget-object v0, p1, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    iget-object v2, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    array-length v2, v2

    array-length v3, v0

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lb/b/f/b/w;->g()I

    move-result v3

    invoke-virtual {p1}, Lb/b/f/b/w;->g()I

    move-result p1

    if-eq v3, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-ge p1, v2, :cond_4

    iget-object v3, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    aget-object v3, v3, p1

    aget-object v4, v0, p1

    if-eq v3, v4, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Lb/b/f/b/r;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    return v1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method public final f()I
    .registers 2

    iget-object v0, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    array-length v0, v0

    return v0
.end method

.method public final g()I
    .registers 5

    iget v0, p0, Lb/b/f/b/w;->b:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v2, p0, Lb/b/f/b/w;->b:I

    move v0, v2

    :cond_2
    return v0
.end method

.method public final h()Lb/b/f/b/w;
    .registers 5

    iget-object v0, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    array-length v0, v0

    new-instance v1, Lb/b/f/b/w;

    invoke-direct {v1, v0}, Lb/b/f/b/w;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Lb/b/f/b/w;->d(Lb/b/f/b/r;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lb/b/f/b/w;->b:I

    iput v0, v1, Lb/b/f/b/w;->b:I

    return-object v1
.end method

.method public final hashCode()I
    .registers 6

    iget-object v0, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    aget-object v4, v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lb/b/f/b/r;->hashCode()I

    move-result v4

    :goto_1
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lb/b/f/b/w;->a:[Lb/b/f/b/r;

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    if-eqz v3, :cond_0

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
