.class public abstract Lorg/a/a/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/b/m;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e(I)V
    .registers 4

    invoke-virtual {p0}, Lorg/a/a/b/a;->a()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/a/a/b/a;->a(I)Lorg/a/a/b/m;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/a/a/b/m;->b(I)V

    invoke-interface {v1, p0}, Lorg/a/a/b/m;->b(Lorg/a/a/b/m;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)Lorg/a/a/b/m;
    .registers 3

    iget-object v0, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/a/a/b/m;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lorg/a/a/b/m;)V
    .registers 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/a/a/b/a;

    invoke-virtual {v0}, Lorg/a/a/b/a;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    iget-object v1, v0, Lorg/a/a/b/a;->a:Ljava/util/List;

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "attempt to add child list to itself"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object p1, v0, Lorg/a/a/b/a;->a:Ljava/util/List;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object p1, v0, Lorg/a/a/b/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_3

    iget-object v2, v0, Lorg/a/a/b/a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/a/a/b/m;

    iget-object v3, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, p0}, Lorg/a/a/b/m;->b(Lorg/a/a/b/m;)V

    iget-object v3, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Lorg/a/a/b/m;->b(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    iget-object p1, v0, Lorg/a/a/b/a;->a:Ljava/util/List;

    iput-object p1, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/a/a/b/a;->e(I)V

    return-void

    :cond_5
    iget-object v1, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    :cond_6
    iget-object v1, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lorg/a/a/b/a;->b(Lorg/a/a/b/m;)V

    iget-object p1, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lorg/a/a/b/a;->b(I)V

    :cond_7
    return-void
.end method

.method public b(I)V
    .registers 2

    return-void
.end method

.method public b(Lorg/a/a/b/m;)V
    .registers 2

    return-void
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Lorg/a/a/b/m;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/a/a/b/a;->b()Z

    move-result v1

    const/16 v2, 0x20

    if-nez v1, :cond_1

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/a/a/b/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lorg/a/a/b/a;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/a/a/b/m;

    if-lez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {v3}, Lorg/a/a/b/m;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/a/a/b/a;->b()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/a/a/b/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method
