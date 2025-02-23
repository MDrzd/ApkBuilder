.class public abstract Lorg/a/a/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/b/n;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/a/a/b/b;->a:I

    return-void
.end method

.method private d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/a/a/b/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/a/a/b/b;->l(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/a/a/b/b;->b(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, p2}, Lorg/a/a/b/b;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/a/a/b/b;->f(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    invoke-virtual {p0, p1, v1}, Lorg/a/a/b/b;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/a/a/b/b;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/a/a/b/b;->b(Lorg/a/a/x;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/b;->b(ILjava/lang/String;)Lorg/a/a/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/a/a/b/b;->b(Lorg/a/a/x;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/a/a/b/m;

    return-object p1
.end method

.method public final a(ILorg/a/a/x;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p2}, Lorg/a/a/b/b;->a(Lorg/a/a/x;)Lorg/a/a/x;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/a/a/x;->setType(I)V

    invoke-virtual {p0, p2}, Lorg/a/a/b/b;->b(Lorg/a/a/x;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/a/a/b/m;

    return-object p1
.end method

.method public final a(ILorg/a/a/x;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    if-nez p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lorg/a/a/b/b;->a(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p2}, Lorg/a/a/b/b;->a(Lorg/a/a/x;)Lorg/a/a/x;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/a/a/x;->setType(I)V

    invoke-interface {p2, p3}, Lorg/a/a/x;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/a/a/b/b;->b(Lorg/a/a/x;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/a/a/b/m;

    return-object p1
.end method

.method public a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lorg/a/a/b/m;

    invoke-interface {p1, p2}, Lorg/a/a/b/m;->a(I)Lorg/a/a/b/m;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lorg/a/a/z;Lorg/a/a/x;Lorg/a/a/x;Lorg/a/a/u;)Ljava/lang/Object;
    .registers 6

    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/a/a/b/c;-><init>(Lorg/a/a/z;Lorg/a/a/x;Lorg/a/a/x;Lorg/a/a/u;)V

    return-object v0
.end method

.method public abstract a(Lorg/a/a/x;)Lorg/a/a/x;
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    check-cast p1, Lorg/a/a/b/m;

    check-cast p2, Lorg/a/a/b/m;

    invoke-interface {p1, p2}, Lorg/a/a/b/m;->a(Lorg/a/a/b/m;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lorg/a/a/b/m;

    invoke-interface {p1}, Lorg/a/a/b/m;->b()Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/a/a/b/b;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    move-object v0, p1

    check-cast v0, Lorg/a/a/b/m;

    move-object v1, p2

    check-cast v1, Lorg/a/a/b/m;

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-interface {v0}, Lorg/a/a/b/m;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/a/a/b/m;->a()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lorg/a/a/b/m;->a(I)Lorg/a/a/b/m;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-gt p1, p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "more than one node as root (TODO: make exception hierarchy)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-interface {v0, v1}, Lorg/a/a/b/m;->a(Lorg/a/a/b/m;)V

    return-object v0
.end method

.method public abstract b(ILjava/lang/String;)Lorg/a/a/x;
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lorg/a/a/b/m;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/a/a/b/m;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/a/a/b/m;->a()I

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/a/a/b/m;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/a/a/b/m;->a(I)Lorg/a/a/b/m;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/a/a/b/m;->b(Lorg/a/a/b/m;)V

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lorg/a/a/b/m;->b(I)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public d(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lorg/a/a/b/m;

    invoke-interface {p1}, Lorg/a/a/b/m;->h()I

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    check-cast p1, Lorg/a/a/b/m;

    invoke-interface {p1}, Lorg/a/a/b/m;->i()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lorg/a/a/b/m;

    invoke-interface {p1}, Lorg/a/a/b/m;->a()I

    move-result p1

    return p1
.end method
