.class public final Lb/b/c/c/g;
.super Lb/b/c/c/av;


# instance fields
.field private a:Lb/b/c/c/d;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lb/b/c/c/av;-><init>(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/c/c/g;->a:Lb/b/c/c/d;

    iput-object v0, p0, Lb/b/c/c/g;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/b/c/c/g;->c:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/b/c/c/g;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(Ljava/util/ArrayList;)I
    .registers 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lb/b/c/c/av;)I
    .registers 3

    invoke-virtual {p0}, Lb/b/c/c/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lb/b/c/c/g;

    iget-object v0, p0, Lb/b/c/c/g;->a:Lb/b/c/c/d;

    iget-object p1, p1, Lb/b/c/c/g;->a:Lb/b/c/c/d;

    invoke-virtual {v0, p1}, Lb/b/c/c/d;->c(Lb/b/c/c/av;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "uninternable instance"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->t:Lb/b/c/c/ai;

    return-object v0
.end method

.method public final a(Lb/b/f/c/z;)Lb/b/f/a/c;
    .registers 6

    iget-object v0, p0, Lb/b/c/c/g;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lb/b/c/c/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/c/c/am;

    invoke-virtual {v2}, Lb/b/c/c/am;->a()Lb/b/f/c/z;

    move-result-object v3

    invoke-virtual {v3, p1}, Lb/b/f/c/z;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lb/b/c/c/am;->b()Lb/b/f/a/c;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method protected final a(Lb/b/c/c/az;I)V
    .registers 3

    iget-object p1, p0, Lb/b/c/c/g;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Lb/b/c/c/g;->a(Ljava/util/ArrayList;)I

    move-result p1

    iget-object p2, p0, Lb/b/c/c/g;->c:Ljava/util/ArrayList;

    invoke-static {p2}, Lb/b/c/c/g;->a(Ljava/util/ArrayList;)I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lb/b/c/c/g;->d:Ljava/util/ArrayList;

    invoke-static {p2}, Lb/b/c/c/g;->a(Ljava/util/ArrayList;)I

    move-result p2

    add-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x10

    invoke-virtual {p0, p1}, Lb/b/c/c/g;->a(I)V

    return-void
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 4

    invoke-virtual {p1}, Lb/b/c/c/u;->e()Lb/b/c/c/ar;

    move-result-object v0

    iget-object v1, p0, Lb/b/c/c/g;->a:Lb/b/c/c/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/b/c/c/g;->a:Lb/b/c/c/d;

    invoke-virtual {v0, v1}, Lb/b/c/c/ar;->b(Lb/b/c/c/av;)Lb/b/c/c/av;

    move-result-object v0

    check-cast v0, Lb/b/c/c/d;

    iput-object v0, p0, Lb/b/c/c/g;->a:Lb/b/c/c/d;

    :cond_0
    iget-object v0, p0, Lb/b/c/c/g;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/c/c/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/c/aa;

    invoke-virtual {v1, p1}, Lb/b/c/c/aa;->a(Lb/b/c/c/u;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/b/c/c/g;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/b/c/c/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/c/am;

    invoke-virtual {v1, p1}, Lb/b/c/c/am;->a(Lb/b/c/c/u;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lb/b/c/c/g;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/b/c/c/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/c/aw;

    invoke-virtual {v1, p1}, Lb/b/c/c/aw;->a(Lb/b/c/c/u;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final a(Lb/b/f/a/c;Lb/b/c/c/u;)V
    .registers 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lb/b/c/c/g;->a:Lb/b/c/c/d;

    if-nez v0, :cond_0

    new-instance v0, Lb/b/c/c/d;

    invoke-direct {v0, p1, p2}, Lb/b/c/c/d;-><init>(Lb/b/f/a/c;Lb/b/c/c/u;)V

    iput-object v0, p0, Lb/b/c/c/g;->a:Lb/b/c/c/d;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "class annotations already set"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "annotations == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/f/c/n;Lb/b/f/a/c;Lb/b/c/c/u;)V
    .registers 7

    iget-object v0, p0, Lb/b/c/c/g;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/c/c/g;->b:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lb/b/c/c/g;->b:Ljava/util/ArrayList;

    new-instance v1, Lb/b/c/c/aa;

    new-instance v2, Lb/b/c/c/d;

    invoke-direct {v2, p2, p3}, Lb/b/c/c/d;-><init>(Lb/b/f/a/c;Lb/b/c/c/u;)V

    invoke-direct {v1, p1, v2}, Lb/b/c/c/aa;-><init>(Lb/b/f/c/n;Lb/b/c/c/d;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lb/b/f/c/z;Lb/b/f/a/c;Lb/b/c/c/u;)V
    .registers 7

    iget-object v0, p0, Lb/b/c/c/g;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/c/c/g;->c:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lb/b/c/c/g;->c:Ljava/util/ArrayList;

    new-instance v1, Lb/b/c/c/am;

    new-instance v2, Lb/b/c/c/d;

    invoke-direct {v2, p2, p3}, Lb/b/c/c/d;-><init>(Lb/b/f/a/c;Lb/b/c/c/u;)V

    invoke-direct {v1, p1, v2}, Lb/b/c/c/am;-><init>(Lb/b/f/c/z;Lb/b/c/c/d;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lb/b/f/c/z;Lb/b/f/a/d;Lb/b/c/c/u;)V
    .registers 6

    iget-object v0, p0, Lb/b/c/c/g;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/c/c/g;->d:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lb/b/c/c/g;->d:Ljava/util/ArrayList;

    new-instance v1, Lb/b/c/c/aw;

    invoke-direct {v1, p1, p2, p3}, Lb/b/c/c/aw;-><init>(Lb/b/f/c/z;Lb/b/f/a/d;Lb/b/c/c/u;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final a_(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 12

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v0

    iget-object v1, p0, Lb/b/c/c/g;->a:Lb/b/c/c/d;

    invoke-static {v1}, Lb/b/c/c/av;->b(Lb/b/c/c/av;)I

    move-result v1

    iget-object v2, p0, Lb/b/c/c/g;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Lb/b/c/c/g;->a(Ljava/util/ArrayList;)I

    move-result v2

    iget-object v3, p0, Lb/b/c/c/g;->c:Ljava/util/ArrayList;

    invoke-static {v3}, Lb/b/c/c/g;->a(Ljava/util/ArrayList;)I

    move-result v3

    iget-object v4, p0, Lb/b/c/c/g;->d:Ljava/util/ArrayList;

    invoke-static {v4}, Lb/b/c/c/g;->a(Ljava/util/ArrayList;)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/c/c/g;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " annotations directory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  class_annotations_off: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {p2, v7, v6}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "  fields_size:           "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v7, v6}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "  methods_size:          "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v7, v6}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "  parameters_size:       "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v7, v6}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v1}, Lb/b/h/r;->c(I)V

    invoke-interface {p2, v2}, Lb/b/h/r;->c(I)V

    invoke-interface {p2, v3}, Lb/b/h/r;->c(I)V

    invoke-interface {p2, v4}, Lb/b/h/r;->c(I)V

    if-eqz v2, :cond_2

    iget-object v1, p0, Lb/b/c/c/g;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v0, :cond_1

    const-string v1, "  fields:"

    invoke-interface {p2, v5, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lb/b/c/c/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/c/c/aa;

    invoke-virtual {v2, p1, p2}, Lb/b/c/c/aa;->a(Lb/b/c/c/u;Lb/b/h/r;)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    iget-object v1, p0, Lb/b/c/c/g;->c:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v0, :cond_3

    const-string v1, "  methods:"

    invoke-interface {p2, v5, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lb/b/c/c/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/c/c/am;

    invoke-virtual {v2, p1, p2}, Lb/b/c/c/am;->a(Lb/b/c/c/u;Lb/b/h/r;)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_6

    iget-object v1, p0, Lb/b/c/c/g;->d:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v0, :cond_5

    const-string v0, "  parameters:"

    invoke-interface {p2, v5, v0}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lb/b/c/c/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/c/aw;

    invoke-virtual {v1, p1, p2}, Lb/b/c/c/aw;->a(Lb/b/c/c/u;Lb/b/h/r;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final b(Lb/b/f/c/z;)Lb/b/f/a/d;
    .registers 6

    iget-object v0, p0, Lb/b/c/c/g;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lb/b/c/c/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/c/c/aw;

    invoke-virtual {v2}, Lb/b/c/c/aw;->a()Lb/b/f/c/z;

    move-result-object v3

    invoke-virtual {v3, p1}, Lb/b/f/c/z;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lb/b/c/c/aw;->b()Lb/b/f/a/d;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Lb/b/c/c/g;->a:Lb/b/c/c/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/c/c/g;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/c/c/g;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/c/c/g;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .registers 2

    iget-object v0, p0, Lb/b/c/c/g;->a:Lb/b/c/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/c/c/g;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/c/c/g;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/c/c/g;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lb/b/c/c/g;->a:Lb/b/c/c/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lb/b/c/c/g;->a:Lb/b/c/c/d;

    invoke-virtual {v0}, Lb/b/c/c/d;->hashCode()I

    move-result v0

    return v0
.end method
