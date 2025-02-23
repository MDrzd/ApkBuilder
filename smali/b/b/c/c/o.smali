.class public final Lb/b/c/c/o;
.super Lb/b/c/c/av;


# instance fields
.field private final a:Lb/b/f/c/z;

.field private final b:Lb/b/c/b/i;

.field private c:Lb/b/c/c/k;

.field private final d:Z

.field private final e:Lb/b/f/d/e;

.field private f:Lb/b/c/c/t;


# direct methods
.method public constructor <init>(Lb/b/f/c/z;Lb/b/c/b/i;ZLb/b/f/d/e;)V
    .registers 7

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lb/b/c/c/av;-><init>(II)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lb/b/c/c/o;->a:Lb/b/f/c/z;

    iput-object p2, p0, Lb/b/c/c/o;->b:Lb/b/c/b/i;

    iput-boolean p3, p0, Lb/b/c/c/o;->d:Z

    iput-object p4, p0, Lb/b/c/c/o;->e:Lb/b/f/d/e;

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/c/c/o;->c:Lb/b/c/c/k;

    iput-object p1, p0, Lb/b/c/c/o;->f:Lb/b/c/c/t;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "throwsList == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "code == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ref == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()I
    .registers 3

    iget-object v0, p0, Lb/b/c/c/o;->a:Lb/b/f/c/z;

    iget-boolean v1, p0, Lb/b/c/c/o;->d:Z

    invoke-virtual {v0, v1}, Lb/b/f/c/z;->b(Z)I

    move-result v0

    return v0
.end method

.method private d()I
    .registers 2

    iget-object v0, p0, Lb/b/c/c/o;->b:Lb/b/c/b/i;

    invoke-virtual {v0}, Lb/b/c/b/i;->f()Lb/b/c/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/c/b/l;->i()I

    move-result v0

    return v0
.end method

.method private e()I
    .registers 2

    iget-object v0, p0, Lb/b/c/c/o;->b:Lb/b/c/b/i;

    invoke-virtual {v0}, Lb/b/c/b/i;->f()Lb/b/c/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/c/b/l;->g()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->o:Lb/b/c/c/ai;

    return-object v0
.end method

