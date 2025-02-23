.class public final Lorg/a/a/b/e;
.super Lorg/a/a/b/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/a/a/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast p1, Lorg/a/a/b/m;

    invoke-interface {p1, p2}, Lorg/a/a/b/m;->a(I)Lorg/a/a/b/m;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lorg/a/a/x;)Lorg/a/a/x;
    .registers 3

    new-instance v0, Lorg/a/a/e;

    invoke-direct {v0, p1}, Lorg/a/a/e;-><init>(Lorg/a/a/x;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lorg/a/a/x;Lorg/a/a/x;)V
    .registers 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/a/a/x;->getTokenIndex()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lorg/a/a/x;->getTokenIndex()I

    move-result v0

    :cond_2
    check-cast p1, Lorg/a/a/b/m;

    invoke-interface {p1, p2}, Lorg/a/a/b/m;->c(I)V

    invoke-interface {p1, v0}, Lorg/a/a/b/m;->d(I)V

    return-void
.end method

.method public final b(Lorg/a/a/x;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lorg/a/a/b/d;

    invoke-direct {v0, p1}, Lorg/a/a/b/d;-><init>(Lorg/a/a/x;)V

    return-object v0
.end method

.method public final b(ILjava/lang/String;)Lorg/a/a/x;
    .registers 4

    new-instance v0, Lorg/a/a/e;

    invoke-direct {v0, p1, p2}, Lorg/a/a/e;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;I)V
    .registers 3

    if-eqz p1, :cond_0

    check-cast p1, Lorg/a/a/b/m;

    invoke-interface {p1, p2}, Lorg/a/a/b/m;->b(I)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_0

    check-cast p1, Lorg/a/a/b/m;

    check-cast p2, Lorg/a/a/b/m;

    invoke-interface {p1, p2}, Lorg/a/a/b/m;->b(Lorg/a/a/b/m;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)I
    .registers 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/a/a/b/m;

    invoke-interface {p1}, Lorg/a/a/b/m;->h()I

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast p1, Lorg/a/a/b/m;

    invoke-interface {p1}, Lorg/a/a/b/m;->i()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/Object;)I
    .registers 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/a/a/b/m;

    invoke-interface {p1}, Lorg/a/a/b/m;->a()I

    move-result p1

    return p1
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast p1, Lorg/a/a/b/m;

    invoke-interface {p1}, Lorg/a/a/b/m;->j()Lorg/a/a/b/m;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/lang/Object;)I
    .registers 2

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lorg/a/a/b/m;

    invoke-interface {p1}, Lorg/a/a/b/m;->k()I

    move-result p1

    return p1
.end method

.method public final i(Ljava/lang/Object;)I
    .registers 2

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lorg/a/a/b/m;

    invoke-interface {p1}, Lorg/a/a/b/m;->l()I

    move-result p1

    return p1
.end method

.method public final j(Ljava/lang/Object;)Lorg/a/a/x;
    .registers 3

    instance-of v0, p1, Lorg/a/a/b/d;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/a/a/b/d;

    iget-object p1, p1, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast p1, Lorg/a/a/b/m;

    invoke-interface {p1}, Lorg/a/a/b/m;->d()Lorg/a/a/b/m;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ljava/lang/Object;)I
    .registers 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/a/a/b/m;

    invoke-interface {p1}, Lorg/a/a/b/m;->c()I

    move-result p1

    return p1
.end method
