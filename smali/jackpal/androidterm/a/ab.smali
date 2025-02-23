.class final Ljackpal/androidterm/a/ab;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:[Ljackpal/androidterm/a/n;

.field private c:[Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:[C

.field private k:Ljackpal/androidterm/a/n;


# direct methods
.method public constructor <init>(IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/a/ab;->g:I

    iput v0, p0, Ljackpal/androidterm/a/ab;->h:I

    iput v0, p0, Ljackpal/androidterm/a/ab;->i:I

    iput p1, p0, Ljackpal/androidterm/a/ab;->f:I

    iput p2, p0, Ljackpal/androidterm/a/ab;->d:I

    iput p3, p0, Ljackpal/androidterm/a/ab;->e:I

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    new-array p1, p2, [Ljackpal/androidterm/a/n;

    iput-object p1, p0, Ljackpal/androidterm/a/ab;->b:[Ljackpal/androidterm/a/n;

    new-array p1, p2, [Z

    iput-object p1, p0, Ljackpal/androidterm/a/ab;->c:[Z

    new-instance p1, Ljackpal/androidterm/a/n;

    iget p2, p0, Ljackpal/androidterm/a/ab;->f:I

    invoke-direct {p1, p4, p2}, Ljackpal/androidterm/a/n;-><init>(II)V

    iput-object p1, p0, Ljackpal/androidterm/a/ab;->k:Ljackpal/androidterm/a/n;

    iput p4, p0, Ljackpal/androidterm/a/ab;->h:I

    return-void
.end method

.method public static a(CC)I
    .registers 2

    invoke-static {p0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    invoke-static {p0}, Ljackpal/androidterm/a/ab;->d(I)I

    move-result p0

    return p0
.end method

.method public static a([CI)I
    .registers 4

    aget-char v0, p0, p1

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    aget-char p0, p0, p1

    invoke-static {v0, p0}, Ljackpal/androidterm/a/ab;->a(CC)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Ljackpal/androidterm/a/ab;->d(I)I

    move-result p0

    return p0
.end method

.method private a(II)[C
    .registers 7

    new-array v0, p2, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    const/16 v3, 0x20

    aput-char v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    aput-object v0, v2, p1

    iget-object v2, p0, Ljackpal/androidterm/a/ab;->b:[Ljackpal/androidterm/a/n;

    aget-object v2, v2, p1

    if-nez v2, :cond_1

    iget-object v2, p0, Ljackpal/androidterm/a/ab;->b:[Ljackpal/androidterm/a/n;

    new-instance v3, Ljackpal/androidterm/a/n;

    invoke-direct {v3, v1, p2}, Ljackpal/androidterm/a/n;-><init>(II)V

    aput-object v3, v2, p1

    :cond_1
    return-object v0
.end method

.method private a(IIIZ)[C
    .registers 9

    iget v0, p0, Ljackpal/androidterm/a/ab;->g:I

    neg-int v0, v0

    if-lt p1, v0, :cond_b

    iget v0, p0, Ljackpal/androidterm/a/ab;->e:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_b

    iget v0, p0, Ljackpal/androidterm/a/ab;->f:I

    invoke-direct {p0, p1}, Ljackpal/androidterm/a/ab;->h(I)I

    move-result p1

    iget-object v1, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1

    instance-of v1, v1, [C

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-nez p2, :cond_1

    if-ne p3, v0, :cond_1

    iget-object p2, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    aget-object p1, p2, p1

    check-cast p1, [C

    return-object p1

    :cond_1
    iget-object p4, p0, Ljackpal/androidterm/a/ab;->j:[C

    if-eqz p4, :cond_2

    iget-object p4, p0, Ljackpal/androidterm/a/ab;->j:[C

    array-length p4, p4

    add-int/lit8 v1, v0, 0x1

    if-ge p4, v1, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    new-array p4, v0, [C

    iput-object p4, p0, Ljackpal/androidterm/a/ab;->j:[C

    :cond_3
    sub-int/2addr p3, p2

    iget-object p4, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    aget-object p1, p4, p1

    iget-object p4, p0, Ljackpal/androidterm/a/ab;->j:[C

    invoke-static {p1, p2, p4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Ljackpal/androidterm/a/ab;->j:[C

    aput-char v2, p1, p3

    iget-object p1, p0, Ljackpal/androidterm/a/ab;->j:[C

    return-object p1

    :cond_4
    iget-object v1, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    aget-object p1, v1, p1

    check-cast p1, Ljackpal/androidterm/a/j;

    invoke-virtual {p1}, Ljackpal/androidterm/a/j;->b()[C

    move-result-object v1

    if-nez p2, :cond_6

    if-ne p3, v0, :cond_6

    invoke-virtual {p1}, Ljackpal/androidterm/a/j;->a()I

    move-result p1

    array-length p2, v1

    if-ge p1, p2, :cond_5

    aput-char v2, v1, p1

    :cond_5
    return-object v1

    :cond_6
    invoke-virtual {p1, p2}, Ljackpal/androidterm/a/j;->a(I)I

    move-result p2

    if-ge p3, v0, :cond_7

    invoke-virtual {p1, p3}, Ljackpal/androidterm/a/j;->a(I)I

    move-result v3

    if-nez p4, :cond_8

    if-lez p3, :cond_8

    add-int/lit8 v0, v0, -0x1

    if-ge p3, v0, :cond_8

    add-int/lit8 p4, p3, -0x1

    invoke-virtual {p1, p4}, Ljackpal/androidterm/a/j;->a(I)I

    move-result p4

    if-ne v3, p4, :cond_8

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Ljackpal/androidterm/a/j;->a(I)I

    move-result v3

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljackpal/androidterm/a/j;->a()I

    move-result v3

    :cond_8
    :goto_0
    sub-int/2addr v3, p2

    iget-object p1, p0, Ljackpal/androidterm/a/ab;->j:[C

    if-eqz p1, :cond_9

    iget-object p1, p0, Ljackpal/androidterm/a/ab;->j:[C

    array-length p1, p1

    add-int/lit8 p3, v3, 0x1

    if-ge p1, p3, :cond_a

    :cond_9
    add-int/lit8 p1, v3, 0x1

    new-array p1, p1, [C

    iput-object p1, p0, Ljackpal/androidterm/a/ab;->j:[C

    :cond_a
    iget-object p1, p0, Ljackpal/androidterm/a/ab;->j:[C

    invoke-static {v1, p2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Ljackpal/androidterm/a/ab;->j:[C

    aput-char v2, p1, v3

    iget-object p1, p0, Ljackpal/androidterm/a/ab;->j:[C

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private b(II)Ljackpal/androidterm/a/j;
    .registers 7

    new-instance v0, Ljackpal/androidterm/a/j;

    invoke-direct {v0, p2}, Ljackpal/androidterm/a/j;-><init>(I)V

    iget-object v1, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    aput-object v0, v1, p1

    iget-object v1, p0, Ljackpal/androidterm/a/ab;->b:[Ljackpal/androidterm/a/n;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljackpal/androidterm/a/ab;->b:[Ljackpal/androidterm/a/n;

    new-instance v2, Ljackpal/androidterm/a/n;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p2}, Ljackpal/androidterm/a/n;-><init>(II)V

    aput-object v2, v1, p1

    :cond_0
    return-object v0
.end method

.method private b(IIIZ)Ljackpal/androidterm/a/n;
    .registers 9

    iget v0, p0, Ljackpal/androidterm/a/ab;->g:I

    neg-int v0, v0

    if-lt p1, v0, :cond_4

    iget v0, p0, Ljackpal/androidterm/a/ab;->e:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_4

    invoke-direct {p0, p1}, Ljackpal/androidterm/a/ab;->h(I)I

    move-result p1

    iget-object v0, p0, Ljackpal/androidterm/a/ab;->b:[Ljackpal/androidterm/a/n;

    aget-object v0, v0, p1

    iget-object v1, p0, Ljackpal/androidterm/a/ab;->k:Ljackpal/androidterm/a/n;

    if-eqz v0, :cond_3

    iget v2, p0, Ljackpal/androidterm/a/ab;->f:I

    if-nez p4, :cond_1

    iget-object p4, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    aget-object p4, p4, p1

    if-eqz p4, :cond_1

    iget-object p4, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    aget-object p4, p4, p1

    instance-of p4, p4, Ljackpal/androidterm/a/j;

    if-eqz p4, :cond_1

    iget-object p4, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    aget-object p1, p4, p1

    check-cast p1, Ljackpal/androidterm/a/j;

    if-lez p2, :cond_0

    add-int/lit8 p4, p2, -0x1

    invoke-virtual {p1, p4}, Ljackpal/androidterm/a/j;->a(I)I

    move-result p4

    invoke-virtual {p1, p2}, Ljackpal/androidterm/a/j;->a(I)I

    move-result v3

    if-ne p4, v3, :cond_0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    add-int/lit8 p4, v2, -0x1

    if-ge p3, p4, :cond_1

    add-int/lit8 p4, p3, 0x1

    invoke-virtual {p1, p4}, Ljackpal/androidterm/a/j;->a(I)I

    move-result v3

    invoke-virtual {p1, p3}, Ljackpal/androidterm/a/j;->a(I)I

    move-result p1

    if-ne v3, p1, :cond_1

    move p3, p4

    :cond_1
    if-nez p2, :cond_2

    if-ne p3, v2, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x0

    sub-int/2addr p3, p2

    invoke-virtual {v0, p2, v1, p1, p3}, Ljackpal/androidterm/a/n;->a(ILjackpal/androidterm/a/n;II)V

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static d(I)I
    .registers 6

    const/4 v0, 0x1

    const/16 v1, 0x1f

    if-le p0, v1, :cond_0

    const/16 v1, 0x7f

    if-ge p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x1b

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    const/16 v1, 0x1160

    const/16 v3, 0x10

    const/4 v4, 0x2

    if-lt p0, v1, :cond_2

    const/16 v1, 0x11ff

    if-le p0, v1, :cond_3

    goto :goto_0

    :sswitch_0
    return v2

    :cond_2
    :goto_0
    const v1, 0xd7b0

    if-lt p0, v1, :cond_5

    const v1, 0xd7ff

    if-gt p0, v1, :cond_5

    :cond_3
    sget p0, Ljackpal/androidterm/a/a/b;->a:I

    if-lt p0, v3, :cond_4

    return v2

    :cond_4
    return v4

    :cond_5
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    if-ne v1, v0, :cond_7

    int-to-char p0, p0

    invoke-static {p0}, Ljackpal/androidterm/a/a/a;->a(C)I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_6

    const/4 v1, 0x5

    if-eq p0, v1, :cond_6

    goto :goto_1

    :cond_6
    return v4

    :cond_7
    shr-int/2addr p0, v3

    and-int/lit8 p0, p0, 0xf

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v4

    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private d(III)V
    .registers 9

    iget p3, p0, Ljackpal/androidterm/a/ab;->d:I

    add-int/lit8 v0, p1, 0x1

    if-ltz v0, :cond_0

    rem-int/2addr v0, p3

    goto :goto_0

    :cond_0
    add-int v0, p3, p1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    add-int v1, p1, p2

    if-gt v1, p3, :cond_1

    add-int v1, v0, p2

    if-gt v1, p3, :cond_1

    iget-object p3, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    invoke-static {p3, p1, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p3, p0, Ljackpal/androidterm/a/ab;->b:[Ljackpal/androidterm/a/n;

    invoke-static {p3, p1, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p3, p0, Ljackpal/androidterm/a/ab;->c:[Z

    invoke-static {p3, p1, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_2

    iget-object v1, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    add-int v2, v0, p2

    rem-int/2addr v2, p3

    iget-object v3, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    add-int v4, p1, p2

    rem-int/2addr v4, p3

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    iget-object v1, p0, Ljackpal/androidterm/a/ab;->b:[Ljackpal/androidterm/a/n;

    iget-object v3, p0, Ljackpal/androidterm/a/ab;->b:[Ljackpal/androidterm/a/n;

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    iget-object v1, p0, Ljackpal/androidterm/a/ab;->c:[Z

    iget-object v3, p0, Ljackpal/androidterm/a/ab;->c:[Z

    aget-boolean v3, v3, v4

    aput-boolean v3, v1, v2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private e(III)Z
    .registers 9

    iget v0, p0, Ljackpal/androidterm/a/ab;->e:I

    if-ge p2, v0, :cond_6

    iget v0, p0, Ljackpal/androidterm/a/ab;->f:I

    if-ge p1, v0, :cond_6

    invoke-direct {p0, p2}, Ljackpal/androidterm/a/ab;->h(I)I

    move-result p2

    iget-object v0, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-static {p3}, Ljackpal/androidterm/a/ab;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ljackpal/androidterm/a/ab;->f:I

    invoke-direct {p0, p2, v0}, Ljackpal/androidterm/a/ab;->a(II)[C

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Ljackpal/androidterm/a/ab;->f:I

    invoke-direct {p0, p2, v0}, Ljackpal/androidterm/a/ab;->b(II)Ljackpal/androidterm/a/j;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iget-object v4, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    aget-object v4, v4, p2

    instance-of v4, v4, [C

    if-eqz v4, :cond_5

    iget-object v4, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    aget-object v4, v4, p2

    check-cast v4, [C

    if-ne v0, v2, :cond_3

    invoke-static {p3}, Ljackpal/androidterm/a/ab;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    if-ne v0, v3, :cond_4

    int-to-char p2, p3

    aput-char p2, v4, p1

    return v3

    :cond_4
    iget-object v0, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    new-instance v1, Ljackpal/androidterm/a/j;

    invoke-direct {v1, v4}, Ljackpal/androidterm/a/j;-><init>([C)V

    aput-object v1, v0, p2

    :cond_5
    iget-object v0, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    aget-object p2, v0, p2

    check-cast p2, Ljackpal/androidterm/a/j;

    invoke-virtual {p2, p1, p3}, Ljackpal/androidterm/a/j;->a(II)V

    return v3

    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "illegal arguments! "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Ljackpal/androidterm/a/ab;->e:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Ljackpal/androidterm/a/ab;->f:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UnicodeTranscript"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private h(I)I
    .registers 4

    iget v0, p0, Ljackpal/androidterm/a/ab;->g:I

    neg-int v0, v0

    if-lt p1, v0, :cond_2

    iget v0, p0, Ljackpal/androidterm/a/ab;->e:I

    if-gt p1, v0, :cond_2

    if-ltz p1, :cond_0

    iget v0, p0, Ljackpal/androidterm/a/ab;->i:I

    add-int/2addr v0, p1

    iget p1, p0, Ljackpal/androidterm/a/ab;->d:I

    rem-int/2addr v0, p1

    return v0

    :cond_0
    neg-int v0, p1

    iget v1, p0, Ljackpal/androidterm/a/ab;->i:I

    if-le v0, v1, :cond_1

    iget v0, p0, Ljackpal/androidterm/a/ab;->d:I

    iget v1, p0, Ljackpal/androidterm/a/ab;->i:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0

    :cond_1
    iget v0, p0, Ljackpal/androidterm/a/ab;->i:I

    add-int/2addr v0, p1

    return v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "externalToInternalRow "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Ljackpal/androidterm/a/ab;->e:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Ljackpal/androidterm/a/ab;->g:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnicodeTranscript"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static i(I)Z
    .registers 3

    invoke-static {p0}, Ljackpal/androidterm/a/ab;->d(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Ljackpal/androidterm/a/ab;->h:I

    return v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Ljackpal/androidterm/a/ab;->h:I

    return-void
.end method

.method public final a(III)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    add-int/lit8 v4, v2, -0x1

    if-gt v1, v4, :cond_5

    if-ltz v1, :cond_4

    iget v5, v0, Ljackpal/androidterm/a/ab;->e:I

    if-gt v2, v5, :cond_3

    iget v5, v0, Ljackpal/androidterm/a/ab;->e:I

    iget v6, v0, Ljackpal/androidterm/a/ab;->d:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v1, :cond_1

    if-ne v2, v5, :cond_1

    iget v1, v0, Ljackpal/androidterm/a/ab;->i:I

    add-int/2addr v1, v9

    rem-int/2addr v1, v6

    iput v1, v0, Ljackpal/androidterm/a/ab;->i:I

    iget v1, v0, Ljackpal/androidterm/a/ab;->g:I

    sub-int/2addr v6, v5

    if-ge v1, v6, :cond_0

    iget v1, v0, Ljackpal/androidterm/a/ab;->g:I

    add-int/2addr v1, v9

    iput v1, v0, Ljackpal/androidterm/a/ab;->g:I

    :cond_0
    invoke-direct {v0, v4}, Ljackpal/androidterm/a/ab;->h(I)I

    move-result v1

    iget-object v2, v0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    aput-object v8, v2, v1

    iget-object v2, v0, Ljackpal/androidterm/a/ab;->b:[Ljackpal/androidterm/a/n;

    new-instance v4, Ljackpal/androidterm/a/n;

    iget v5, v0, Ljackpal/androidterm/a/ab;->f:I

    invoke-direct {v4, v3, v5}, Ljackpal/androidterm/a/n;-><init>(II)V

    aput-object v4, v2, v1

    iget-object v2, v0, Ljackpal/androidterm/a/ab;->c:[Z

    aput-boolean v7, v2, v1

    return-void

    :cond_1
    iget v10, v0, Ljackpal/androidterm/a/ab;->i:I

    invoke-direct/range {p0 .. p1}, Ljackpal/androidterm/a/ab;->h(I)I

    move-result v11

    invoke-direct {v0, v2}, Ljackpal/androidterm/a/ab;->h(I)I

    move-result v12

    iget-object v13, v0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    iget-object v14, v0, Ljackpal/androidterm/a/ab;->b:[Ljackpal/androidterm/a/n;

    iget-object v15, v0, Ljackpal/androidterm/a/ab;->c:[Z

    aget-object v16, v13, v11

    aget-object v17, v14, v11

    aget-boolean v11, v15, v11

    invoke-direct {v0, v10, v1, v9}, Ljackpal/androidterm/a/ab;->d(III)V

    sub-int v1, v5, v2

    invoke-direct {v0, v12, v1, v9}, Ljackpal/androidterm/a/ab;->d(III)V

    aput-object v16, v13, v10

    aput-object v17, v14, v10

    aput-boolean v11, v15, v10

    add-int/2addr v10, v9

    rem-int/2addr v10, v6

    iput v10, v0, Ljackpal/androidterm/a/ab;->i:I

    iget v1, v0, Ljackpal/androidterm/a/ab;->g:I

    sub-int/2addr v6, v5

    if-ge v1, v6, :cond_2

    iget v1, v0, Ljackpal/androidterm/a/ab;->g:I

    add-int/2addr v1, v9

    iput v1, v0, Ljackpal/androidterm/a/ab;->g:I

    :cond_2
    invoke-direct {v0, v4}, Ljackpal/androidterm/a/ab;->h(I)I

    move-result v1

    aput-object v8, v13, v1

    new-instance v2, Ljackpal/androidterm/a/n;

    iget v4, v0, Ljackpal/androidterm/a/ab;->f:I

    invoke-direct {v2, v3, v4}, Ljackpal/androidterm/a/n;-><init>(II)V

    aput-object v2, v14, v1

    aput-boolean v7, v15, v1

    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public final a(IIIIII)V
    .registers 32

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    if-ltz v8, :cond_d

    add-int v14, v8, v10

    iget v0, v7, Ljackpal/androidterm/a/ab;->f:I

    if-gt v14, v0, :cond_d

    if-ltz v9, :cond_d

    add-int v0, v9, v11

    iget v1, v7, Ljackpal/androidterm/a/ab;->e:I

    if-gt v0, v1, :cond_d

    if-ltz v12, :cond_d

    add-int v0, v12, v10

    iget v1, v7, Ljackpal/androidterm/a/ab;->f:I

    if-gt v0, v1, :cond_d

    if-ltz v13, :cond_d

    add-int v0, v13, v11

    iget v1, v7, Ljackpal/androidterm/a/ab;->e:I

    if-gt v0, v1, :cond_d

    iget-object v15, v7, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    iget-object v6, v7, Ljackpal/androidterm/a/ab;->b:[Ljackpal/androidterm/a/n;

    const/16 v16, 0x0

    if-le v9, v13, :cond_6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v11, :cond_5

    add-int v0, v9, v4

    invoke-direct {v7, v0}, Ljackpal/androidterm/a/ab;->h(I)I

    move-result v1

    add-int v2, v13, v4

    invoke-direct {v7, v2}, Ljackpal/androidterm/a/ab;->h(I)I

    move-result v3

    aget-object v5, v15, v1

    instance-of v5, v5, [C

    if-eqz v5, :cond_0

    aget-object v5, v15, v3

    instance-of v5, v5, [C

    if-eqz v5, :cond_0

    aget-object v0, v15, v1

    aget-object v2, v15, v3

    invoke-static {v0, v8, v2, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v20, v4

    move-object/from16 v17, v6

    move/from16 v21, v14

    move-object/from16 v22, v15

    goto/16 :goto_4

    :cond_0
    const/4 v5, 0x1

    invoke-direct {v7, v0, v8, v14, v5}, Ljackpal/androidterm/a/ab;->a(IIIZ)[C

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v17, 0x1

    const/16 v18, 0x20

    iget v3, v7, Ljackpal/androidterm/a/ab;->h:I

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v19, v3

    move/from16 v3, p3

    move/from16 v20, v4

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v17, v6

    move/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Ljackpal/androidterm/a/ab;->b(IIIIII)V

    move/from16 v21, v14

    move-object/from16 v22, v15

    goto :goto_5

    :cond_1
    move/from16 v20, v4

    move-object/from16 v17, v6

    iget v4, v7, Ljackpal/androidterm/a/ab;->f:I

    move/from16 v21, v14

    move-object/from16 v22, v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_1
    array-length v15, v0

    if-ge v5, v15, :cond_4

    aget-char v15, v0, v5

    if-eqz v15, :cond_4

    add-int v15, v12, v6

    if-ge v15, v4, :cond_4

    aget-char v18, v0, v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v18

    if-eqz v18, :cond_2

    aget-char v14, v0, v5

    move/from16 v23, v4

    goto :goto_3

    :cond_2
    aget-char v18, v0, v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v18

    if-eqz v18, :cond_3

    move/from16 v23, v4

    aget-char v4, v0, v5

    invoke-static {v14, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    invoke-direct {v7, v15, v2, v4}, Ljackpal/androidterm/a/ab;->e(III)Z

    :goto_2
    invoke-static {v4}, Ljackpal/androidterm/a/ab;->d(I)I

    move-result v4

    add-int/2addr v6, v4

    goto :goto_3

    :cond_3
    move/from16 v23, v4

    aget-char v4, v0, v5

    invoke-direct {v7, v15, v2, v4}, Ljackpal/androidterm/a/ab;->e(III)Z

    aget-char v4, v0, v5

    goto :goto_2

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v23

    goto :goto_1

    :cond_4
    :goto_4
    aget-object v0, v17, v1

    aget-object v1, v17, v3

    invoke-virtual {v0, v8, v1, v12, v10}, Ljackpal/androidterm/a/n;->a(ILjackpal/androidterm/a/n;II)V

    :goto_5
    add-int/lit8 v4, v20, 0x1

    move-object/from16 v6, v17

    move/from16 v14, v21

    move-object/from16 v15, v22

    goto/16 :goto_0

    :cond_5
    return-void

    :cond_6
    move-object/from16 v17, v6

    move/from16 v21, v14

    move-object/from16 v22, v15

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v11, :cond_c

    add-int/lit8 v14, v0, 0x1

    sub-int v0, v11, v14

    add-int v1, v9, v0

    invoke-direct {v7, v1}, Ljackpal/androidterm/a/ab;->h(I)I

    move-result v2

    add-int v3, v13, v0

    invoke-direct {v7, v3}, Ljackpal/androidterm/a/ab;->h(I)I

    move-result v0

    aget-object v4, v22, v2

    instance-of v4, v4, [C

    if-eqz v4, :cond_7

    aget-object v4, v22, v0

    instance-of v4, v4, [C

    if-eqz v4, :cond_7

    aget-object v1, v22, v2

    aget-object v3, v22, v0

    invoke-static {v1, v8, v3, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v15, v21

    const/16 v19, 0x1

    goto/16 :goto_a

    :cond_7
    move/from16 v15, v21

    const/4 v6, 0x1

    invoke-direct {v7, v1, v8, v15, v6}, Ljackpal/androidterm/a/ab;->a(IIIZ)[C

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v4, 0x1

    const/16 v5, 0x20

    iget v2, v7, Ljackpal/androidterm/a/ab;->h:I

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, p3

    const/16 v19, 0x1

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Ljackpal/androidterm/a/ab;->b(IIIIII)V

    goto :goto_b

    :cond_8
    const/16 v19, 0x1

    iget v4, v7, Ljackpal/androidterm/a/ab;->f:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_7
    array-length v11, v1

    if-ge v5, v11, :cond_b

    aget-char v11, v1, v5

    if-eqz v11, :cond_b

    add-int v11, v12, v6

    if-ge v11, v4, :cond_b

    aget-char v18, v1, v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v18

    if-eqz v18, :cond_9

    aget-char v9, v1, v5

    move/from16 v24, v4

    goto :goto_9

    :cond_9
    aget-char v18, v1, v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v18

    if-eqz v18, :cond_a

    move/from16 v24, v4

    aget-char v4, v1, v5

    invoke-static {v9, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    invoke-direct {v7, v11, v3, v4}, Ljackpal/androidterm/a/ab;->e(III)Z

    :goto_8
    invoke-static {v4}, Ljackpal/androidterm/a/ab;->d(I)I

    move-result v4

    add-int/2addr v6, v4

    goto :goto_9

    :cond_a
    move/from16 v24, v4

    aget-char v4, v1, v5

    invoke-direct {v7, v11, v3, v4}, Ljackpal/androidterm/a/ab;->e(III)Z

    aget-char v4, v1, v5

    goto :goto_8

    :goto_9
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v24

    goto :goto_7

    :cond_b
    :goto_a
    aget-object v1, v17, v2

    aget-object v0, v17, v0

    invoke-virtual {v1, v8, v0, v12, v10}, Ljackpal/androidterm/a/n;->a(ILjackpal/androidterm/a/n;II)V

    :goto_b
    move v0, v14

    move/from16 v21, v15

    move/from16 v9, p2

    move/from16 v11, p4

    goto/16 :goto_6

    :cond_c
    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final a(IIII)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Ljackpal/androidterm/a/ab;->e(III)Z

    invoke-direct {p0, p2}, Ljackpal/androidterm/a/ab;->h(I)I

    move-result p2

    iget-object p3, p0, Ljackpal/androidterm/a/ab;->b:[Ljackpal/androidterm/a/n;

    aget-object p2, p3, p2

    invoke-virtual {p2, p1, p4}, Ljackpal/androidterm/a/n;->a(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(II[I)Z
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Ljackpal/androidterm/a/ab;->f:I

    const/4 v3, 0x0

    move/from16 v4, p1

    if-ne v4, v2, :cond_e

    iget v2, v0, Ljackpal/androidterm/a/ab;->d:I

    if-le v1, v2, :cond_0

    goto/16 :goto_9

    :cond_0
    iget v2, v0, Ljackpal/androidterm/a/ab;->e:I

    iget v4, v0, Ljackpal/androidterm/a/ab;->g:I

    sub-int v5, v2, v1

    neg-int v6, v4

    const/4 v7, 0x1

    if-ge v5, v6, :cond_2

    iget-object v8, v0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    iget-object v9, v0, Ljackpal/androidterm/a/ab;->b:[Ljackpal/androidterm/a/n;

    iget-object v10, v0, Ljackpal/androidterm/a/ab;->c:[Z

    iget v11, v0, Ljackpal/androidterm/a/ab;->i:I

    iget v12, v0, Ljackpal/androidterm/a/ab;->d:I

    const/4 v13, 0x0

    :goto_0
    sub-int v14, v4, v5

    if-ge v13, v14, :cond_1

    add-int v14, v11, v2

    add-int/2addr v14, v13

    rem-int/2addr v14, v12

    const/4 v15, 0x0

    aput-object v15, v8, v14

    aput-object v15, v9, v14

    aput-boolean v3, v10, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_5

    :cond_2
    if-lez v5, :cond_8

    if-eqz p3, :cond_8

    aget v4, p3, v7

    sub-int/2addr v2, v7

    if-eq v4, v2, :cond_8

    iget-object v4, v0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    :goto_1
    aget v6, p3, v7

    if-le v2, v6, :cond_8

    invoke-direct {v0, v2}, Ljackpal/androidterm/a/ab;->h(I)I

    move-result v6

    aget-object v8, v4, v6

    if-nez v8, :cond_3

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_7

    goto :goto_5

    :cond_3
    aget-object v8, v4, v6

    instance-of v8, v8, [C

    if-eqz v8, :cond_4

    aget-object v6, v4, v6

    check-cast v6, [C

    goto :goto_2

    :cond_4
    aget-object v6, v4, v6

    check-cast v6, Ljackpal/androidterm/a/j;

    invoke-virtual {v6}, Ljackpal/androidterm/a/j;->b()[C

    move-result-object v6

    :goto_2
    array-length v8, v6

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_6

    aget-char v10, v6, v9

    if-nez v10, :cond_5

    move v9, v8

    goto :goto_4

    :cond_5
    aget-char v10, v6, v9

    const/16 v11, 0x20

    if-ne v10, v11, :cond_6

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ne v9, v8, :cond_8

    add-int/lit8 v5, v5, -0x1

    if-eqz v5, :cond_8

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_8
    :goto_5
    if-gtz v5, :cond_a

    if-gez v5, :cond_9

    iget v2, v0, Ljackpal/androidterm/a/ab;->i:I

    neg-int v4, v5

    if-lt v2, v4, :cond_9

    goto :goto_6

    :cond_9
    if-gez v5, :cond_b

    iget v2, v0, Ljackpal/androidterm/a/ab;->d:I

    iget v4, v0, Ljackpal/androidterm/a/ab;->i:I

    add-int/2addr v2, v4

    add-int/2addr v2, v5

    goto :goto_7

    :cond_a
    :goto_6
    iget v2, v0, Ljackpal/androidterm/a/ab;->i:I

    add-int/2addr v2, v5

    iget v4, v0, Ljackpal/androidterm/a/ab;->d:I

    rem-int/2addr v2, v4

    :goto_7
    iput v2, v0, Ljackpal/androidterm/a/ab;->i:I

    :cond_b
    iget v2, v0, Ljackpal/androidterm/a/ab;->g:I

    add-int/2addr v2, v5

    if-gez v2, :cond_c

    iput v3, v0, Ljackpal/androidterm/a/ab;->g:I

    goto :goto_8

    :cond_c
    iget v2, v0, Ljackpal/androidterm/a/ab;->g:I

    add-int/2addr v2, v5

    iput v2, v0, Ljackpal/androidterm/a/ab;->g:I

    :goto_8
    if-eqz p3, :cond_d

    aget v2, p3, v7

    sub-int/2addr v2, v5

    aput v2, p3, v7

    :cond_d
    iput v1, v0, Ljackpal/androidterm/a/ab;->e:I

    return v7

    :cond_e
    :goto_9
    return v3
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Ljackpal/androidterm/a/ab;->g:I

    return v0
.end method

.method public final b(I)V
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/a/ab;->c:[Z

    invoke-direct {p0, p1}, Ljackpal/androidterm/a/ab;->h(I)I

    move-result p1

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method

.method public final b(IIIIII)V
    .registers 12

    if-ltz p1, :cond_2

    add-int v0, p1, p3

    iget v1, p0, Ljackpal/androidterm/a/ab;->f:I

    if-gt v0, v1, :cond_2

    if-ltz p2, :cond_2

    add-int v0, p2, p4

    iget v1, p0, Ljackpal/androidterm/a/ab;->e:I

    if-gt v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p3, :cond_0

    add-int v3, p1, v2

    add-int v4, p2, v1

    invoke-virtual {p0, v3, v4, p5, p6}, Ljackpal/androidterm/a/ab;->a(IIII)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p6, Ljava/lang/StringBuilder;

    const-string v0, "illegal arguments! "

    invoke-direct {p6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Ljackpal/androidterm/a/ab;->f:I

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Ljackpal/androidterm/a/ab;->e:I

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UnicodeTranscript"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final b(III)[C
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljackpal/androidterm/a/ab;->a(IIIZ)[C

    move-result-object p1

    return-object p1
.end method

.method public final c()I
    .registers 3

    iget v0, p0, Ljackpal/androidterm/a/ab;->g:I

    iget v1, p0, Ljackpal/androidterm/a/ab;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final c(III)Ljackpal/androidterm/a/n;
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljackpal/androidterm/a/ab;->b(IIIZ)Ljackpal/androidterm/a/n;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)Z
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/ab;->c:[Z

    invoke-direct {p0, p1}, Ljackpal/androidterm/a/ab;->h(I)I

    move-result p1

    aget-boolean p1, v0, p1

    return p1
.end method

.method public final e(I)[C
    .registers 5

    iget v0, p0, Ljackpal/androidterm/a/ab;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v0, v2}, Ljackpal/androidterm/a/ab;->a(IIIZ)[C

    move-result-object p1

    return-object p1
.end method

.method public final f(I)Ljackpal/androidterm/a/n;
    .registers 5

    iget v0, p0, Ljackpal/androidterm/a/ab;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v0, v2}, Ljackpal/androidterm/a/ab;->b(IIIZ)Ljackpal/androidterm/a/n;

    move-result-object p1

    return-object p1
.end method

.method final g(I)Z
    .registers 3

    iget v0, p0, Ljackpal/androidterm/a/ab;->g:I

    neg-int v0, v0

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljackpal/androidterm/a/ab;->e:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/ab;->a:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljackpal/androidterm/a/ab;->h(I)I

    move-result p1

    aget-object p1, v0, p1

    instance-of p1, p1, [C

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
