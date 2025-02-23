.class public final Lb/b/c/b/o;
.super Lb/b/c/b/ak;


# instance fields
.field private a:[Lb/b/c/b/ag;


# direct methods
.method public constructor <init>(Lb/b/f/b/z;Lb/b/f/b/u;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lb/b/c/b/ak;-><init>(Lb/b/f/b/z;Lb/b/f/b/u;)V

    invoke-virtual {p2}, Lb/b/f/b/u;->a_()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/c/b/o;->a:[Lb/b/c/b/ag;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "registers.size() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lb/b/f/b/r;I)Lb/b/c/b/ag;
    .registers 4

    sget-object v0, Lb/b/f/b/z;->a:Lb/b/f/b/z;

    invoke-virtual {p0}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v1

    invoke-static {p1, v1}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lb/b/c/b/k;->a(Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/r;)Lb/b/c/b/ag;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .registers 8

    iget-object v0, p0, Lb/b/c/b/o;->a:[Lb/b/c/b/ag;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lb/b/c/b/o;->k()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result v1

    new-array v2, v1, [Lb/b/c/b/ag;

    iput-object v2, p0, Lb/b/c/b/o;->a:[Lb/b/c/b/ag;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v4

    iget-object v5, p0, Lb/b/c/b/o;->a:[Lb/b/c/b/ag;

    invoke-static {v4, v3}, Lb/b/c/b/o;->a(Lb/b/f/b/r;I)Lb/b/c/b/ag;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4}, Lb/b/f/b/r;->k()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 6

    invoke-direct {p0}, Lb/b/c/b/o;->c()V

    iget-object v0, p0, Lb/b/c/b/o;->a:[Lb/b/c/b/ag;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lb/b/c/b/ag;->a()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final a(Lb/b/f/b/u;)Lb/b/c/b/k;
    .registers 4

    new-instance v0, Lb/b/c/b/o;

    invoke-virtual {p0}, Lb/b/c/b/o;->j()Lb/b/f/b/z;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lb/b/c/b/o;-><init>(Lb/b/f/b/z;Lb/b/f/b/u;)V

    return-object v0
.end method

.method protected final a(Z)Ljava/lang/String;
    .registers 10

    invoke-virtual {p0}, Lb/b/c/b/o;->k()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v5

    invoke-static {v5, v4}, Lb/b/c/b/o;->a(Lb/b/f/b/r;I)Lb/b/c/b/ag;

    move-result-object v6

    if-eqz v3, :cond_0

    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v6, p1}, Lb/b/c/b/ag;->a(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lb/b/f/b/r;->k()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/h/r;)V
    .registers 6

    invoke-direct {p0}, Lb/b/c/b/o;->c()V

    iget-object v0, p0, Lb/b/c/b/o;->a:[Lb/b/c/b/ag;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lb/b/c/b/ag;->a(Lb/b/h/r;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
