.class public final Lb/b/c/c/l;
.super Lb/b/c/c/av;


# instance fields
.field private final a:Lb/b/f/c/ae;

.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/util/HashMap;

.field private final d:Ljava/util/ArrayList;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private g:Lb/b/f/c/d;

.field private h:[B


# direct methods
.method public constructor <init>(Lb/b/f/c/ae;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lb/b/c/c/av;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/c/c/l;->a:Lb/b/f/c/ae;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lb/b/c/c/l;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lb/b/c/c/l;->c:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lb/b/c/c/l;->d:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lb/b/c/c/l;->e:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lb/b/c/c/l;->f:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/c/c/l;->g:Lb/b/f/c/d;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "thisClass == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lb/b/c/c/u;Lb/b/h/r;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lb/b/h/r;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/c/y;

    invoke-virtual {v1, p0, p1, p2, v2}, Lb/b/c/c/y;->a(Lb/b/c/c/u;Lb/b/h/r;II)I

    move-result p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a(Lb/b/h/r;Ljava/lang/String;I)V
    .registers 7

    invoke-interface {p0}, Lb/b/h/r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "  %-21s %08x"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_size:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lb/b/h/r;->a(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0, p2}, Lb/b/h/r;->e(I)I

    return-void
.end method

.method private b(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 7

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/c/c/l;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " class data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/b/c/c/l;->a:Lb/b/f/c/ae;

    invoke-virtual {v3}, Lb/b/f/c/ae;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_0
    const-string v1, "static_fields"

    iget-object v2, p0, Lb/b/c/c/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p2, v1, v2}, Lb/b/c/c/l;->a(Lb/b/h/r;Ljava/lang/String;I)V

    const-string v1, "instance_fields"

    iget-object v2, p0, Lb/b/c/c/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p2, v1, v2}, Lb/b/c/c/l;->a(Lb/b/h/r;Ljava/lang/String;I)V

    const-string v1, "direct_methods"

    iget-object v2, p0, Lb/b/c/c/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p2, v1, v2}, Lb/b/c/c/l;->a(Lb/b/h/r;Ljava/lang/String;I)V

    const-string v1, "virtual_methods"

    iget-object v2, p0, Lb/b/c/c/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p2, v1, v2}, Lb/b/c/c/l;->a(Lb/b/h/r;Ljava/lang/String;I)V

    const-string v1, "static_fields"

    iget-object v2, p0, Lb/b/c/c/l;->b:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lb/b/c/c/l;->a(Lb/b/c/c/u;Lb/b/h/r;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "instance_fields"

    iget-object v2, p0, Lb/b/c/c/l;->d:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lb/b/c/c/l;->a(Lb/b/c/c/u;Lb/b/h/r;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "direct_methods"

    iget-object v2, p0, Lb/b/c/c/l;->e:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lb/b/c/c/l;->a(Lb/b/c/c/u;Lb/b/h/r;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "virtual_methods"

    iget-object v2, p0, Lb/b/c/c/l;->f:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lb/b/c/c/l;->a(Lb/b/c/c/u;Lb/b/h/r;Ljava/lang/String;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lb/b/h/r;->f()V

    :cond_1
    return-void
.end method

.method private i()Lb/b/f/c/d;
    .registers 7

    iget-object v0, p0, Lb/b/c/c/l;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lb/b/c/c/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    iget-object v1, p0, Lb/b/c/c/l;->b:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/c/x;

    iget-object v2, p0, Lb/b/c/c/l;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/f/c/a;

    instance-of v2, v1, Lb/b/f/c/v;

    if-eqz v2, :cond_0

    check-cast v1, Lb/b/f/c/v;

    invoke-virtual {v1}, Lb/b/f/c/v;->k()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_0
    if-nez v1, :cond_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const/4 v0, 0x0

    return-object v0

    :cond_3
    new-instance v1, Lb/b/f/c/e;

    invoke-direct {v1, v0}, Lb/b/f/c/e;-><init>(I)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lb/b/c/c/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/c/c/x;

    iget-object v4, p0, Lb/b/c/c/l;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/f/c/a;

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lb/b/c/c/x;->a()Lb/b/f/c/n;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/c/n;->a()Lb/b/f/d/c;

    move-result-object v3

    invoke-static {v3}, La/a/a;->a(Lb/b/f/d/c;)Lb/b/f/c/a;

    move-result-object v4

    :cond_4
    invoke-virtual {v1, v2, v4}, Lb/b/f/c/e;->a(ILb/b/f/c/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lb/b/f/c/e;->b_()V

    new-instance v0, Lb/b/f/c/d;

    invoke-direct {v0, v1}, Lb/b/f/c/d;-><init>(Lb/b/f/c/e;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->n:Lb/b/c/c/ai;

    return-object v0
.end method

.method protected final a(Lb/b/c/c/az;I)V
    .registers 3

    new-instance p2, Lb/b/h/f;

    invoke-direct {p2}, Lb/b/h/f;-><init>()V

    invoke-virtual {p1}, Lb/b/c/c/az;->e()Lb/b/c/c/u;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lb/b/c/c/l;->b(Lb/b/c/c/u;Lb/b/h/r;)V

    invoke-virtual {p2}, Lb/b/h/f;->b()[B

    move-result-object p1

    iput-object p1, p0, Lb/b/c/c/l;->h:[B

    iget-object p1, p0, Lb/b/c/c/l;->h:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Lb/b/c/c/l;->a(I)V

    return-void
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 4

    iget-object v0, p0, Lb/b/c/c/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/b/c/c/l;->e()Lb/b/f/c/d;

    iget-object v0, p0, Lb/b/c/c/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/c/x;

    invoke-virtual {v1, p1}, Lb/b/c/c/x;->a(Lb/b/c/c/u;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/c/c/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/b/c/c/l;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lb/b/c/c/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/c/x;

    invoke-virtual {v1, p1}, Lb/b/c/c/x;->a(Lb/b/c/c/u;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lb/b/c/c/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/b/c/c/l;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lb/b/c/c/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/c/z;

    invoke-virtual {v1, p1}, Lb/b/c/c/z;->a(Lb/b/c/c/u;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lb/b/c/c/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/b/c/c/l;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lb/b/c/c/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/c/z;

    invoke-virtual {v1, p1}, Lb/b/c/c/z;->a(Lb/b/c/c/u;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final a(Lb/b/c/c/x;)V
    .registers 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/b/c/c/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "field == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/c/c/x;Lb/b/f/c/a;)V
    .registers 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lb/b/c/c/l;->g:Lb/b/f/c/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/c/c/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/b/c/c/l;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "static fields already sorted"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "field == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/c/c/z;)V
    .registers 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/b/c/c/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a_(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 4

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lb/b/c/c/l;->b(Lb/b/c/c/u;Lb/b/h/r;)V

    return-void

    :cond_0
    iget-object p1, p0, Lb/b/c/c/l;->h:[B

    invoke-interface {p2, p1}, Lb/b/h/r;->a([B)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lb/b/c/c/z;)V
    .registers 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/b/c/c/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Lb/b/c/c/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/c/c/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/c/c/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/c/c/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/util/ArrayList;
    .registers 3

    iget-object v0, p0, Lb/b/c/c/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lb/b/c/c/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lb/b/c/c/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lb/b/c/c/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public final e()Lb/b/f/c/d;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/l;->g:Lb/b/f/c/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/c/c/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/b/c/c/l;->i()Lb/b/f/c/d;

    move-result-object v0

    iput-object v0, p0, Lb/b/c/c/l;->g:Lb/b/f/c/d;

    :cond_0
    iget-object v0, p0, Lb/b/c/c/l;->g:Lb/b/f/c/d;

    return-object v0
.end method
