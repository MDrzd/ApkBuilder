.class public final Lb/b/a/b/o;
.super Lcom/gmail/heagoo/pngeditor/n;


# instance fields
.field private final a:[Lb/b/f/d/d;

.field private final b:[Z

.field private c:I


# direct methods
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

    new-array v1, p1, [Lb/b/f/d/d;

    iput-object v1, p0, Lb/b/a/b/o;->a:[Lb/b/f/d/d;

    new-array p1, p1, [Z

    iput-object p1, p0, Lb/b/a/b/o;->b:[Z

    iput v0, p0, Lb/b/a/b/o;->c:I

    return-void
.end method

.method private static a(Ljava/lang/String;)Lb/b/f/d/d;
    .registers 4

    new-instance v0, Lb/b/a/b/aj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stack: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Lb/b/f/d/d;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_0

    const-string p0, "<invalid>"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lb/b/a/b/o;)Lb/b/a/b/o;
    .registers 4

    :try_start_0
    invoke-static {p0, p1}, La/a/a;->a(Lb/b/a/b/o;Lb/b/a/b/o;)Lb/b/a/b/o;

    move-result-object v0
    :try_end_0
    .catch Lb/b/a/b/aj; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "underlay stack:"

    invoke-virtual {v0, v1}, Lb/b/a/b/aj;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lb/b/a/b/o;->a(Lb/a/a/c;)V

    const-string v1, "overlay stack:"

    invoke-virtual {v0, v1}, Lb/b/a/b/aj;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lb/b/a/b/o;->a(Lb/a/a/c;)V

    throw v0
.end method

.method public final a(I)Lb/b/f/d/d;
    .registers 4

    if-ltz p1, :cond_1

    iget v0, p0, Lb/b/a/b/o;->c:I

    if-lt p1, v0, :cond_0

    const-string p1, "underflow"

    invoke-static {p1}, Lb/b/a/b/o;->a(Ljava/lang/String;)Lb/b/f/d/d;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lb/b/a/b/o;->a:[Lb/b/f/d/d;

    iget v1, p0, Lb/b/a/b/o;->c:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, v0, v1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ILb/b/f/d/d;)V
    .registers 6

    invoke-virtual {p0}, Lb/b/a/b/o;->d()V

    :try_start_0
    invoke-interface {p2}, Lb/b/f/d/d;->b()Lb/b/f/d/d;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p0, Lb/b/a/b/o;->c:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iget-object p1, p0, Lb/b/a/b/o;->a:[Lb/b/f/d/d;

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/d/c;->i()I

    move-result v1

    invoke-interface {p2}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/d/c;->i()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "incompatible substitution: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lb/b/a/b/o;->b(Lb/b/f/d/d;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lb/b/a/b/o;->b(Lb/b/f/d/d;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/b/a/b/o;->a(Ljava/lang/String;)Lb/b/f/d/d;

    :cond_1
    iget-object p1, p0, Lb/b/a/b/o;->a:[Lb/b/f/d/d;

    aput-object p2, p1, v0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/a/a/c;)V
    .registers 7

    iget v0, p0, Lb/b/a/b/o;->c:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    if-ne v1, v0, :cond_0

    const-string v2, "top0"

    goto :goto_1

    :cond_0
    sub-int v2, v0, v1

    invoke-static {v2}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stack["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/b/a/b/o;->a:[Lb/b/f/d/d;

    aget-object v2, v2, v1

    invoke-static {v2}, Lb/b/a/b/o;->b(Lb/b/f/d/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lb/a/a/c;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lb/b/f/d/c;)V
    .registers 5

    iget v0, p0, Lb/b/a/b/o;->c:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lb/b/a/b/o;->d()V

    invoke-virtual {p1}, Lb/b/f/d/c;->q()Lb/b/f/d/c;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lb/b/a/b/o;->c:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lb/b/a/b/o;->a:[Lb/b/f/d/d;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lb/b/a/b/o;->a:[Lb/b/f/d/d;

    aput-object v0, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lb/b/f/d/d;)V
    .registers 5

    invoke-virtual {p0}, Lb/b/a/b/o;->d()V

    :try_start_0
    invoke-interface {p1}, Lb/b/f/d/d;->b()Lb/b/f/d/d;

    move-result-object p1

    invoke-interface {p1}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/d/c;->i()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Lb/b/a/b/o;->c:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lb/b/a/b/o;->a:[Lb/b/f/d/d;

    array-length v2, v2

    if-le v1, v2, :cond_0

    const-string p1, "overflow"

    invoke-static {p1}, Lb/b/a/b/o;->a(Ljava/lang/String;)Lb/b/f/d/d;

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lb/b/a/b/o;->a:[Lb/b/f/d/d;

    iget v1, p0, Lb/b/a/b/o;->c:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget v0, p0, Lb/b/a/b/o;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/b/a/b/o;->c:I

    :cond_1
    iget-object v0, p0, Lb/b/a/b/o;->a:[Lb/b/f/d/d;

    iget v1, p0, Lb/b/a/b/o;->c:I

    aput-object p1, v0, v1

    iget p1, p0, Lb/b/a/b/o;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/b/a/b/o;->c:I

    return-void

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)Z
    .registers 4

    if-ltz p1, :cond_1

    iget v0, p0, Lb/b/a/b/o;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lb/b/a/b/o;->b:[Z

    iget v1, p0, Lb/b/a/b/o;->c:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-boolean p1, v0, v1

    return p1

    :cond_0
    new-instance p1, Lb/b/a/b/aj;

    const-string v0, "stack: underflow"

    invoke-direct {p1, v0}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(I)Lb/b/f/d/c;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/a/b/o;->a(I)Lb/b/f/d/d;

    move-result-object p1

    invoke-interface {p1}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object p1

    return-object p1
.end method

.method public final f()Lb/b/a/b/o;
    .registers 6

    new-instance v0, Lb/b/a/b/o;

    iget-object v1, p0, Lb/b/a/b/o;->a:[Lb/b/f/d/d;

    array-length v1, v1

    invoke-direct {v0, v1}, Lb/b/a/b/o;-><init>(I)V

    iget-object v1, p0, Lb/b/a/b/o;->a:[Lb/b/f/d/d;

    iget-object v2, v0, Lb/b/a/b/o;->a:[Lb/b/f/d/d;

    iget-object v3, p0, Lb/b/a/b/o;->a:[Lb/b/f/d/d;

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lb/b/a/b/o;->b:[Z

    iget-object v2, v0, Lb/b/a/b/o;->b:[Z

    iget-object v3, p0, Lb/b/a/b/o;->b:[Z

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lb/b/a/b/o;->c:I

    iput v1, v0, Lb/b/a/b/o;->c:I

    return-object v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lb/b/a/b/o;->c:I

    return v0
.end method

.method public final h()V
    .registers 5

    invoke-virtual {p0}, Lb/b/a/b/o;->d()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lb/b/a/b/o;->c:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lb/b/a/b/o;->a:[Lb/b/f/d/d;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    iget-object v2, p0, Lb/b/a/b/o;->b:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lb/b/a/b/o;->c:I

    return-void
.end method

.method public final i()V
    .registers 4

    invoke-virtual {p0}, Lb/b/a/b/o;->d()V

    iget-object v0, p0, Lb/b/a/b/o;->b:[Z

    iget v1, p0, Lb/b/a/b/o;->c:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public final j()Lb/b/f/d/d;
    .registers 6

    invoke-virtual {p0}, Lb/b/a/b/o;->d()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/b/a/b/o;->a(I)Lb/b/f/d/d;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/b/o;->a:[Lb/b/f/d/d;

    iget v3, p0, Lb/b/a/b/o;->c:I

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    iget-object v2, p0, Lb/b/a/b/o;->b:[Z

    iget v3, p0, Lb/b/a/b/o;->c:I

    add-int/lit8 v3, v3, -0x1

    aput-boolean v0, v2, v3

    iget v0, p0, Lb/b/a/b/o;->c:I

    invoke-interface {v1}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/d/c;->i()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lb/b/a/b/o;->c:I

    return-object v1
.end method
