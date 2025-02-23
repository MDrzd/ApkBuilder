.class public final Lb/b/h/k;
.super Lcom/gmail/heagoo/pngeditor/n;


# static fields
.field public static final a:Lb/b/h/k;


# instance fields
.field private b:[I

.field private c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb/b/h/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/b/h/k;-><init>(I)V

    sput-object v0, Lb/b/h/k;->a:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->b_()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lb/b/h/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/gmail/heagoo/pngeditor/n;-><init>(Z)V

    :try_start_0
    new-array p1, p1, [I

    iput-object p1, p0, Lb/b/h/k;->b:[I
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    iput p1, p0, Lb/b/h/k;->c:I

    iput-boolean v0, p0, Lb/b/h/k;->d:Z

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(I)Lb/b/h/k;
    .registers 3

    new-instance v0, Lb/b/h/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lb/b/h/k;-><init>(I)V

    invoke-virtual {v0, p0}, Lb/b/h/k;->c(I)V

    invoke-virtual {v0}, Lb/b/h/k;->b_()V

    return-object v0
.end method

.method public static a(II)Lb/b/h/k;
    .registers 4

    new-instance v0, Lb/b/h/k;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lb/b/h/k;-><init>(I)V

    invoke-virtual {v0, p0}, Lb/b/h/k;->c(I)V

    invoke-virtual {v0, p1}, Lb/b/h/k;->c(I)V

    invoke-virtual {v0}, Lb/b/h/k;->b_()V

    return-object v0
.end method

.method private k()V
    .registers 5

    iget v0, p0, Lb/b/h/k;->c:I

    iget-object v1, p0, Lb/b/h/k;->b:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lb/b/h/k;->c:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    iget-object v1, p0, Lb/b/h/k;->b:[I

    iget v2, p0, Lb/b/h/k;->c:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lb/b/h/k;->b:[I

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(I)I
    .registers 3

    iget v0, p0, Lb/b/h/k;->c:I

    if-ge p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lb/b/h/k;->b:[I

    aget p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "n >= size()"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(II)V
    .registers 4

    invoke-virtual {p0}, Lb/b/h/k;->d()V

    iget v0, p0, Lb/b/h/k;->c:I

    if-ge p1, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lb/b/h/k;->b:[I

    aput p2, v0, p1

    const/4 p2, 0x0

    iput-boolean p2, p0, Lb/b/h/k;->d:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "n >= size()"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(I)V
    .registers 5

    invoke-virtual {p0}, Lb/b/h/k;->d()V

    invoke-direct {p0}, Lb/b/h/k;->k()V

    iget-object v0, p0, Lb/b/h/k;->b:[I

    iget v1, p0, Lb/b/h/k;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/b/h/k;->c:I

    aput p1, v0, v1

    iget-boolean v0, p0, Lb/b/h/k;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lb/b/h/k;->c:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lb/b/h/k;->b:[I

    iget v2, p0, Lb/b/h/k;->c:I

    add-int/lit8 v2, v2, -0x2

    aget v0, v0, v2

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lb/b/h/k;->d:Z

    :cond_1
    return-void
.end method

.method public final c(II)V
    .registers 7

    iget v0, p0, Lb/b/h/k;->c:I

    if-gt p1, v0, :cond_3

    invoke-direct {p0}, Lb/b/h/k;->k()V

    iget-object v0, p0, Lb/b/h/k;->b:[I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lb/b/h/k;->c:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lb/b/h/k;->b:[I

    aput p2, v0, p1

    iget v0, p0, Lb/b/h/k;->c:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lb/b/h/k;->c:I

    iget-boolean v0, p0, Lb/b/h/k;->d:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/b/h/k;->b:[I

    add-int/lit8 v3, p1, -0x1

    aget v0, v0, v3

    if-le p2, v0, :cond_1

    :cond_0
    iget v0, p0, Lb/b/h/k;->c:I

    sub-int/2addr v0, v2

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lb/b/h/k;->b:[I

    aget p1, p1, v1

    if-ge p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    iput-boolean v2, p0, Lb/b/h/k;->d:Z

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "n > size()"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(I)V
    .registers 6

    iget v0, p0, Lb/b/h/k;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lb/b/h/k;->b:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lb/b/h/k;->b:[I

    iget v3, p0, Lb/b/h/k;->c:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lb/b/h/k;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lb/b/h/k;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "n >= size()"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(I)V
    .registers 3

    if-ltz p1, :cond_1

    iget v0, p0, Lb/b/h/k;->c:I

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lb/b/h/k;->d()V

    iput p1, p0, Lb/b/h/k;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newSize > size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newSize < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lb/b/h/k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lb/b/h/k;

    iget-boolean v1, p0, Lb/b/h/k;->d:Z

    iget-boolean v3, p1, Lb/b/h/k;->d:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lb/b/h/k;->c:I

    iget v3, p1, Lb/b/h/k;->c:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lb/b/h/k;->c:I

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lb/b/h/k;->b:[I

    aget v3, v3, v1

    iget-object v4, p1, Lb/b/h/k;->b:[I

    aget v4, v4, v1

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lb/b/h/k;->c:I

    return v0
.end method

.method public final f(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/h/k;->g(I)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lb/b/h/k;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lb/b/h/k;->b(I)I

    move-result v0

    return v0
.end method

.method public final g(I)I
    .registers 7

    iget v0, p0, Lb/b/h/k;->c:I

    iget-boolean v1, p0, Lb/b/h/k;->d:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lb/b/h/k;->b:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    neg-int p1, v0

    return p1

    :cond_2
    const/4 v1, -0x1

    move v1, v0

    const/4 v2, -0x1

    :goto_1
    add-int/lit8 v3, v2, 0x1

    if-le v1, v3, :cond_4

    sub-int v3, v1, v2

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v2

    iget-object v4, p0, Lb/b/h/k;->b:[I

    aget v4, v4, v3

    if-gt p1, v4, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    if-eq v1, v0, :cond_6

    iget-object v0, p0, Lb/b/h/k;->b:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_5

    return v1

    :cond_5
    neg-int p1, v1

    :goto_2
    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_6
    neg-int p1, v0

    goto :goto_2
.end method

.method public final h()I
    .registers 3

    invoke-virtual {p0}, Lb/b/h/k;->d()V

    iget v0, p0, Lb/b/h/k;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lb/b/h/k;->b(I)I

    move-result v0

    iget v1, p0, Lb/b/h/k;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lb/b/h/k;->c:I

    return v0
.end method

.method public final h(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/h/k;->f(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lb/b/h/k;->c:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lb/b/h/k;->b:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final i()Lb/b/h/k;
    .registers 5

    iget v0, p0, Lb/b/h/k;->c:I

    new-instance v1, Lb/b/h/k;

    invoke-direct {v1, v0}, Lb/b/h/k;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lb/b/h/k;->b:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Lb/b/h/k;->c(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final j()V
    .registers 4

    invoke-virtual {p0}, Lb/b/h/k;->d()V

    iget-boolean v0, p0, Lb/b/h/k;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/h/k;->b:[I

    const/4 v1, 0x0

    iget v2, p0, Lb/b/h/k;->c:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/h/k;->d:Z

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lb/b/h/k;->c:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lb/b/h/k;->c:I

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lb/b/h/k;->b:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
