.class public final Lb/b/c/c/an;
.super Lb/b/c/c/ag;


# instance fields
.field private final a:I

.field private final b:Lb/b/f/c/y;


# direct methods
.method public constructor <init>(Lb/b/f/c/y;)V
    .registers 3

    invoke-direct {p0}, Lb/b/c/c/ag;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lb/b/c/c/an;->a:I

    iput-object p1, p0, Lb/b/c/c/an;->b:Lb/b/f/c/y;

    return-void
.end method

.method private b(Lb/b/c/c/u;)I
    .registers 4

    iget-object v0, p0, Lb/b/c/c/an;->b:Lb/b/f/c/y;

    invoke-virtual {v0}, Lb/b/f/c/y;->i()Lb/b/f/c/a;

    move-result-object v0

    iget-object v1, p0, Lb/b/c/c/an;->b:Lb/b/f/c/y;

    invoke-virtual {v1}, Lb/b/f/c/y;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lb/b/c/c/u;->m()Lb/b/c/c/ac;

    move-result-object p1

    check-cast v0, Lb/b/f/c/n;

    invoke-virtual {p1, v0}, Lb/b/c/c/ac;->b(Lb/b/f/c/n;)I

    move-result p1

    return p1

    :cond_0
    iget-object v1, p0, Lb/b/c/c/an;->b:Lb/b/f/c/y;

    invoke-virtual {v1}, Lb/b/f/c/y;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Lb/b/f/c/q;

    if-eqz v1, :cond_1

    check-cast v0, Lb/b/f/c/q;

    invoke-virtual {v0}, Lb/b/f/c/q;->k()Lb/b/f/c/z;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Lb/b/c/c/u;->n()Lb/b/c/c/aq;

    move-result-object p1

    check-cast v0, Lb/b/f/c/f;

    invoke-virtual {p1, v0}, Lb/b/c/c/aq;->b(Lb/b/f/c/f;)I

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unhandled invocation type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->i:Lb/b/c/c/ai;

    return-object v0
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 3

    invoke-virtual {p1}, Lb/b/c/c/u;->o()Lb/b/c/c/ao;

    move-result-object p1

    iget-object v0, p0, Lb/b/c/c/an;->b:Lb/b/f/c/y;

    invoke-virtual {p1, v0}, Lb/b/c/c/ao;->a(Lb/b/f/c/y;)V

    return-void
.end method

.method public final a(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 10

    invoke-direct {p0, p1}, Lb/b/c/c/an;->b(Lb/b/c/c/u;)I

    move-result v0

    iget-object v1, p0, Lb/b/c/c/an;->b:Lb/b/f/c/y;

    invoke-virtual {v1}, Lb/b/f/c/y;->j()I

    move-result v1

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/c/c/an;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lb/b/c/c/an;->b:Lb/b/f/c/y;

    invoke-virtual {v4}, Lb/b/f/c/y;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " // "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lb/b/f/c/y;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "type:     "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {p2, v4, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "reserved: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, " // "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lb/b/c/c/an;->b:Lb/b/f/c/y;

    invoke-virtual {v5}, Lb/b/f/c/y;->i()Lb/b/f/c/a;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lb/b/c/c/an;->b:Lb/b/f/c/y;

    invoke-virtual {v5}, Lb/b/f/c/y;->k()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fieldId:  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v4, v0}, Lb/b/h/r;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "methodId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "reserved: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v4, v0}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_1
    invoke-interface {p2, v1}, Lb/b/h/r;->b(I)V

    invoke-interface {p2, v3}, Lb/b/h/r;->b(I)V

    invoke-direct {p0, p1}, Lb/b/c/c/an;->b(Lb/b/c/c/u;)I

    move-result p1

    invoke-interface {p2, p1}, Lb/b/h/r;->b(I)V

    invoke-interface {p2, v3}, Lb/b/h/r;->b(I)V

    return-void
.end method

.method public final c_()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method
