.class public final Lb/b/c/c/ax;
.super Lb/b/c/c/ag;


# instance fields
.field private final a:Lb/b/f/d/a;

.field private final b:Lb/b/f/c/ad;

.field private c:Lb/b/c/c/bh;


# direct methods
.method public constructor <init>(Lb/b/f/d/a;)V
    .registers 3

    invoke-direct {p0}, Lb/b/c/c/ag;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lb/b/c/c/ax;->a:Lb/b/f/d/a;

    invoke-static {p1}, Lb/b/c/c/ax;->a(Lb/b/f/d/a;)Lb/b/f/c/ad;

    move-result-object v0

    iput-object v0, p0, Lb/b/c/c/ax;->b:Lb/b/f/c/ad;

    invoke-virtual {p1}, Lb/b/f/d/a;->c()Lb/b/f/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/d/b;->a_()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lb/b/c/c/bh;

    invoke-direct {v0, p1}, Lb/b/c/c/bh;-><init>(Lb/b/f/d/e;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lb/b/c/c/ax;->c:Lb/b/c/c/bh;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "prototype == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lb/b/f/d/c;)C
    .registers 2

    invoke-virtual {p0}, Lb/b/f/d/c;->f()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x5b

    if-ne p0, v0, :cond_0

    const/16 p0, 0x4c

    :cond_0
    return p0
.end method

.method private static a(Lb/b/f/d/a;)Lb/b/f/c/ad;
    .registers 5

    invoke-virtual {p0}, Lb/b/f/d/a;->c()Lb/b/f/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/d/b;->a_()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lb/b/f/d/a;->b()Lb/b/f/d/c;

    move-result-object p0

    invoke-static {p0}, Lb/b/c/c/ax;->a(Lb/b/f/d/c;)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v1, :cond_0

    invoke-virtual {v0, p0}, Lb/b/f/d/b;->a(I)Lb/b/f/d/c;

    move-result-object v3

    invoke-static {v3}, Lb/b/c/c/ax;->a(Lb/b/f/d/c;)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lb/b/f/c/ad;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/b/f/c/ad;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->d:Lb/b/c/c/ai;

    return-object v0
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 5

    invoke-virtual {p1}, Lb/b/c/c/u;->h()Lb/b/c/c/be;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/c/c/u;->k()Lb/b/c/c/bg;

    move-result-object v1

    invoke-virtual {p1}, Lb/b/c/c/u;->f()Lb/b/c/c/ar;

    move-result-object p1

    iget-object v2, p0, Lb/b/c/c/ax;->a:Lb/b/f/d/a;

    invoke-virtual {v2}, Lb/b/f/d/a;->b()Lb/b/f/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/b/c/c/bg;->a(Lb/b/f/d/c;)Lb/b/c/c/bf;

    iget-object v1, p0, Lb/b/c/c/ax;->b:Lb/b/f/c/ad;

    invoke-virtual {v0, v1}, Lb/b/c/c/be;->a(Lb/b/f/c/ad;)Lb/b/c/c/bd;

    iget-object v0, p0, Lb/b/c/c/ax;->c:Lb/b/c/c/bh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/c/c/ax;->c:Lb/b/c/c/bh;

    invoke-virtual {p1, v0}, Lb/b/c/c/ar;->b(Lb/b/c/c/av;)Lb/b/c/c/av;

    move-result-object p1

    check-cast p1, Lb/b/c/c/bh;

    iput-object p1, p0, Lb/b/c/c/ax;->c:Lb/b/c/c/bh;

    :cond_0
    return-void
.end method

.method public final a(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 11

    invoke-virtual {p1}, Lb/b/c/c/u;->h()Lb/b/c/c/be;

    move-result-object v0

    iget-object v1, p0, Lb/b/c/c/ax;->b:Lb/b/f/c/ad;

    invoke-virtual {v0, v1}, Lb/b/c/c/be;->b(Lb/b/f/c/ad;)I

    move-result v0

    invoke-virtual {p1}, Lb/b/c/c/u;->k()Lb/b/c/c/bg;

    move-result-object p1

    iget-object v1, p0, Lb/b/c/c/ax;->a:Lb/b/f/d/a;

    invoke-virtual {v1}, Lb/b/f/d/a;->b()Lb/b/f/d/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Lb/b/c/c/bg;->b(Lb/b/f/d/c;)I

    move-result p1

    iget-object v1, p0, Lb/b/c/c/ax;->c:Lb/b/c/c/bh;

    invoke-static {v1}, Lb/b/c/c/av;->b(Lb/b/c/c/av;)I

    move-result v1

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lb/b/c/c/ax;->a:Lb/b/f/d/a;

    invoke-virtual {v3}, Lb/b/f/d/a;->b()Lb/b/f/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " proto("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/b/c/c/ax;->a:Lb/b/f/d/a;

    invoke-virtual {v3}, Lb/b/f/d/a;->c()Lb/b/f/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/d/b;->a_()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    if-eqz v6, :cond_0

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3, v6}, Lb/b/f/d/b;->a(I)Lb/b/f/d/c;

    move-result-object v7

    invoke-virtual {v7}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/c/c/ax;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  shorty_idx:      "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/b/c/c/ax;->b:Lb/b/f/c/ad;

    invoke-virtual {v3}, Lb/b/f/c/ad;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p2, v3, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "  return_type_idx: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " // "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lb/b/c/c/ax;->a:Lb/b/f/d/a;

    invoke-virtual {v4}, Lb/b/f/d/a;->b()Lb/b/f/d/c;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "  parameters_off:  "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_2
    invoke-interface {p2, v0}, Lb/b/h/r;->c(I)V

    invoke-interface {p2, p1}, Lb/b/h/r;->c(I)V

    invoke-interface {p2, v1}, Lb/b/h/r;->c(I)V

    return-void
.end method

.method public final c_()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method
