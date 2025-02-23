.class public final Lorg/a/a/f;
.super Lorg/a/a/c;


# instance fields
.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/a/a/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/f;->d:I

    return-void
.end method

.method public constructor <init>(Lorg/a/a/y;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/a/a/c;-><init>(Lorg/a/a/y;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/a/a/f;->d:I

    return-void
.end method


# virtual methods
.method public final e()V
    .registers 3

    iget v0, p0, Lorg/a/a/f;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/a/a/f;->f()V

    :cond_0
    :goto_0
    iget v0, p0, Lorg/a/a/f;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/a/a/f;->b:I

    iget v0, p0, Lorg/a/a/f;->b:I

    invoke-virtual {p0, v0}, Lorg/a/a/f;->c(I)V

    iget-object v0, p0, Lorg/a/a/f;->a:Ljava/util/List;

    iget v1, p0, Lorg/a/a/f;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/x;

    invoke-interface {v0}, Lorg/a/a/x;->getChannel()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final f(I)Lorg/a/a/x;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget v1, p0, Lorg/a/a/f;->b:I

    sub-int/2addr v1, p1

    if-gez v1, :cond_0

    goto :goto_2

    :cond_0
    iget v1, p0, Lorg/a/a/f;->b:I

    const/4 v2, 0x1

    :goto_0
    if-gt v2, p1, :cond_2

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    iget-object v3, p0, Lorg/a/a/f;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/a/a/x;

    invoke-interface {v3}, Lorg/a/a/x;->getChannel()I

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-gez v1, :cond_3

    return-object v0

    :cond_3
    iget-object p1, p0, Lorg/a/a/f;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/a/a/x;

    return-object p1

    :cond_4
    :goto_2
    return-object v0
.end method

.method protected final f()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/f;->b:I

    :goto_0
    invoke-virtual {p0, v0}, Lorg/a/a/f;->c(I)V

    iget-object v1, p0, Lorg/a/a/f;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/a/a/x;

    invoke-interface {v1}, Lorg/a/a/x;->getChannel()I

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/a/a/f;->b:I

    return-void
.end method

.method public final g(I)Lorg/a/a/x;
    .registers 5

    iget v0, p0, Lorg/a/a/f;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/a/a/f;->f()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lorg/a/a/f;->f(I)Lorg/a/a/x;

    move-result-object p1

    return-object p1

    :cond_2
    iget v0, p0, Lorg/a/a/f;->b:I

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p1, :cond_4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/a/a/f;->c(I)V

    iget-object v2, p0, Lorg/a/a/f;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/a/a/x;

    invoke-interface {v2}, Lorg/a/a/x;->getChannel()I

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget p1, p0, Lorg/a/a/f;->c:I

    if-le v0, p1, :cond_5

    iput v0, p0, Lorg/a/a/f;->c:I

    :cond_5
    iget-object p1, p0, Lorg/a/a/f;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/a/a/x;

    return-object p1
.end method
