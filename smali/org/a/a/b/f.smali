.class public final Lorg/a/a/b/f;
.super Lorg/a/a/a/b;

# interfaces
.implements Lorg/a/a/b/g;
.implements Lorg/a/a/b/p;


# instance fields
.field private d:Ljava/lang/Object;

.field private e:Lorg/a/a/z;

.field private f:Lorg/a/a/b/n;

.field private g:Lorg/a/a/b/o;

.field private h:Z

.field private i:I

.field private j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    new-instance v0, Lorg/a/a/b/e;

    invoke-direct {v0}, Lorg/a/a/b/e;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/a/a/b/f;-><init>(Lorg/a/a/b/n;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lorg/a/a/b/n;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Lorg/a/a/a/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/b/f;->h:Z

    iput v0, p0, Lorg/a/a/b/f;->i:I

    iput-object p2, p0, Lorg/a/a/b/f;->d:Ljava/lang/Object;

    iput-object p1, p0, Lorg/a/a/b/f;->f:Lorg/a/a/b/n;

    new-instance p2, Lorg/a/a/b/o;

    iget-object v0, p0, Lorg/a/a/b/f;->d:Ljava/lang/Object;

    invoke-direct {p2, p1, v0}, Lorg/a/a/b/o;-><init>(Lorg/a/a/b/n;Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/a/a/b/f;->g:Lorg/a/a/b/o;

    return-void
.end method

.method private c(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/a/a/b/f;->f:Lorg/a/a/b/n;

    invoke-interface {v0, p1}, Lorg/a/a/b/n;->j(Ljava/lang/Object;)Lorg/a/a/x;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lorg/a/a/x;->getLine()I

    move-result p1

    if-gtz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final a(Z)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/a/a/b/f;->a:Ljava/util/List;

    iget v1, p0, Lorg/a/a/b/f;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/a/a/b/f;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget p1, p0, Lorg/a/a/b/f;->b:I

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    iget-object v0, p0, Lorg/a/a/b/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/a/a/b/f;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/a/a/b/f;->j:Ljava/lang/Object;

    return-object p1
.end method

.method public final a(Lorg/a/a/z;)V
    .registers 2

    iput-object p1, p0, Lorg/a/a/b/f;->e:Lorg/a/a/z;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/a/a/b/f;->f:Lorg/a/a/b/n;

    invoke-interface {v0, p1}, Lorg/a/a/b/n;->d(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e(I)I
    .registers 3

    iget-object v0, p0, Lorg/a/a/b/f;->f:Lorg/a/a/b/n;

    invoke-virtual {p0, p1}, Lorg/a/a/b/f;->d(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/a/a/b/n;->d(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/a/a/b/f;->e:Lorg/a/a/z;

    invoke-interface {v0}, Lorg/a/a/z;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .registers 3

    invoke-super {p0}, Lorg/a/a/a/b;->h()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/a/a/b/f;->b:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/a/a/b/f;->c:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/a/a/b/f;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/a/a/b/f;->c:Ljava/lang/Object;

    iput-object v1, p0, Lorg/a/a/b/f;->j:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final i()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/a/a/b/f;->g:Lorg/a/a/b/o;

    invoke-virtual {v0}, Lorg/a/a/b/o;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/b/f;->g:Lorg/a/a/b/o;

    iget-object v1, v1, Lorg/a/a/b/o;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lorg/a/a/b/f;->i:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/a/a/b/f;->i:I

    iget v1, p0, Lorg/a/a/b/f;->i:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/a/a/b/f;->h:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/a/a/b/f;->g:Lorg/a/a/b/o;

    invoke-virtual {v0}, Lorg/a/a/b/o;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/a/a/b/f;->g:Lorg/a/a/b/o;

    iget-object v1, v1, Lorg/a/a/b/o;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    iget v1, p0, Lorg/a/a/b/f;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/a/a/b/f;->i:I

    :cond_1
    iget v1, p0, Lorg/a/a/b/f;->i:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/a/a/b/f;->f:Lorg/a/a/b/n;

    invoke-interface {v1, v0}, Lorg/a/a/b/n;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lorg/a/a/b/f;->h:Z

    iget-object v0, p0, Lorg/a/a/b/f;->g:Lorg/a/a/b/o;

    invoke-virtual {v0}, Lorg/a/a/b/o;->next()Ljava/lang/Object;

    iget v0, p0, Lorg/a/a/b/f;->i:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/a/a/b/f;->i:I

    iget-object v0, p0, Lorg/a/a/b/f;->g:Lorg/a/a/b/o;

    invoke-virtual {v0}, Lorg/a/a/b/o;->next()Ljava/lang/Object;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final j()Lorg/a/a/z;
    .registers 2

    iget-object v0, p0, Lorg/a/a/b/f;->e:Lorg/a/a/z;

    return-object v0
.end method

.method public final k()Lorg/a/a/b/n;
    .registers 2

    iget-object v0, p0, Lorg/a/a/b/f;->f:Lorg/a/a/b/n;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    const-string v0, "n/a"

    return-object v0
.end method
