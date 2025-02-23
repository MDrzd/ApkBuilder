.class public Lorg/a/a/b/d;
.super Lorg/a/a/b/a;


# instance fields
.field public a:Lorg/a/a/x;

.field private b:I

.field private c:I

.field private d:Lorg/a/a/b/d;

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/a/a/b/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/b/d;->b:I

    iput v0, p0, Lorg/a/a/b/d;->c:I

    iput v0, p0, Lorg/a/a/b/d;->e:I

    return-void
.end method

.method private constructor <init>(Lorg/a/a/b/d;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/a/a/b/a;-><init>(B)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/b/d;->b:I

    iput v0, p0, Lorg/a/a/b/d;->c:I

    iput v0, p0, Lorg/a/a/b/d;->e:I

    iget-object v0, p1, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    iput-object v0, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    iget v0, p1, Lorg/a/a/b/d;->b:I

    iput v0, p0, Lorg/a/a/b/d;->b:I

    iget p1, p1, Lorg/a/a/b/d;->c:I

    iput p1, p0, Lorg/a/a/b/d;->c:I

    return-void
.end method

.method public constructor <init>(Lorg/a/a/x;)V
    .registers 3

    invoke-direct {p0}, Lorg/a/a/b/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/b/d;->b:I

    iput v0, p0, Lorg/a/a/b/d;->c:I

    iput v0, p0, Lorg/a/a/b/d;->e:I

    iput-object p1, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    return-void
.end method


# virtual methods
.method public final b(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/b/d;->e:I

    return-void
.end method

.method public final b(Lorg/a/a/b/m;)V
    .registers 2

    check-cast p1, Lorg/a/a/b/d;

    iput-object p1, p0, Lorg/a/a/b/d;->d:Lorg/a/a/b/d;

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lorg/a/a/b/d;->e:I

    return v0
.end method

.method public final c(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/b/d;->b:I

    return-void
.end method

.method public final d()Lorg/a/a/b/m;
    .registers 2

    iget-object v0, p0, Lorg/a/a/b/d;->d:Lorg/a/a/b/d;

    return-object v0
.end method

.method public final d(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/b/d;->c:I

    return-void
.end method

.method public final f()I
    .registers 3

    iget-object v0, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    invoke-interface {v0}, Lorg/a/a/x;->getLine()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    invoke-interface {v0}, Lorg/a/a/x;->getLine()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/a/a/b/d;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/a/a/b/d;->a(I)Lorg/a/a/b/m;

    move-result-object v0

    invoke-interface {v0}, Lorg/a/a/b/m;->f()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public final g()I
    .registers 3

    iget-object v0, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    invoke-interface {v0}, Lorg/a/a/x;->getCharPositionInLine()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    invoke-interface {v0}, Lorg/a/a/x;->getCharPositionInLine()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/a/a/b/d;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/a/a/b/d;->a(I)Lorg/a/a/b/m;

    move-result-object v0

    invoke-interface {v0}, Lorg/a/a/b/m;->g()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public h()I
    .registers 2

    iget-object v0, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    invoke-interface {v0}, Lorg/a/a/x;->getType()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    invoke-interface {v0}, Lorg/a/a/x;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lorg/a/a/b/m;
    .registers 2

    new-instance v0, Lorg/a/a/b/d;

    invoke-direct {v0, p0}, Lorg/a/a/b/d;-><init>(Lorg/a/a/b/d;)V

    return-object v0
.end method

.method public final k()I
    .registers 3

    iget v0, p0, Lorg/a/a/b/d;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    invoke-interface {v0}, Lorg/a/a/x;->getTokenIndex()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lorg/a/a/b/d;->b:I

    return v0
.end method

.method public final l()I
    .registers 3

    iget v0, p0, Lorg/a/a/b/d;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    invoke-interface {v0}, Lorg/a/a/x;->getTokenIndex()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lorg/a/a/b/d;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/a/a/b/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nil"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/a/a/b/d;->h()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "<errornode>"

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    invoke-interface {v0}, Lorg/a/a/x;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
