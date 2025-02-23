.class public final Lb/b/c/b/ai;
.super Lb/b/c/b/ak;


# instance fields
.field private final a:Lb/b/c/b/g;

.field private final b:Lb/b/h/k;

.field private final c:[Lb/b/c/b/g;

.field private final d:Z


# direct methods
.method public constructor <init>(Lb/b/f/b/z;Lb/b/c/b/g;Lb/b/h/k;[Lb/b/c/b/g;)V
    .registers 9

    sget-object v0, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-direct {p0, p1, v0}, Lb/b/c/b/ak;-><init>(Lb/b/f/b/z;Lb/b/f/b/u;)V

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    if-eqz p4, :cond_4

    invoke-virtual {p3}, Lb/b/h/k;->f()I

    move-result p1

    array-length v0, p4

    if-ne p1, v0, :cond_3

    const v0, 0xffff

    if-gt p1, v0, :cond_2

    iput-object p2, p0, Lb/b/c/b/ai;->a:Lb/b/c/b/g;

    iput-object p3, p0, Lb/b/c/b/ai;->b:Lb/b/h/k;

    iput-object p4, p0, Lb/b/c/b/ai;->c:[Lb/b/c/b/g;

    invoke-virtual {p3}, Lb/b/h/k;->f()I

    move-result p1

    const/4 p2, 0x2

    const/4 p4, 0x1

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lb/b/c/b/ai;->a(Lb/b/h/k;)J

    move-result-wide p1

    invoke-static {p3}, Lb/b/c/b/ai;->b(Lb/b/h/k;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-ltz p3, :cond_1

    const-wide/16 v2, 0x5

    mul-long v0, v0, v2

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    cmp-long p3, p1, v0

    if-gtz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    iput-boolean p4, p0, Lb/b/c/b/ai;->d:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "too many cases"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cases / targets mismatch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "targets == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cases == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "user == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lb/b/h/k;)J
    .registers 7

    invoke-virtual {p0}, Lb/b/h/k;->f()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lb/b/h/k;->b(I)I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lb/b/h/k;->b(I)I

    move-result p0

    int-to-long v4, p0

    sub-long/2addr v4, v1

    const-wide/16 v0, 0x1

    add-long/2addr v4, v0

    shl-long v0, v4, v3

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static b(Lb/b/h/k;)J
    .registers 5

    invoke-virtual {p0}, Lb/b/h/k;->f()I

    move-result p0

    int-to-long v0, p0

    const/4 p0, 0x2

    shl-long/2addr v0, p0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget-boolean v0, p0, Lb/b/c/b/ai;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/c/b/ai;->b:Lb/b/h/k;

    invoke-static {v0}, Lb/b/c/b/ai;->a(Lb/b/h/k;)J

    move-result-wide v0

    :goto_0
    long-to-int v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lb/b/c/b/ai;->b:Lb/b/h/k;

    invoke-static {v0}, Lb/b/c/b/ai;->b(Lb/b/h/k;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(Lb/b/f/b/u;)Lb/b/c/b/k;
    .registers 6

    new-instance p1, Lb/b/c/b/ai;

    invoke-virtual {p0}, Lb/b/c/b/ai;->j()Lb/b/f/b/z;

    move-result-object v0

    iget-object v1, p0, Lb/b/c/b/ai;->a:Lb/b/c/b/g;

    iget-object v2, p0, Lb/b/c/b/ai;->b:Lb/b/h/k;

    iget-object v3, p0, Lb/b/c/b/ai;->c:[Lb/b/c/b/g;

    invoke-direct {p1, v0, v1, v2, v3}, Lb/b/c/b/ai;-><init>(Lb/b/f/b/z;Lb/b/c/b/g;Lb/b/h/k;[Lb/b/c/b/g;)V

    return-object p1
.end method

.method protected final a(Z)Ljava/lang/String;
    .registers 8

    iget-object p1, p0, Lb/b/c/b/ai;->a:Lb/b/c/b/g;

    invoke-virtual {p1}, Lb/b/c/b/g;->h()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lb/b/c/b/ai;->c:[Lb/b/c/b/g;

    array-length v1, v1

    iget-boolean v2, p0, Lb/b/c/b/ai;->d:Z

    if-eqz v2, :cond_0

    const-string v2, "packed"

    goto :goto_0

    :cond_0
    const-string v2, "sparse"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-switch-payload // for switch @ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lb/b/c/b/ai;->c:[Lb/b/c/b/g;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lb/b/c/b/g;->h()I

    move-result v3

    sub-int v4, v3, p1

    const-string v5, "\n  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lb/b/c/b/ai;->b:Lb/b/h/k;

    invoke-virtual {v5, v2}, Lb/b/h/k;->b(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, La/a/a;->t(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/h/r;)V
    .registers 10

    iget-object v0, p0, Lb/b/c/b/ai;->a:Lb/b/c/b/g;

    invoke-virtual {v0}, Lb/b/c/b/g;->h()I

    move-result v0

    sget-object v1, Lb/b/c/b/m;->I:Lcom/gmail/heagoo/neweditor/x;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/x;->c()Lb/b/c/b/p;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/c/b/p;->a()I

    move-result v1

    iget-object v2, p0, Lb/b/c/b/ai;->c:[Lb/b/c/b/g;

    array-length v2, v2

    iget-boolean v3, p0, Lb/b/c/b/ai;->d:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lb/b/c/b/ai;->b:Lb/b/h/k;

    invoke-virtual {v3, v4}, Lb/b/h/k;->b(I)I

    move-result v3

    :goto_0
    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lb/b/c/b/ai;->b:Lb/b/h/k;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Lb/b/h/k;->b(I)I

    move-result v2

    :goto_1
    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x100

    invoke-interface {p1, v5}, Lb/b/h/r;->b(I)V

    invoke-interface {p1, v2}, Lb/b/h/r;->b(I)V

    invoke-interface {p1, v3}, Lb/b/h/r;->c(I)V

    const/4 v5, 0x0

    :goto_2
    if-ge v4, v2, :cond_3

    add-int v6, v3, v4

    iget-object v7, p0, Lb/b/c/b/ai;->b:Lb/b/h/k;

    invoke-virtual {v7, v5}, Lb/b/h/k;->b(I)I

    move-result v7

    if-le v7, v6, :cond_2

    move v6, v1

    goto :goto_3

    :cond_2
    iget-object v6, p0, Lb/b/c/b/ai;->c:[Lb/b/c/b/g;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lb/b/c/b/g;->h()I

    move-result v6

    sub-int/2addr v6, v0

    add-int/lit8 v5, v5, 0x1

    :goto_3
    invoke-interface {p1, v6}, Lb/b/h/r;->c(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    const/16 v1, 0x200

    invoke-interface {p1, v1}, Lb/b/h/r;->b(I)V

    invoke-interface {p1, v2}, Lb/b/h/r;->b(I)V

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_5

    iget-object v3, p0, Lb/b/c/b/ai;->b:Lb/b/h/k;

    invoke-virtual {v3, v1}, Lb/b/h/k;->b(I)I

    move-result v3

    invoke-interface {p1, v3}, Lb/b/h/r;->c(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    if-ge v4, v2, :cond_6

    iget-object v1, p0, Lb/b/c/b/ai;->c:[Lb/b/c/b/g;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lb/b/c/b/g;->h()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Lb/b/h/r;->c(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lb/b/c/b/ai;->c:[Lb/b/c/b/g;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const-string v3, "\n    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/b/c/b/ai;->b:Lb/b/h/k;

    invoke-virtual {v3, v2}, Lb/b/h/k;->b(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/b/c/b/ai;->c:[Lb/b/c/b/g;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lb/b/c/b/ai;->d:Z

    return v0
.end method
