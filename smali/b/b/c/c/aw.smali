.class public final Lb/b/c/c/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/h/s;
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lb/b/f/c/z;

.field private final b:Lb/b/f/a/d;

.field private final c:Lb/b/c/c/bj;


# direct methods
.method public constructor <init>(Lb/b/f/c/z;Lb/b/f/a/d;Lb/b/c/c/u;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iput-object p1, p0, Lb/b/c/c/aw;->a:Lb/b/f/c/z;

    iput-object p2, p0, Lb/b/c/c/aw;->b:Lb/b/f/a/d;

    invoke-virtual {p2}, Lb/b/f/a/d;->a_()I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p2, v1}, Lb/b/f/a/d;->a(I)Lb/b/f/a/c;

    move-result-object v2

    new-instance v3, Lb/b/c/c/d;

    invoke-direct {v3, v2, p3}, Lb/b/c/c/d;-><init>(Lb/b/f/a/c;Lb/b/c/c/u;)V

    new-instance v2, Lb/b/c/c/e;

    invoke-direct {v2, v3}, Lb/b/c/c/e;-><init>(Lb/b/c/c/d;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lb/b/c/c/bj;

    sget-object p2, Lb/b/c/c/ai;->l:Lb/b/c/c/ai;

    invoke-direct {p1, p2, v0}, Lb/b/c/c/bj;-><init>(Lb/b/c/c/ai;Ljava/util/List;)V

    iput-object p1, p0, Lb/b/c/c/aw;->c:Lb/b/c/c/bj;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "annotationsList == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lb/b/f/c/z;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/aw;->a:Lb/b/f/c/z;

    return-object v0
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 4

    invoke-virtual {p1}, Lb/b/c/c/u;->n()Lb/b/c/c/aq;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/c/c/u;->e()Lb/b/c/c/ar;

    move-result-object p1

    iget-object v1, p0, Lb/b/c/c/aw;->a:Lb/b/f/c/z;

    invoke-virtual {v0, v1}, Lb/b/c/c/aq;->a(Lb/b/f/c/f;)Lb/b/c/c/ap;

    iget-object v0, p0, Lb/b/c/c/aw;->c:Lb/b/c/c/bj;

    invoke-virtual {p1, v0}, Lb/b/c/c/ar;->a(Lb/b/c/c/av;)V

    return-void
.end method

.method public final a(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 7

    invoke-virtual {p1}, Lb/b/c/c/u;->n()Lb/b/c/c/aq;

    move-result-object p1

    iget-object v0, p0, Lb/b/c/c/aw;->a:Lb/b/f/c/z;

    invoke-virtual {p1, v0}, Lb/b/c/c/aq;->b(Lb/b/f/c/f;)I

    move-result p1

    iget-object v0, p0, Lb/b/c/c/aw;->c:Lb/b/c/c/bj;

    invoke-virtual {v0}, Lb/b/c/c/bj;->f()I

    move-result v0

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lb/b/c/c/aw;->a:Lb/b/f/c/z;

    invoke-virtual {v3}, Lb/b/f/c/z;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "      method_idx:      "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p2, v2, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "      annotations_off: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p1}, Lb/b/h/r;->c(I)V

    invoke-interface {p2, v0}, Lb/b/h/r;->c(I)V

    return-void
.end method

.method public final b()Lb/b/f/a/d;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/aw;->b:Lb/b/f/a/d;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lb/b/c/c/aw;

    iget-object v0, p0, Lb/b/c/c/aw;->a:Lb/b/f/c/z;

    iget-object p1, p1, Lb/b/c/c/aw;->a:Lb/b/f/c/z;

    invoke-virtual {v0, p1}, Lb/b/f/c/z;->a(Lb/b/f/c/a;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lb/b/c/c/aw;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lb/b/c/c/aw;->a:Lb/b/f/c/z;

    check-cast p1, Lb/b/c/c/aw;

    iget-object p1, p1, Lb/b/c/c/aw;->a:Lb/b/f/c/z;

    invoke-virtual {v0, p1}, Lb/b/f/c/z;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final h()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/b/c/c/aw;->a:Lb/b/f/c/z;

    invoke-virtual {v1}, Lb/b/f/c/z;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/c/c/aw;->c:Lb/b/c/c/bj;

    invoke-virtual {v1}, Lb/b/c/c/bj;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/c/c/e;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3}, Lb/b/c/c/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lb/b/c/c/aw;->a:Lb/b/f/c/z;

    invoke-virtual {v0}, Lb/b/f/c/z;->hashCode()I

    move-result v0

    return v0
.end method
