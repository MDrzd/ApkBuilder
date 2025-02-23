.class public Lorg/a/a/u;
.super Ljava/lang/Exception;


# instance fields
.field public approximateLineInfo:Z

.field public c:I

.field public charPositionInLine:I

.field public index:I

.field public transient input:Lorg/a/a/j;

.field public line:I

.field public node:Ljava/lang/Object;

.field public token:Lorg/a/a/x;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/a/a/j;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lorg/a/a/u;->input:Lorg/a/a/j;

    invoke-interface {p1}, Lorg/a/a/j;->a()I

    move-result v0

    iput v0, p0, Lorg/a/a/u;->index:I

    instance-of v0, p1, Lorg/a/a/z;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/a/a/z;

    invoke-interface {v0, v1}, Lorg/a/a/z;->g(I)Lorg/a/a/x;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/u;->token:Lorg/a/a/x;

    iget-object v0, p0, Lorg/a/a/u;->token:Lorg/a/a/x;

    invoke-interface {v0}, Lorg/a/a/x;->getLine()I

    move-result v0

    iput v0, p0, Lorg/a/a/u;->line:I

    iget-object v0, p0, Lorg/a/a/u;->token:Lorg/a/a/x;

    invoke-interface {v0}, Lorg/a/a/x;->getCharPositionInLine()I

    move-result v0

    iput v0, p0, Lorg/a/a/u;->charPositionInLine:I

    :cond_0
    instance-of v0, p1, Lorg/a/a/b/p;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/a/a/u;->extractInformationFromTreeNodeStream(Lorg/a/a/j;)V

    return-void

    :cond_1
    instance-of v0, p1, Lorg/a/a/d;

    if-eqz v0, :cond_2

    invoke-interface {p1, v1}, Lorg/a/a/j;->e(I)I

    move-result v0

    iput v0, p0, Lorg/a/a/u;->c:I

    check-cast p1, Lorg/a/a/d;

    invoke-interface {p1}, Lorg/a/a/d;->i()I

    move-result v0

    iput v0, p0, Lorg/a/a/u;->line:I

    invoke-interface {p1}, Lorg/a/a/d;->j()I

    move-result p1

    iput p1, p0, Lorg/a/a/u;->charPositionInLine:I

    return-void

    :cond_2
    invoke-interface {p1, v1}, Lorg/a/a/j;->e(I)I

    move-result p1

    iput p1, p0, Lorg/a/a/u;->c:I

    return-void
.end method


# virtual methods
.method protected extractInformationFromTreeNodeStream(Lorg/a/a/j;)V
    .registers 9

    check-cast p1, Lorg/a/a/b/p;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/a/a/b/p;->d(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/a/a/u;->node:Ljava/lang/Object;

    instance-of v1, p1, Lorg/a/a/b/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lorg/a/a/b/g;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/a/a/b/g;->a(Z)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-interface {v1, v0}, Lorg/a/a/b/g;->a(Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lorg/a/a/u;->approximateLineInfo:Z

    goto :goto_0

    :cond_1
    move-object v1, v4

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-interface {p1}, Lorg/a/a/b/p;->k()Lorg/a/a/b/n;

    move-result-object v3

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/a/a/u;->node:Ljava/lang/Object;

    :goto_1
    invoke-interface {v3, v1}, Lorg/a/a/b/n;->j(Ljava/lang/Object;)Lorg/a/a/x;

    move-result-object v1

    if-eqz v1, :cond_7

    iput-object v1, p0, Lorg/a/a/u;->token:Lorg/a/a/x;

    invoke-interface {v1}, Lorg/a/a/x;->getLine()I

    move-result v4

    if-gtz v4, :cond_6

    const/4 v1, -0x1

    invoke-interface {p1, v1}, Lorg/a/a/b/p;->d(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, -0x1

    :goto_2
    if-eqz v4, :cond_5

    invoke-interface {v3, v4}, Lorg/a/a/b/n;->j(Ljava/lang/Object;)Lorg/a/a/x;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lorg/a/a/x;->getLine()I

    move-result v6

    if-lez v6, :cond_4

    invoke-interface {v4}, Lorg/a/a/x;->getLine()I

    move-result p1

    iput p1, p0, Lorg/a/a/u;->line:I

    invoke-interface {v4}, Lorg/a/a/x;->getCharPositionInLine()I

    move-result p1

    iput p1, p0, Lorg/a/a/u;->charPositionInLine:I

    iput-boolean v0, p0, Lorg/a/a/u;->approximateLineInfo:Z

    goto :goto_3

    :cond_4
    add-int/2addr v5, v1

    :try_start_0
    invoke-interface {p1, v5}, Lorg/a/a/b/p;->d(I)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-object v4, v2

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    invoke-interface {v1}, Lorg/a/a/x;->getLine()I

    move-result p1

    iput p1, p0, Lorg/a/a/u;->line:I

    invoke-interface {v1}, Lorg/a/a/x;->getCharPositionInLine()I

    move-result p1

    iput p1, p0, Lorg/a/a/u;->charPositionInLine:I

    return-void

    :cond_7
    iget-object p1, p0, Lorg/a/a/u;->node:Ljava/lang/Object;

    instance-of p1, p1, Lorg/a/a/b/m;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/a/a/u;->node:Ljava/lang/Object;

    check-cast p1, Lorg/a/a/b/m;

    invoke-interface {p1}, Lorg/a/a/b/m;->f()I

    move-result p1

    iput p1, p0, Lorg/a/a/u;->line:I

    iget-object p1, p0, Lorg/a/a/u;->node:Ljava/lang/Object;

    check-cast p1, Lorg/a/a/b/m;

    invoke-interface {p1}, Lorg/a/a/b/m;->g()I

    move-result p1

    iput p1, p0, Lorg/a/a/u;->charPositionInLine:I

    iget-object p1, p0, Lorg/a/a/u;->node:Ljava/lang/Object;

    instance-of p1, p1, Lorg/a/a/b/d;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/a/a/u;->node:Ljava/lang/Object;

    check-cast p1, Lorg/a/a/b/d;

    iget-object p1, p1, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    iput-object p1, p0, Lorg/a/a/u;->token:Lorg/a/a/x;

    return-void

    :cond_8
    iget-object p1, p0, Lorg/a/a/u;->node:Ljava/lang/Object;

    invoke-interface {v3, p1}, Lorg/a/a/b/n;->d(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lorg/a/a/u;->node:Ljava/lang/Object;

    invoke-interface {v3, v0}, Lorg/a/a/b/n;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/a/a/e;

    invoke-direct {v1, p1, v0}, Lorg/a/a/e;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lorg/a/a/u;->token:Lorg/a/a/x;

    :cond_9
    :goto_3
    return-void
.end method

.method public getUnexpectedType()I
    .registers 3

    iget-object v0, p0, Lorg/a/a/u;->input:Lorg/a/a/j;

    instance-of v0, v0, Lorg/a/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/a/a/u;->token:Lorg/a/a/x;

    invoke-interface {v0}, Lorg/a/a/x;->getType()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/u;->input:Lorg/a/a/j;

    instance-of v0, v0, Lorg/a/a/b/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/a/a/u;->input:Lorg/a/a/j;

    check-cast v0, Lorg/a/a/b/p;

    invoke-interface {v0}, Lorg/a/a/b/p;->k()Lorg/a/a/b/n;

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/u;->node:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/a/a/b/n;->d(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Lorg/a/a/u;->c:I

    return v0
.end method