.method protected final a(Lb/b/c/c/az;I)V
    .registers 4

    invoke-virtual {p1}, Lb/b/c/c/az;->e()Lb/b/c/c/u;

    move-result-object p1

    iget-object p2, p0, Lb/b/c/c/o;->b:Lb/b/c/b/i;

    new-instance v0, Lb/b/c/c/p;

    invoke-direct {v0, p0, p1}, Lb/b/c/c/p;-><init>(Lb/b/c/c/o;Lb/b/c/c/u;)V

    invoke-virtual {p2, v0}, Lb/b/c/b/i;->a(Lb/b/c/b/j;)V

    iget-object p2, p0, Lb/b/c/c/o;->c:Lb/b/c/c/k;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lb/b/c/c/o;->c:Lb/b/c/c/k;

    invoke-virtual {p2, p1}, Lb/b/c/c/k;->a(Lb/b/c/c/u;)V

    iget-object p1, p0, Lb/b/c/c/o;->c:Lb/b/c/c/k;

    invoke-virtual {p1}, Lb/b/c/c/k;->b()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lb/b/c/c/o;->b:Lb/b/c/b/i;

    invoke-virtual {p2}, Lb/b/c/b/i;->f()Lb/b/c/b/l;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/c/b/l;->f()I

    move-result p2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    shl-int/lit8 p2, p2, 0x1

    add-int/lit8 p2, p2, 0x10

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lb/b/c/c/o;->a(I)V

    return-void
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 8

    invoke-virtual {p1}, Lb/b/c/c/u;->q()Lb/b/c/c/ar;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/c/c/u;->k()Lb/b/c/c/bg;

    move-result-object v1

    iget-object v2, p0, Lb/b/c/c/o;->b:Lb/b/c/b/i;

    invoke-virtual {v2}, Lb/b/c/b/i;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lb/b/c/c/o;->b:Lb/b/c/b/i;

    invoke-virtual {v2}, Lb/b/c/b/i;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lb/b/c/c/t;

    iget-object v3, p0, Lb/b/c/c/o;->b:Lb/b/c/b/i;

    iget-boolean v4, p0, Lb/b/c/c/o;->d:Z

    iget-object v5, p0, Lb/b/c/c/o;->a:Lb/b/f/c/z;

    invoke-direct {v2, v3, v4, v5}, Lb/b/c/c/t;-><init>(Lb/b/c/b/i;ZLb/b/f/c/z;)V

    iput-object v2, p0, Lb/b/c/c/o;->f:Lb/b/c/c/t;

    iget-object v2, p0, Lb/b/c/c/o;->f:Lb/b/c/c/t;

    invoke-virtual {v0, v2}, Lb/b/c/c/ar;->a(Lb/b/c/c/av;)V

    :cond_1
    iget-object v0, p0, Lb/b/c/c/o;->b:Lb/b/c/b/i;

    invoke-virtual {v0}, Lb/b/c/b/i;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/b/c/c/o;->b:Lb/b/c/b/i;

    invoke-virtual {v0}, Lb/b/c/b/i;->d()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/d/c;

    invoke-virtual {v1, v2}, Lb/b/c/c/bg;->a(Lb/b/f/d/c;)Lb/b/c/c/bf;

    goto :goto_0

    :cond_2
    new-instance v0, Lb/b/c/c/k;

    iget-object v1, p0, Lb/b/c/c/o;->b:Lb/b/c/b/i;

    invoke-direct {v0, v1}, Lb/b/c/c/k;-><init>(Lb/b/c/b/i;)V

    iput-object v0, p0, Lb/b/c/c/o;->c:Lb/b/c/c/k;

    :cond_3
    iget-object v0, p0, Lb/b/c/c/o;->b:Lb/b/c/b/i;

    invoke-virtual {v0}, Lb/b/c/b/i;->e()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/f/c/a;

    invoke-virtual {p1, v1}, Lb/b/c/c/u;->a(Lb/b/f/c/a;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final a(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/b/c/c/o;->a:Lb/b/f/c/z;

    invoke-virtual {v1}, Lb/b/f/c/z;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lb/b/c/c/o;->b:Lb/b/c/b/i;

    invoke-virtual {v0}, Lb/b/c/b/i;->f()Lb/b/c/b/l;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "regs: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lb/b/c/c/o;->e()I

    move-result v2

    invoke-static {v2}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; ins: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lb/b/c/c/o;->c()I

    move-result v2

    invoke-static {v2}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; outs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lb/b/c/c/o;->d()I

    move-result v2

    invoke-static {v2}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3}, Lb/b/c/b/l;->a(Ljava/io/Writer;Ljava/lang/String;Z)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lb/b/c/c/o;->c:Lb/b/c/c/k;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "catches"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lb/b/c/c/o;->c:Lb/b/c/c/k;

    invoke-virtual {v0, p1, p3}, Lb/b/c/c/k;->a(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lb/b/c/c/o;->f:Lb/b/c/c/t;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "debug info"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lb/b/c/c/o;->f:Lb/b/c/c/t;

    invoke-virtual {p2, p1, p3}, Lb/b/c/c/t;->a(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected final a_(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 16

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v0

    invoke-direct {p0}, Lb/b/c/c/o;->e()I

    move-result v1

    invoke-direct {p0}, Lb/b/c/c/o;->d()I

    move-result v2

    invoke-direct {p0}, Lb/b/c/c/o;->c()I

    move-result v3

    iget-object v4, p0, Lb/b/c/c/o;->b:Lb/b/c/b/i;

    invoke-virtual {v4}, Lb/b/c/b/i;->f()Lb/b/c/b/l;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/c/b/l;->f()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v7, p0, Lb/b/c/c/o;->c:Lb/b/c/c/k;

    if-nez v7, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lb/b/c/c/o;->c:Lb/b/c/c/k;

    invoke-virtual {v7}, Lb/b/c/c/k;->a()I

    move-result v7

    :goto_1
    iget-object v8, p0, Lb/b/c/c/o;->f:Lb/b/c/c/t;

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lb/b/c/c/o;->f:Lb/b/c/c/t;

    invoke-virtual {v8}, Lb/b/c/c/t;->f()I

    move-result v8

    :goto_2
    const/4 v9, 0x2

    if-eqz v0, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/c/c/o;->h()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lb/b/c/c/o;->a:Lb/b/f/c/z;

    invoke-virtual {v11}, Lb/b/f/c/z;->h()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v6, v10}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  registers_size: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  ins_size:       "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  outs_size:      "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  tries_size:     "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  debug_off:      "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-interface {p2, v11, v10}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "  insns_size:     "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v11, v10}, Lb/b/h/r;->a(ILjava/lang/String;)V

    iget-object v10, p0, Lb/b/c/c/o;->e:Lb/b/f/d/e;

    invoke-interface {v10}, Lb/b/f/d/e;->a_()I

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  throws "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lb/b/c/c/o;->e:Lb/b/f/d/e;

    invoke-static {v11}, Lb/b/f/d/b;->a(Lb/b/f/d/e;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v6, v10}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_3
    invoke-interface {p2, v1}, Lb/b/h/r;->b(I)V

    invoke-interface {p2, v3}, Lb/b/h/r;->b(I)V

    invoke-interface {p2, v2}, Lb/b/h/r;->b(I)V

    invoke-interface {p2, v7}, Lb/b/h/r;->b(I)V

    invoke-interface {p2, v8}, Lb/b/h/r;->c(I)V

    invoke-interface {p2, v4}, Lb/b/h/r;->c(I)V

    iget-object v1, p0, Lb/b/c/c/o;->b:Lb/b/c/b/i;

    invoke-virtual {v1}, Lb/b/c/b/i;->f()Lb/b/c/b/l;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p2}, Lb/b/c/b/l;->a(Lb/b/h/r;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lb/b/c/c/o;->c:Lb/b/c/c/k;

    if-eqz v1, :cond_6

    if-eqz v5, :cond_5

    if-eqz v0, :cond_4

    const-string v1, "  padding: 0"

    invoke-interface {p2, v9, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_4
    invoke-interface {p2, v6}, Lb/b/h/r;->b(I)V

    :cond_5
    iget-object v1, p0, Lb/b/c/c/o;->c:Lb/b/c/c/k;

    invoke-virtual {v1, p2}, Lb/b/c/c/k;->a(Lb/b/h/r;)V

    :cond_6
    if-eqz v0, :cond_7

    iget-object v0, p0, Lb/b/c/c/o;->f:Lb/b/c/c/t;

    if-eqz v0, :cond_7

    const-string v0, "  debug info"

    invoke-interface {p2, v6, v0}, Lb/b/h/r;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lb/b/c/c/o;->f:Lb/b/c/c/t;

    const-string v1, "    "

    invoke-virtual {v0, p1, p2, v1}, Lb/b/c/c/t;->a(Lb/b/c/c/u;Lb/b/h/r;Ljava/lang/String;)V

    :cond_7
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "...while writing instructions for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lb/b/c/c/o;->a:Lb/b/f/c/z;

    invoke-virtual {v0}, Lb/b/f/c/z;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lb/a/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lb/a/a/c;

    move-result-object p1

    throw p1
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/o;->a:Lb/b/f/c/z;

    invoke-virtual {v0}, Lb/b/f/c/z;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CodeItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/b/c/c/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
