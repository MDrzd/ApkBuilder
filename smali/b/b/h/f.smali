.class public final Lb/b/h/f;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/b;
.implements Lb/b/h/r;


# instance fields
.field private final a:Z

.field private b:[B

.field private c:I

.field private d:Z

.field private e:Ljava/util/ArrayList;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lb/b/h/f;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    new-array p1, p1, [B

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lb/b/h/f;-><init>([BZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/b/h/f;-><init>([BZ)V

    return-void
.end method

.method private constructor <init>([BZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lb/b/h/f;->a:Z

    iput-object p1, p0, Lb/b/h/f;->b:[B

    const/4 p1, 0x0

    iput p1, p0, Lb/b/h/f;->c:I

    iput-boolean p1, p0, Lb/b/h/f;->d:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    iput p1, p0, Lb/b/h/f;->f:I

    iput p1, p0, Lb/b/h/f;->g:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "data == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static i()V
    .registers 2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "attempt to write past the end"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private i(I)V
    .registers 5

    iget-object v0, p0, Lb/b/h/f;->b:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    shl-int/lit8 p1, p1, 0x1

    add-int/lit16 p1, p1, 0x3e8

    new-array p1, p1, [B

    iget-object v0, p0, Lb/b/h/f;->b:[B

    iget v1, p0, Lb/b/h/f;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lb/b/h/f;->b:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    iget v0, p0, Lb/b/h/f;->c:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lb/a/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected cursor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; actual value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lb/b/h/f;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lb/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lb/b/h/f;->f()V

    iget-object v0, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/h/g;

    invoke-virtual {v0}, Lb/b/h/g;->b()I

    move-result v0

    :goto_0
    iget v1, p0, Lb/b/h/f;->c:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lb/b/h/f;->c:I

    :cond_2
    iget-object v1, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    new-instance v2, Lb/b/h/g;

    add-int/2addr p1, v0

    invoke-direct {v2, v0, p1, p2}, Lb/b/h/g;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(IZ)V
    .registers 6

    iget-object v0, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    iget v0, p0, Lb/b/h/f;->c:I

    if-nez v0, :cond_3

    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    add-int/lit8 v0, p1, -0x7

    div-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, -0x2

    const/16 v1, 0xa

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    const/16 v0, 0xa

    :cond_1
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    iput p1, p0, Lb/b/h/f;->f:I

    iput v0, p0, Lb/b/h/f;->g:I

    iput-boolean p2, p0, Lb/b/h/f;->d:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "annotationWidth < 40"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "cannot enable annotations"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(J)V
    .registers 9

    iget v0, p0, Lb/b/h/f;->c:I

    add-int/lit8 v1, v0, 0x8

    iget-boolean v2, p0, Lb/b/h/f;->a:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lb/b/h/f;->i(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lb/b/h/f;->b:[B

    array-length v2, v2

    if-le v1, v2, :cond_1

    invoke-static {}, Lb/b/h/f;->i()V

    return-void

    :cond_1
    :goto_0
    long-to-int v2, p1

    iget-object v3, p0, Lb/b/h/f;->b:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v0

    iget-object v3, p0, Lb/b/h/f;->b:[B

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget-object v3, p0, Lb/b/h/f;->b:[B

    add-int/lit8 v4, v0, 0x2

    shr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget-object v3, p0, Lb/b/h/f;->b:[B

    add-int/lit8 v4, v0, 0x3

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    const/16 v2, 0x20

    shr-long/2addr p1, v2

    long-to-int p1, p1

    iget-object p2, p0, Lb/b/h/f;->b:[B

    add-int/lit8 v2, v0, 0x4

    int-to-byte v3, p1

    aput-byte v3, p2, v2

    iget-object p2, p0, Lb/b/h/f;->b:[B

    add-int/lit8 v2, v0, 0x5

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    iget-object p2, p0, Lb/b/h/f;->b:[B

    add-int/lit8 v2, v0, 0x6

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    iget-object p2, p0, Lb/b/h/f;->b:[B

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    iput v1, p0, Lb/b/h/f;->c:I

    return-void
.end method

.method public final a(Lb/b/h/c;)V
    .registers 5

    invoke-virtual {p1}, Lb/b/h/c;->a()I

    move-result v0

    iget v1, p0, Lb/b/h/f;->c:I

    add-int/2addr v0, v1

    iget-boolean v2, p0, Lb/b/h/f;->a:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lb/b/h/f;->i(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lb/b/h/f;->b:[B

    array-length v2, v2

    if-le v0, v2, :cond_1

    invoke-static {}, Lb/b/h/f;->i()V

    return-void

    :cond_1
    :goto_0
    iget-object v2, p0, Lb/b/h/f;->b:[B

    invoke-virtual {p1, v2, v1}, Lb/b/h/c;->a([BI)V

    iput v0, p0, Lb/b/h/f;->c:I

    return-void
.end method

.method public final a(Ljava/io/Writer;)V
    .registers 15

    invoke-virtual {p0}, Lb/b/h/f;->g()I

    move-result v0

    iget v1, p0, Lb/b/h/f;->f:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Lb/b/b/a/c;

    const-string v3, "|"

    invoke-direct {v2, p1, v1, v0, v3}, Lb/b/b/a/c;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    invoke-virtual {v2}, Lb/b/b/a/c;->a()Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {v2}, Lb/b/b/a/c;->b()Ljava/io/Writer;

    move-result-object v0

    iget-object v1, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_0
    iget v4, p0, Lb/b/h/f;->c:I

    if-ge v7, v4, :cond_1

    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/h/g;

    invoke-virtual {v4}, Lb/b/h/g;->a()I

    move-result v5

    if-ge v7, v5, :cond_0

    const-string v4, ""

    move v10, v7

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lb/b/h/g;->b()I

    move-result v6

    invoke-virtual {v4}, Lb/b/h/g;->c()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    move v10, v5

    move v5, v6

    :goto_1
    iget-object v7, p0, Lb/b/h/f;->b:[B

    sub-int v9, v5, v10

    iget v11, p0, Lb/b/h/f;->g:I

    const/4 v12, 0x6

    move v8, v10

    invoke-static/range {v7 .. v12}, La/a/a;->a([BIIIII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Lb/b/b/a/c;->c()V

    move v7, v5

    goto :goto_0

    :cond_1
    iget v4, p0, Lb/b/h/f;->c:I

    if-ge v7, v4, :cond_2

    iget-object v4, p0, Lb/b/h/f;->b:[B

    iget v5, p0, Lb/b/h/f;->c:I

    sub-int v6, v5, v7

    iget v8, p0, Lb/b/h/f;->g:I

    const/4 v9, 0x6

    move v5, v7

    invoke-static/range {v4 .. v9}, La/a/a;->a([BIIIII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    :goto_2
    if-ge v3, v1, :cond_3

    iget-object p1, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/h/g;

    invoke-virtual {p1}, Lb/b/h/g;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lb/b/b/a/c;->c()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lb/b/h/f;->f()V

    iget-object v0, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lb/b/h/g;

    iget v2, p0, Lb/b/h/f;->c:I

    invoke-direct {v1, v2, p1}, Lb/b/h/g;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a([B)V
    .registers 7

    array-length v0, p1

    iget v1, p0, Lb/b/h/f;->c:I

    add-int v2, v1, v0

    add-int/lit8 v3, v0, 0x0

    or-int/lit8 v4, v0, 0x0

    or-int/2addr v4, v2

    if-ltz v4, :cond_2

    array-length v4, p1

    if-gt v3, v4, :cond_2

    iget-boolean v3, p0, Lb/b/h/f;->a:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lb/b/h/f;->i(I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lb/b/h/f;->b:[B

    array-length v3, v3

    if-le v2, v3, :cond_1

    invoke-static {}, Lb/b/h/f;->i()V

    return-void

    :cond_1
    :goto_0
    iget-object v3, p0, Lb/b/h/f;->b:[B

    const/4 v4, 0x0

    invoke-static {p1, v4, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lb/b/h/f;->c:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "bytes.length "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; 0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()[B
    .registers 2

    iget-object v0, p0, Lb/b/h/f;->b:[B

    return-object v0
.end method

.method public final b(I)V
    .registers 6

    iget v0, p0, Lb/b/h/f;->c:I

    add-int/lit8 v1, v0, 0x2

    iget-boolean v2, p0, Lb/b/h/f;->a:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lb/b/h/f;->i(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lb/b/h/f;->b:[B

    array-length v2, v2

    if-le v1, v2, :cond_1

    invoke-static {}, Lb/b/h/f;->i()V

    return-void

    :cond_1
    :goto_0
    iget-object v2, p0, Lb/b/h/f;->b:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    iget-object v2, p0, Lb/b/h/f;->b:[B

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    iput v1, p0, Lb/b/h/f;->c:I

    return-void
.end method

.method public final b()[B
    .registers 5

    iget v0, p0, Lb/b/h/f;->c:I

    new-array v0, v0, [B

    iget-object v1, p0, Lb/b/h/f;->b:[B

    iget v2, p0, Lb/b/h/f;->c:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lb/b/h/f;->c:I

    return v0
.end method

.method public final c(I)V
    .registers 7

    iget v0, p0, Lb/b/h/f;->c:I

    add-int/lit8 v1, v0, 0x4

    iget-boolean v2, p0, Lb/b/h/f;->a:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lb/b/h/f;->i(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lb/b/h/f;->b:[B

    array-length v2, v2

    if-le v1, v2, :cond_1

    invoke-static {}, Lb/b/h/f;->i()V

    return-void

    :cond_1
    :goto_0
    iget-object v2, p0, Lb/b/h/f;->b:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    iget-object v2, p0, Lb/b/h/f;->b:[B

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lb/b/h/f;->b:[B

    add-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lb/b/h/f;->b:[B

    add-int/lit8 v0, v0, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    iput v1, p0, Lb/b/h/f;->c:I

    return-void
.end method

.method public final d(I)V
    .registers 5

    iget v0, p0, Lb/b/h/f;->c:I

    add-int/lit8 v1, v0, 0x1

    iget-boolean v2, p0, Lb/b/h/f;->a:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lb/b/h/f;->i(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lb/b/h/f;->b:[B

    array-length v2, v2

    if-le v1, v2, :cond_1

    invoke-static {}, Lb/b/h/f;->i()V

    return-void

    :cond_1
    :goto_0
    iget-object v2, p0, Lb/b/h/f;->b:[B

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    iput v1, p0, Lb/b/h/f;->c:I

    return-void
.end method

.method public final d()Z
    .registers 2

    iget-object v0, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e(I)I
    .registers 3

    iget-boolean v0, p0, Lb/b/h/f;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lb/b/h/f;->c:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lb/b/h/f;->i(I)V

    :cond_0
    iget v0, p0, Lb/b/h/f;->c:I

    invoke-static {p0, p1}, La/a/a;->a(Lb/a/a/b;I)V

    iget p1, p0, Lb/b/h/f;->c:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lb/b/h/f;->d:Z

    return v0
.end method

.method public final f(I)I
    .registers 3

    iget-boolean v0, p0, Lb/b/h/f;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lb/b/h/f;->c:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lb/b/h/f;->i(I)V

    :cond_0
    iget v0, p0, Lb/b/h/f;->c:I

    invoke-static {p0, p1}, La/a/a;->b(Lb/a/a/b;I)V

    iget p1, p0, Lb/b/h/f;->c:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public final f()V
    .registers 3

    iget-object v0, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/h/g;

    iget v1, p0, Lb/b/h/f;->c:I

    invoke-virtual {v0, v1}, Lb/b/h/g;->a(I)V

    :cond_1
    return-void
.end method

.method public final g()I
    .registers 3

    iget v0, p0, Lb/b/h/f;->g:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lb/b/h/f;->g:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/h/f;->f:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final g(I)V
    .registers 5

    if-ltz p1, :cond_2

    iget v0, p0, Lb/b/h/f;->c:I

    add-int/2addr v0, p1

    iget-boolean p1, p0, Lb/b/h/f;->a:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lb/b/h/f;->i(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb/b/h/f;->b:[B

    array-length p1, p1

    if-le v0, p1, :cond_1

    invoke-static {}, Lb/b/h/f;->i()V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lb/b/h/f;->b:[B

    iget v1, p0, Lb/b/h/f;->c:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    iput v0, p0, Lb/b/h/f;->c:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "count < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h()V
    .registers 6

    invoke-virtual {p0}, Lb/b/h/f;->f()V

    iget-object v0, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/h/g;

    invoke-virtual {v1}, Lb/b/h/g;->a()I

    move-result v3

    iget v4, p0, Lb/b/h/f;->c:I

    if-le v3, v4, :cond_0

    iget-object v1, p0, Lb/b/h/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lb/b/h/g;->b()I

    move-result v0

    iget v2, p0, Lb/b/h/f;->c:I

    if-le v0, v2, :cond_1

    iget v0, p0, Lb/b/h/f;->c:I

    invoke-virtual {v1, v0}, Lb/b/h/g;->b(I)V

    :cond_1
    return-void
.end method

.method public final h(I)V
    .registers 5

    add-int/lit8 v0, p1, -0x1

    if-ltz p1, :cond_2

    and-int/2addr p1, v0

    if-nez p1, :cond_2

    iget p1, p0, Lb/b/h/f;->c:I

    add-int/2addr p1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    iget-boolean v0, p0, Lb/b/h/f;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lb/b/h/f;->i(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/h/f;->b:[B

    array-length v0, v0

    if-le p1, v0, :cond_1

    invoke-static {}, Lb/b/h/f;->i()V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lb/b/h/f;->b:[B

    iget v1, p0, Lb/b/h/f;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    iput p1, p0, Lb/b/h/f;->c:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus alignment"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
