.class public final Lorg/a/a/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field private c:Lorg/a/a/b/n;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:Z

.field private g:Ljava/lang/Object;

.field private h:Lorg/a/a/a/a;


# direct methods
.method public constructor <init>(Lorg/a/a/b/n;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/a/a/b/o;->f:Z

    iput-object p1, p0, Lorg/a/a/b/o;->c:Lorg/a/a/b/n;

    iput-object p2, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    iput-object p2, p0, Lorg/a/a/b/o;->d:Ljava/lang/Object;

    new-instance p2, Lorg/a/a/a/a;

    invoke-direct {p2}, Lorg/a/a/a/a;-><init>()V

    iput-object p2, p0, Lorg/a/a/b/o;->h:Lorg/a/a/a/a;

    const-string p2, "DOWN"

    const/4 v0, 0x2

    invoke-interface {p1, v0, p2}, Lorg/a/a/b/n;->a(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lorg/a/a/b/o;->b:Ljava/lang/Object;

    const-string p2, "UP"

    const/4 v0, 0x3

    invoke-interface {p1, v0, p2}, Lorg/a/a/b/n;->a(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lorg/a/a/b/o;->a:Ljava/lang/Object;

    const-string p2, "EOF"

    const/4 v0, -0x1

    invoke-interface {p1, v0, p2}, Lorg/a/a/b/n;->a(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/a/a/b/o;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 5

    iget-boolean v0, p0, Lorg/a/a/b/o;->f:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/a/a/b/o;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lorg/a/a/b/o;->h:Lorg/a/a/a/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/a/a/b/o;->h:Lorg/a/a/a/a;

    invoke-virtual {v0}, Lorg/a/a/a/a;->d()I

    move-result v0

    if-lez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lorg/a/a/b/o;->c:Lorg/a/a/b/n;

    iget-object v3, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    invoke-interface {v0, v3}, Lorg/a/a/b/n;->f(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Lorg/a/a/b/o;->c:Lorg/a/a/b/n;

    iget-object v3, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    invoke-interface {v0, v3}, Lorg/a/a/b/n;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    iget-boolean v0, p0, Lorg/a/a/b/o;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/a/a/b/o;->f:Z

    iget-object v0, p0, Lorg/a/a/b/o;->c:Lorg/a/a/b/n;

    iget-object v1, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/a/a/b/n;->f(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/a/a/b/o;->h:Lorg/a/a/a/a;

    iget-object v1, p0, Lorg/a/a/b/o;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/a/a/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/a/a/b/o;->h:Lorg/a/a/a/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/a/a/b/o;->h:Lorg/a/a/a/a;

    invoke-virtual {v0}, Lorg/a/a/a/a;->d()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/a/a/b/o;->h:Lorg/a/a/a/a;

    invoke-virtual {v0}, Lorg/a/a/a/a;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/a/a/b/o;->g:Ljava/lang/Object;

    return-object v0

    :cond_3
    iget-object v0, p0, Lorg/a/a/b/o;->c:Lorg/a/a/b/n;

    iget-object v2, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lorg/a/a/b/n;->f(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/a/a/b/o;->c:Lorg/a/a/b/n;

    iget-object v2, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lorg/a/a/b/n;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    iget-object v0, p0, Lorg/a/a/b/o;->h:Lorg/a/a/a/a;

    iget-object v1, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/a/a/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/a/a/b/o;->b:Ljava/lang/Object;

    return-object v0

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/a/a/b/o;->c:Lorg/a/a/b/n;

    iget-object v1, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/a/a/b/n;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/a/a/b/o;->c:Lorg/a/a/b/n;

    iget-object v2, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lorg/a/a/b/n;->l(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/a/a/b/o;->c:Lorg/a/a/b/n;

    invoke-interface {v2, v0}, Lorg/a/a/b/n;->f(Ljava/lang/Object;)I

    move-result v2

    if-lt v1, v2, :cond_5

    iget-object v1, p0, Lorg/a/a/b/o;->h:Lorg/a/a/a/a;

    iget-object v2, p0, Lorg/a/a/b/o;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/a/a/a/a;->a(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    iget-object v0, p0, Lorg/a/a/b/o;->h:Lorg/a/a/a/a;

    iget-object v1, p0, Lorg/a/a/b/o;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/a/a/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/a/a/b/o;->h:Lorg/a/a/a/a;

    invoke-virtual {v0}, Lorg/a/a/a/a;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v1, p0, Lorg/a/a/b/o;->c:Lorg/a/a/b/n;

    iget-object v2, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lorg/a/a/b/n;->l(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/a/a/b/o;->c:Lorg/a/a/b/n;

    invoke-interface {v2, v0, v1}, Lorg/a/a/b/n;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    iget-object v0, p0, Lorg/a/a/b/o;->h:Lorg/a/a/a/a;

    iget-object v1, p0, Lorg/a/a/b/o;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/a/a/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/a/a/b/o;->h:Lorg/a/a/a/a;

    invoke-virtual {v0}, Lorg/a/a/a/a;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
