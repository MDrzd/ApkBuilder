.class public Lorg/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/z;


# instance fields
.field protected a:Ljava/util/List;

.field protected b:I

.field protected c:I

.field private d:Lorg/a/a/y;

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/a/a/c;->a:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/c;->b:I

    iput v0, p0, Lorg/a/a/c;->c:I

    return-void
.end method

.method public constructor <init>(Lorg/a/a/y;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/a/a/c;->a:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/c;->b:I

    iput v0, p0, Lorg/a/a/c;->c:I

    iput-object p1, p0, Lorg/a/a/c;->d:Lorg/a/a/y;

    return-void
.end method

.method private h(I)V
    .registers 5

    const/4 v0, 0x1

    :goto_0
    if-gt v0, p1, :cond_0

    iget-object v1, p0, Lorg/a/a/c;->d:Lorg/a/a/y;

    invoke-interface {v1}, Lorg/a/a/y;->nextToken()Lorg/a/a/x;

    move-result-object v1

    iget-object v2, p0, Lorg/a/a/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/a/a/x;->setTokenIndex(I)V

    iget-object v2, p0, Lorg/a/a/c;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Lorg/a/a/x;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lorg/a/a/c;->b:I

    return v0
.end method

.method public final a(II)Ljava/lang/String;
    .registers 7

    if-ltz p1, :cond_4

    if-gez p2, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/a/a/c;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/a/a/c;->f()V

    :cond_1
    iget-object v0, p0, Lorg/a/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    iget-object p2, p0, Lorg/a/a/c;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_3

    iget-object v2, p0, Lorg/a/a/c;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/a/a/x;

    invoke-interface {v2}, Lorg/a/a/x;->getType()I

    move-result v3

    if-eq v3, v1, :cond_3

    invoke-interface {v2}, Lorg/a/a/x;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lorg/a/a/x;Lorg/a/a/x;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lorg/a/a/x;->getTokenIndex()I

    move-result p1

    invoke-interface {p2}, Lorg/a/a/x;->getTokenIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/a/a/c;->a(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/c;->b:I

    return-void
.end method

.method public final b()I
    .registers 3

    iget v0, p0, Lorg/a/a/c;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/a/a/c;->f()V

    :cond_0
    iget v0, p0, Lorg/a/a/c;->b:I

    iput v0, p0, Lorg/a/a/c;->e:I

    iget v0, p0, Lorg/a/a/c;->e:I

    return v0
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/c;->b:I

    return-void
.end method

.method public final c()V
    .registers 2

    iget v0, p0, Lorg/a/a/c;->e:I

    iput v0, p0, Lorg/a/a/c;->b:I

    return-void
.end method

.method protected final c(I)V
    .registers 3

    iget-object v0, p0, Lorg/a/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_0

    invoke-direct {p0, p1}, Lorg/a/a/c;->h(I)V

    :cond_0
    return-void
.end method

.method public final d()I
    .registers 2

    iget-object v0, p0, Lorg/a/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final d(I)Lorg/a/a/x;
    .registers 5

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/a/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/a/a/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/a/a/x;

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range 0.."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/a/a/c;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lorg/a/a/c;->g(I)Lorg/a/a/x;

    move-result-object p1

    invoke-interface {p1}, Lorg/a/a/x;->getType()I

    move-result p1

    return p1
.end method

.method public e()V
    .registers 3

    iget v0, p0, Lorg/a/a/c;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/a/a/c;->f()V

    :cond_0
    iget v0, p0, Lorg/a/a/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/a/a/c;->b:I

    iget v0, p0, Lorg/a/a/c;->b:I

    invoke-virtual {p0, v0}, Lorg/a/a/c;->c(I)V

    return-void
.end method

.method protected f(I)Lorg/a/a/x;
    .registers 4

    iget v0, p0, Lorg/a/a/c;->b:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/a/a/c;->a:Ljava/util/List;

    iget v1, p0, Lorg/a/a/c;->b:I

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/a/a/x;

    return-object p1
.end method

.method protected f()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/a/a/c;->c(I)V

    iput v0, p0, Lorg/a/a/c;->b:I

    return-void
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/a/a/c;->d:Lorg/a/a/y;

    invoke-interface {v0}, Lorg/a/a/y;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(I)Lorg/a/a/x;
    .registers 4

    iget v0, p0, Lorg/a/a/c;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/a/a/c;->f()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lorg/a/a/c;->f(I)Lorg/a/a/x;

    move-result-object p1

    return-object p1

    :cond_2
    iget v0, p0, Lorg/a/a/c;->b:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/a/a/c;->c(I)V

    iget-object p1, p0, Lorg/a/a/c;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v0, p1, :cond_3

    iget-object p1, p0, Lorg/a/a/c;->a:Ljava/util/List;

    iget-object v0, p0, Lorg/a/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/a/a/x;

    return-object p1

    :cond_3
    iget p1, p0, Lorg/a/a/c;->c:I

    if-le v0, p1, :cond_4

    iput v0, p0, Lorg/a/a/c;->c:I

    :cond_4
    iget-object p1, p0, Lorg/a/a/c;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/a/a/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lorg/a/a/c;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/a/a/c;->f()V

    :cond_0
    iget v0, p0, Lorg/a/a/c;->b:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/a/a/c;->f()V

    :cond_1
    iget-object v0, p0, Lorg/a/a/c;->a:Ljava/util/List;

    iget v2, p0, Lorg/a/a/c;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/x;

    invoke-interface {v0}, Lorg/a/a/x;->getType()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/a/a/c;->b:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/a/a/c;->c(I)V

    iget-object v2, p0, Lorg/a/a/c;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/a/a/x;

    invoke-interface {v2}, Lorg/a/a/x;->getType()I

    move-result v2

    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/a/a/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/a/a/c;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
