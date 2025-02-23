.class public final Lorg/a/a/b/c;
.super Lorg/a/a/b/d;


# instance fields
.field private b:Lorg/a/a/j;

.field private c:Lorg/a/a/x;

.field private d:Lorg/a/a/x;

.field private e:Lorg/a/a/u;


# direct methods
.method public constructor <init>(Lorg/a/a/z;Lorg/a/a/x;Lorg/a/a/x;Lorg/a/a/u;)V
    .registers 7

    invoke-direct {p0}, Lorg/a/a/b/d;-><init>()V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lorg/a/a/x;->getTokenIndex()I

    move-result v0

    invoke-interface {p2}, Lorg/a/a/x;->getTokenIndex()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p3}, Lorg/a/a/x;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    move-object p3, p2

    :cond_1
    iput-object p1, p0, Lorg/a/a/b/c;->b:Lorg/a/a/j;

    iput-object p2, p0, Lorg/a/a/b/c;->c:Lorg/a/a/x;

    iput-object p3, p0, Lorg/a/a/b/c;->d:Lorg/a/a/x;

    iput-object p4, p0, Lorg/a/a/b/c;->e:Lorg/a/a/u;

    return-void
.end method


# virtual methods
.method public final b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final h()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lorg/a/a/b/c;->c:Lorg/a/a/x;

    instance-of v0, v0, Lorg/a/a/x;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/a/a/b/c;->c:Lorg/a/a/x;

    invoke-interface {v0}, Lorg/a/a/x;->getTokenIndex()I

    move-result v0

    iget-object v1, p0, Lorg/a/a/b/c;->d:Lorg/a/a/x;

    invoke-interface {v1}, Lorg/a/a/x;->getTokenIndex()I

    move-result v1

    iget-object v2, p0, Lorg/a/a/b/c;->d:Lorg/a/a/x;

    invoke-interface {v2}, Lorg/a/a/x;->getType()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lorg/a/a/b/c;->b:Lorg/a/a/j;

    check-cast v1, Lorg/a/a/z;

    invoke-interface {v1}, Lorg/a/a/z;->d()I

    move-result v1

    :cond_0
    iget-object v2, p0, Lorg/a/a/b/c;->b:Lorg/a/a/j;

    check-cast v2, Lorg/a/a/z;

    invoke-interface {v2, v0, v1}, Lorg/a/a/z;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/a/a/b/c;->c:Lorg/a/a/x;

    instance-of v0, v0, Lorg/a/a/b/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/a/a/b/c;->b:Lorg/a/a/j;

    check-cast v0, Lorg/a/a/b/p;

    invoke-interface {v0}, Lorg/a/a/b/p;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "<unknown>"

    :goto_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/a/a/b/c;->e:Lorg/a/a/u;

    instance-of v0, v0, Lorg/a/a/q;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<missing type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/a/a/b/c;->e:Lorg/a/a/u;

    check-cast v1, Lorg/a/a/q;

    iget v1, v1, Lorg/a/a/q;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/b/c;->e:Lorg/a/a/u;

    instance-of v0, v0, Lorg/a/a/aa;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<extraneous: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/a/a/b/c;->e:Lorg/a/a/u;

    check-cast v1, Lorg/a/a/aa;

    iget-object v1, v1, Lorg/a/a/aa;->token:Lorg/a/a/x;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p0}, Lorg/a/a/b/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/a/a/b/c;->e:Lorg/a/a/u;

    instance-of v0, v0, Lorg/a/a/o;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<mismatched token: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_3
    iget-object v1, p0, Lorg/a/a/b/c;->e:Lorg/a/a/u;

    iget-object v1, v1, Lorg/a/a/u;->token:Lorg/a/a/x;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/a/a/b/c;->e:Lorg/a/a/u;

    instance-of v0, v0, Lorg/a/a/r;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<unexpected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method
