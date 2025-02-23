.class public final Lb/b/g/aa;
.super Lb/b/g/aj;


# instance fields
.field private final a:I

.field private final b:Ljava/util/ArrayList;

.field private c:Lb/b/f/b/u;


# direct methods
.method public constructor <init>(ILb/b/g/af;)V
    .registers 4

    sget-object v0, Lb/b/f/d/c;->i:Lb/b/f/d/c;

    invoke-static {p1, v0}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lb/b/g/aj;-><init>(Lb/b/f/b/r;Lb/b/g/af;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lb/b/g/aa;->b:Ljava/util/ArrayList;

    iput p1, p0, Lb/b/g/aa;->a:I

    return-void
.end method

.method public constructor <init>(Lb/b/f/b/r;Lb/b/g/af;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lb/b/g/aj;-><init>(Lb/b/f/b/r;Lb/b/g/af;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lb/b/g/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result p1

    iput p1, p0, Lb/b/g/aa;->a:I

    return-void
.end method

.method private static p()Lb/b/g/aa;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t clone phi"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(I)I
    .registers 3

    iget-object v0, p0, Lb/b/g/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/g/ab;

    iget p1, p1, Lb/b/g/ab;->b:I

    return p1
.end method

.method public final a()Lb/b/f/b/u;
    .registers 5

    iget-object v0, p0, Lb/b/g/aa;->c:Lb/b/f/b/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/g/aa;->c:Lb/b/f/b/u;

    return-object v0

    :cond_0
    iget-object v0, p0, Lb/b/g/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    return-object v0

    :cond_1
    iget-object v0, p0, Lb/b/g/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lb/b/f/b/u;

    invoke-direct {v1, v0}, Lb/b/f/b/u;-><init>(I)V

    iput-object v1, p0, Lb/b/g/aa;->c:Lb/b/f/b/u;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lb/b/g/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/ab;

    iget-object v3, p0, Lb/b/g/aa;->c:Lb/b/f/b/u;

    iget-object v2, v2, Lb/b/g/ab;->a:Lb/b/f/b/r;

    invoke-virtual {v3, v1, v2}, Lb/b/f/b/u;->a(ILb/b/f/b/r;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lb/b/g/aa;->c:Lb/b/f/b/u;

    invoke-virtual {v0}, Lb/b/f/b/u;->b_()V

    iget-object v0, p0, Lb/b/g/aa;->c:Lb/b/f/b/u;

    return-object v0
.end method

.method public final a(ILb/b/g/al;)Ljava/util/List;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lb/b/g/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/ab;

    iget-object v3, v2, Lb/b/g/ab;->a:Lb/b/f/b/r;

    invoke-virtual {v3}, Lb/b/f/b/r;->f()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {p2}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v3

    iget v2, v2, Lb/b/g/ab;->b:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final a(Lb/b/f/b/r;)V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lb/b/g/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/ab;

    iget-object v3, v2, Lb/b/g/ab;->a:Lb/b/f/b/r;

    invoke-virtual {v3}, Lb/b/f/b/r;->f()I

    move-result v3

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lb/b/g/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/g/aa;->c:Lb/b/f/b/u;

    return-void
.end method

.method public final a(Lb/b/f/b/r;Lb/b/g/af;)V
    .registers 6

    iget-object v0, p0, Lb/b/g/aa;->b:Ljava/util/ArrayList;

    new-instance v1, Lb/b/g/ab;

    invoke-virtual {p2}, Lb/b/g/af;->e()I

    move-result v2

    invoke-virtual {p2}, Lb/b/g/af;->f()I

    move-result p2

    invoke-direct {v1, p1, v2, p2}, Lb/b/g/ab;-><init>(Lb/b/f/b/r;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/g/aa;->c:Lb/b/f/b/u;

    return-void
.end method

.method public final a(Lb/b/f/d/d;Lb/b/f/b/n;)V
    .registers 4

    invoke-virtual {p0}, Lb/b/g/aa;->n()Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-static {v0, p1, p2}, Lb/b/f/b/r;->b(ILb/b/f/d/d;Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/g/aa;->b(Lb/b/f/b/r;)V

    return-void
.end method

.method public final a(Lb/b/g/ad;)V
    .registers 6

    iget-object v0, p0, Lb/b/g/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/ab;

    iget-object v2, v1, Lb/b/g/ab;->a:Lb/b/f/b/r;

    invoke-virtual {p1, v2}, Lb/b/g/ad;->a(Lb/b/f/b/r;)Lb/b/f/b/r;

    move-result-object v3

    iput-object v3, v1, Lb/b/g/ab;->a:Lb/b/f/b/r;

    iget-object v3, v1, Lb/b/g/ab;->a:Lb/b/f/b/r;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lb/b/g/aa;->o()Lb/b/g/af;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/g/af;->n()Lb/b/g/al;

    move-result-object v3

    iget-object v1, v1, Lb/b/g/ab;->a:Lb/b/f/b/r;

    invoke-virtual {v3, p0, v2, v1}, Lb/b/g/al;->a(Lb/b/g/aj;Lb/b/f/b/r;Lb/b/f/b/r;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/g/aa;->c:Lb/b/f/b/u;

    return-void
.end method

.method public final a(Lb/b/g/ak;)V
    .registers 2

    invoke-interface {p1, p0}, Lb/b/g/ak;->a(Lb/b/g/aa;)V

    return-void
.end method

.method public final a(Lb/b/g/al;)V
    .registers 6

    iget-object v0, p0, Lb/b/g/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/ab;

    iget-object v2, v1, Lb/b/g/ab;->a:Lb/b/f/b/r;

    invoke-virtual {v2}, Lb/b/f/b/r;->f()I

    move-result v2

    invoke-virtual {p1, v2}, Lb/b/g/al;->c(I)Lb/b/g/aj;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v2

    iget-object v3, v1, Lb/b/g/ab;->a:Lb/b/f/b/r;

    invoke-virtual {v2}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v2

    invoke-virtual {v3, v2}, Lb/b/f/b/r;->a(Lb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v2

    iput-object v2, v1, Lb/b/g/ab;->a:Lb/b/f/b/r;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/g/aa;->c:Lb/b/f/b/u;

    return-void
.end method

.method public final b()Lb/b/f/b/i;
    .registers 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot convert phi insns to rop form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Lb/b/f/b/x;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lb/b/g/aa;->p()Lb/b/g/aa;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lb/b/f/b/i;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lb/b/g/aa;->a:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lb/b/f/b/z;->a:Lb/b/f/b/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": phi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/b/g/aa;->n()Lb/b/f/b/r;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, " ."

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lb/b/f/b/r;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    const-string v1, " <-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/b/g/aa;->a()Lb/b/f/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/u;->a_()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " ."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lb/b/g/aa;->c:Lb/b/f/b/u;

    invoke-virtual {v4, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/b/r;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[b="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lb/b/g/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/g/ab;

    iget v4, v4, Lb/b/g/ab;->c:I

    invoke-static {v4}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final l()Z
    .registers 2

    invoke-static {}, Lb/b/g/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/g/aa;->e()Lb/b/f/b/r;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic m()Lb/b/g/aj;
    .registers 2

    invoke-static {}, Lb/b/g/aa;->p()Lb/b/g/aa;

    move-result-object v0

    return-object v0
.end method
