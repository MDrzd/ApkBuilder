.class public final Lb/b/f/c/af;
.super Lcom/gmail/heagoo/pngeditor/n;

# interfaces
.implements Lb/b/f/c/b;


# instance fields
.field private final a:[Lb/b/f/c/a;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/gmail/heagoo/pngeditor/n;-><init>(Z)V

    if-lez p1, :cond_1

    new-array p1, p1, [Lb/b/f/c/a;

    iput-object p1, p0, Lb/b/f/c/af;->a:[Lb/b/f/c/a;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size < 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static d(I)Lb/b/f/c/a;
    .registers 4

    new-instance v0, Lb/a/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid constant pool index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lb/b/f/c/af;->a:[Lb/b/f/c/a;

    array-length v0, v0

    return v0
.end method

.method public final a(I)Lb/b/f/c/a;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lb/b/f/c/af;->a:[Lb/b/f/c/a;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    invoke-static {p1}, Lb/b/f/c/af;->d(I)Lb/b/f/c/a;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    invoke-static {p1}, Lb/b/f/c/af;->d(I)Lb/b/f/c/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILb/b/f/c/a;)V
    .registers 6

    invoke-virtual {p0}, Lb/b/f/c/af;->d()V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lb/b/f/c/a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez p1, :cond_4

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/b/f/c/af;->a:[Lb/b/f/c/a;

    array-length v1, v1

    sub-int/2addr v1, v0

    if-eq p1, v1, :cond_1

    iget-object v0, p0, Lb/b/f/c/af;->a:[Lb/b/f/c/a;

    add-int/lit8 v1, p1, 0x1

    aput-object v2, v0, v1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "(n == size - 1) && cst.isCategory2()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    iget-object v0, p0, Lb/b/f/c/af;->a:[Lb/b/f/c/a;

    aget-object v0, v0, p1

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/b/f/c/af;->a:[Lb/b/f/c/a;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lb/b/f/c/a;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/b/f/c/af;->a:[Lb/b/f/c/a;

    aput-object v2, v0, v1

    :cond_3
    iget-object v0, p0, Lb/b/f/c/af;->a:[Lb/b/f/c/a;

    aput-object p2, v0, p1

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)Lb/b/f/c/a;
    .registers 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lb/b/f/c/af;->a(I)Lb/b/f/c/a;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)Lb/b/f/c/a;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lb/b/f/c/af;->a:[Lb/b/f/c/a;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {p1}, Lb/b/f/c/af;->d(I)Lb/b/f/c/a;

    move-result-object p1

    return-object p1
.end method
