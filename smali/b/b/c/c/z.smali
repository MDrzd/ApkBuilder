.class public final Lb/b/c/c/z;
.super Lb/b/c/c/y;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lb/b/f/c/z;

.field private final b:Lb/b/c/c/o;


# direct methods
.method public constructor <init>(Lb/b/f/c/z;ILb/b/c/b/i;Lb/b/f/d/e;)V
    .registers 6

    invoke-direct {p0, p2}, Lb/b/c/c/y;-><init>(I)V

    iput-object p1, p0, Lb/b/c/c/z;->a:Lb/b/f/c/z;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/c/c/z;->b:Lb/b/c/c/o;

    return-void

    :cond_0
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Lb/b/c/c/o;

    invoke-direct {v0, p1, p3, p2, p4}, Lb/b/c/c/o;-><init>(Lb/b/f/c/z;Lb/b/c/b/i;ZLb/b/f/d/e;)V

    iput-object v0, p0, Lb/b/c/c/z;->b:Lb/b/c/c/o;

    return-void
.end method

.method private a(Lb/b/c/c/z;)I
    .registers 3

    iget-object v0, p0, Lb/b/c/c/z;->a:Lb/b/f/c/z;

    iget-object p1, p1, Lb/b/c/c/z;->a:Lb/b/f/c/z;

    invoke-virtual {v0, p1}, Lb/b/f/c/z;->a(Lb/b/f/c/a;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(Lb/b/c/c/u;Lb/b/h/r;II)I
    .registers 11

    invoke-virtual {p1}, Lb/b/c/c/u;->n()Lb/b/c/c/aq;

    move-result-object p1

    iget-object v0, p0, Lb/b/c/c/z;->a:Lb/b/f/c/z;

    invoke-virtual {p1, v0}, Lb/b/c/c/aq;->b(Lb/b/f/c/f;)I

    move-result p1

    sub-int p3, p1, p3

    invoke-virtual {p0}, Lb/b/c/c/z;->b()I

    move-result v0

    iget-object v1, p0, Lb/b/c/c/z;->b:Lb/b/c/c/o;

    invoke-static {v1}, Lb/b/c/c/av;->b(Lb/b/c/c/av;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    and-int/lit16 v5, v0, 0x500

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ne v4, v5, :cond_3

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "  [%x] %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v5, v3

    iget-object p4, p0, Lb/b/c/c/z;->a:Lb/b/f/c/z;

    invoke-virtual {p4}, Lb/b/f/c/z;->h()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, v3, p4}, Lb/b/h/r;->a(ILjava/lang/String;)V

    invoke-static {p3}, La/a/a;->b(I)I

    move-result p4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    method_idx:   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p4, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    invoke-static {v0}, La/a/a;->b(I)I

    move-result p4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    access_flags: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p4, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    invoke-static {v1}, La/a/a;->b(I)I

    move-result p4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    code_off:     "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p4, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_2
    invoke-interface {p2, p3}, Lb/b/h/r;->e(I)I

    invoke-interface {p2, v0}, Lb/b/h/r;->e(I)I

    invoke-interface {p2, v1}, Lb/b/h/r;->e(I)I

    return p1

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "code vs. access_flags mismatch"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Lb/b/f/c/ad;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/z;->a:Lb/b/f/c/z;

    invoke-virtual {v0}, Lb/b/f/c/z;->m()Lb/b/f/c/aa;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/c/aa;->a()Lb/b/f/c/ad;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 4

    invoke-virtual {p1}, Lb/b/c/c/u;->n()Lb/b/c/c/aq;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/c/c/u;->e()Lb/b/c/c/ar;

    move-result-object p1

    iget-object v1, p0, Lb/b/c/c/z;->a:Lb/b/f/c/z;

    invoke-virtual {v0, v1}, Lb/b/c/c/aq;->a(Lb/b/f/c/f;)Lb/b/c/c/ap;

    iget-object v0, p0, Lb/b/c/c/z;->b:Lb/b/c/c/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/c/c/z;->b:Lb/b/c/c/o;

    invoke-virtual {p1, v0}, Lb/b/c/c/ar;->a(Lb/b/c/c/av;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/io/PrintWriter;Z)V
    .registers 5

    iget-object v0, p0, Lb/b/c/c/z;->b:Lb/b/c/c/o;

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lb/b/c/c/z;->a:Lb/b/f/c/z;

    invoke-virtual {v0}, Lb/b/f/c/z;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": abstract or native"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lb/b/c/c/z;->b:Lb/b/c/c/o;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1, p2}, Lb/b/c/c/o;->a(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    return-void
.end method

.method public final c()Lb/b/f/c/z;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/z;->a:Lb/b/f/c/z;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/b/c/c/z;

    invoke-direct {p0, p1}, Lb/b/c/c/z;->a(Lb/b/c/c/z;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lb/b/c/c/z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lb/b/c/c/z;

    invoke-direct {p0, p1}, Lb/b/c/c/z;->a(Lb/b/c/c/z;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/z;->a:Lb/b/f/c/z;

    invoke-virtual {v0}, Lb/b/f/c/z;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/b/c/c/z;->b()I

    move-result v1

    invoke-static {v1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/b/c/c/z;->a:Lb/b/f/c/z;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/b/c/c/z;->b:Lb/b/c/c/o;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/c/c/z;->b:Lb/b/c/c/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
