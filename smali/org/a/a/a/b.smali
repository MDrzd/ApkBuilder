.class public abstract Lorg/a/a/a/b;
.super Lorg/a/a/a/a;


# static fields
.field private static synthetic h:Z


# instance fields
.field protected c:Ljava/lang/Object;

.field private d:I

.field private e:Ljava/lang/Object;

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/a/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/a/a/a/b;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lorg/a/a/a/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/b;->d:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/a/a/a/b;->e:Ljava/lang/Object;

    iput v0, p0, Lorg/a/a/a/b;->g:I

    return-void
.end method

.method private e(I)V
    .registers 3

    iget v0, p0, Lorg/a/a/a/b;->b:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iget-object p1, p0, Lorg/a/a/a/b;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lorg/a/a/a/b;->f(I)V

    :cond_0
    return-void
.end method

.method private f(I)V
    .registers 5

    const/4 v0, 0x1

    :goto_0
    if-gt v0, p1, :cond_1

    invoke-virtual {p0}, Lorg/a/a/a/b;->i()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/a/a/a/b;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lorg/a/a/a/b;->e:Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lorg/a/a/a/b;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/b;->d:I

    return v0
.end method

.method public final a(I)V
    .registers 4

    iget v0, p0, Lorg/a/a/a/b;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/a/a/a/b;->g:I

    iget v0, p0, Lorg/a/a/a/b;->b:I

    sub-int/2addr v0, p1

    iget v1, p0, Lorg/a/a/a/b;->d:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/a/a/a/b;->d:I

    iput p1, p0, Lorg/a/a/a/b;->b:I

    return-void
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/a/a/a/b;->g:I

    iget v0, p0, Lorg/a/a/a/b;->b:I

    iput v0, p0, Lorg/a/a/a/b;->f:I

    iget v0, p0, Lorg/a/a/a/b;->f:I

    return v0
.end method

.method public final b(I)V
    .registers 4

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/a/a/a/b;->d:I

    sub-int/2addr v0, p1

    iget v1, p0, Lorg/a/a/a/b;->b:I

    sub-int/2addr v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/a/a/a/b;->b:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/a/a/a/b;->b:I

    iput p1, p0, Lorg/a/a/a/b;->d:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t seek before the beginning of this stream\'s buffer"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "can\'t seek before the beginning of the input"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract b(Ljava/lang/Object;)Z
.end method

.method public final c()V
    .registers 3

    iget v0, p0, Lorg/a/a/a/b;->b:I

    iget v1, p0, Lorg/a/a/a/b;->f:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/a/a/a/b;->d:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/a/a/a/b;->d:I

    iget v0, p0, Lorg/a/a/a/b;->f:I

    iput v0, p0, Lorg/a/a/a/b;->b:I

    return-void
.end method

.method public final d()I
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "streams are of unknown size"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(I)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-gez p1, :cond_6

    neg-int p1, p1

    sget-boolean v0, Lorg/a/a/a/b;->h:Z

    if-nez v0, :cond_2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget v0, p0, Lorg/a/a/a/b;->b:I

    sub-int/2addr v0, p1

    const/4 p1, -0x1

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lorg/a/a/a/b;->c:Ljava/lang/Object;

    return-object p1

    :cond_3
    if-ltz v0, :cond_4

    iget-object p1, p0, Lorg/a/a/a/b;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    if-ge v0, p1, :cond_5

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t look more than one token before the beginning of this stream\'s buffer"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t look past the end of this stream\'s buffer using LB(int)"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-direct {p0, p1}, Lorg/a/a/a/b;->e(I)V

    iget v0, p0, Lorg/a/a/a/b;->b:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/a/a/a/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_7

    iget-object p1, p0, Lorg/a/a/a/b;->e:Ljava/lang/Object;

    return-object p1

    :cond_7
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/a/a/a/b;->c(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e()V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/a/a/a/b;->e(I)V

    invoke-virtual {p0}, Lorg/a/a/a/b;->h()Ljava/lang/Object;

    iget v1, p0, Lorg/a/a/a/b;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/a/a/a/b;->d:I

    return-void
.end method

.method public h()Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/a/a/a/b;->c(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/a/a/a/b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/a/a/a/b;->b:I

    iget v1, p0, Lorg/a/a/a/b;->b:I

    iget-object v2, p0, Lorg/a/a/a/b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/a/a/a/b;->g:I

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/a/a/a/b;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/a/a/a/b;->f()V

    :cond_0
    return-object v0
.end method

.method public abstract i()Ljava/lang/Object;
.end method
