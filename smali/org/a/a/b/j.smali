.class public abstract Lorg/a/a/b/j;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lorg/a/a/b/n;

.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/util/List;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/a/a/b/n;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/b/j;->b:I

    iput-boolean v0, p0, Lorg/a/a/b/j;->e:Z

    iput-object p2, p0, Lorg/a/a/b/j;->f:Ljava/lang/String;

    iput-object p1, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/n;

    return-void
.end method

.method public constructor <init>(Lorg/a/a/b/n;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/a/a/b/j;-><init>(Lorg/a/a/b/n;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/a/a/b/j;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private e()I
    .registers 3

    iget-object v0, p0, Lorg/a/a/b/j;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/a/a/b/j;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/a/a/b/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_1
    return v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/b/j;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/a/a/b/j;->e:Z

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/a/a/b/j;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lorg/a/a/b/j;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lorg/a/a/b/j;->c:Ljava/lang/Object;

    if-nez v0, :cond_2

    iput-object p1, p0, Lorg/a/a/b/j;->c:Ljava/lang/Object;

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/a/a/b/j;->d:Ljava/util/List;

    iget-object v0, p0, Lorg/a/a/b/j;->d:Ljava/util/List;

    iget-object v1, p0, Lorg/a/a/b/j;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/b/j;->c:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lorg/a/a/b/j;->e()I

    move-result v0

    iget-boolean v1, p0, Lorg/a/a/b/j;->e:Z

    if-nez v1, :cond_1

    iget v1, p0, Lorg/a/a/b/j;->b:I

    if-lt v1, v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/a/a/b/j;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/a/a/b/j;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/a/a/b/j;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract b(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected final c()Ljava/lang/Object;
    .registers 4

    invoke-direct {p0}, Lorg/a/a/b/j;->e()I

    move-result v0

    if-eqz v0, :cond_3

    iget v1, p0, Lorg/a/a/b/j;->b:I

    const/4 v2, 0x1

    if-lt v1, v0, :cond_1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/a/a/b/j;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/a/a/b/j;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/a/a/b/h;

    iget-object v1, p0, Lorg/a/a/b/j;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/a/a/b/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/a/a/b/j;->c:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/a/a/b/j;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/a/a/b/j;->b:I

    iget-object v0, p0, Lorg/a/a/b/j;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/a/a/b/j;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/a/a/b/j;->d:Ljava/util/List;

    iget v1, p0, Lorg/a/a/b/j;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/a/a/b/j;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/a/a/b/j;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/a/a/b/j;->b:I

    return-object v0

    :cond_3
    new-instance v0, Lorg/a/a/b/i;

    iget-object v1, p0, Lorg/a/a/b/j;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method public final d()Z
    .registers 3

    iget-object v0, p0, Lorg/a/a/b/j;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/a/a/b/j;->b:I

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/a/a/b/j;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/a/a/b/j;->b:I

    iget-object v1, p0, Lorg/a/a/b/j;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
