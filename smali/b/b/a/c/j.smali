.class public final Lb/b/a/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/a/b/m;


# instance fields
.field private final a:Lb/b/h/c;

.field private final b:Lb/b/a/d/j;


# direct methods
.method public constructor <init>(Lb/b/h/c;Lb/b/a/d/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lb/b/a/c/j;->a:Lb/b/h/c;

    iput-object p2, p0, Lb/b/a/c/j;->b:Lb/b/a/d/j;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "observer == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bytes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(I)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lb/b/a/c/j;->a:Lb/b/h/c;

    invoke-virtual {v0, p1}, Lb/b/h/c;->f(I)I

    move-result v0

    invoke-static {v0}, Lb/b/a/b/i;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc4

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lb/b/a/c/j;->a:Lb/b/h/c;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Lb/b/h/c;->f(I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb/b/a/b/i;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public final a(I)V
    .registers 2

    return-void
.end method

.method public final a(III)V
    .registers 6

    iget-object p1, p0, Lb/b/a/c/j;->b:Lb/b/a/d/j;

    iget-object v0, p0, Lb/b/a/c/j;->a:Lb/b/h/c;

    invoke-direct {p0, p2}, Lb/b/a/c/j;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, p2, p3, v1}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    return-void
.end method

.method public final a(IIII)V
    .registers 8

    const/4 p1, 0x3

    if-gt p3, p1, :cond_0

    invoke-static {p4}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p4}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p4, p0, Lb/b/a/c/j;->b:Lb/b/a/d/j;

    iget-object v0, p0, Lb/b/a/c/j;->a:Lb/b/h/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lb/b/a/c/j;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, v0, p2, p3, p1}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    return-void
.end method

.method public final a(IIIILb/b/f/d/c;I)V
    .registers 11

    const/4 v0, 0x3

    if-gt p3, v0, :cond_0

    invoke-static {p4}, La/a/a;->r(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-static {p4}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p4

    :goto_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, ""

    const/16 v3, 0x84

    if-ne p1, v3, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, ", #"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-gt p3, v0, :cond_2

    invoke-static {p6}, La/a/a;->v(I)Ljava/lang/String;

    move-result-object p6

    goto :goto_2

    :cond_2
    invoke-static {p6}, La/a/a;->u(I)Ljava/lang/String;

    move-result-object p6

    :goto_2
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    const-string p1, ""

    invoke-virtual {p5}, Lb/b/f/d/c;->k()Z

    move-result p5

    if-eqz p5, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_4

    const-string p5, ","

    goto :goto_3

    :cond_4
    const-string p5, " //"

    :goto_3
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " category-2"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    iget-object p5, p0, Lb/b/a/c/j;->b:Lb/b/a/d/j;

    iget-object p6, p0, Lb/b/a/c/j;->a:Lb/b/h/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lb/b/a/c/j;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6

    const-string v1, " // "

    goto :goto_4

    :cond_6
    const-string v1, " "

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p6, p2, p3, p1}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    return-void
.end method

.method public final a(IIILb/b/a/b/am;I)V
    .registers 9

    invoke-virtual {p4}, Lb/b/a/b/am;->f()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {p0, p2}, Lb/b/a/c/j;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " // padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p5, 0xa

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Lb/b/a/b/am;->a(I)I

    move-result v2

    invoke-static {v2}, La/a/a;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Lb/b/a/b/am;->b(I)I

    move-result v2

    invoke-static {v2}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "  default: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lb/b/a/b/am;->g()I

    move-result p1

    invoke-static {p1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lb/b/a/c/j;->b:Lb/b/a/d/j;

    iget-object p4, p0, Lb/b/a/c/j;->a:Lb/b/h/c;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p1, p4, p2, p3, p5}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    return-void
.end method

.method public final a(IIILb/b/f/c/a;I)V
    .registers 10

    instance-of v0, p4, Lb/b/f/c/s;

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lb/b/a/c/j;->a(IIILb/b/f/d/c;)V

    return-void

    :cond_0
    instance-of v0, p4, Lb/b/f/c/p;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-ne p3, v1, :cond_1

    const-string p1, " // "

    goto :goto_0

    :cond_1
    const-string p1, " "

    :goto_0
    iget-object p4, p0, Lb/b/a/c/j;->a:Lb/b/h/c;

    invoke-virtual {p4, p2}, Lb/b/h/c;->f(I)I

    move-result p4

    if-eq p3, v1, :cond_4

    const/16 v0, 0x10

    if-ne p4, v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x11

    if-ne p4, v0, :cond_3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, La/a/a;->u(I)Ljava/lang/String;

    move-result-object p5

    goto :goto_2

    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, La/a/a;->t(I)Ljava/lang/String;

    move-result-object p5

    goto :goto_2

    :cond_4
    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, La/a/a;->v(I)Ljava/lang/String;

    move-result-object p5

    :goto_2
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lb/b/a/c/j;->b:Lb/b/a/d/j;

    iget-object v0, p0, Lb/b/a/c/j;->a:Lb/b/h/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lb/b/a/c/j;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, v0, p2, p3, p1}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    return-void

    :cond_5
    instance-of v0, p4, Lb/b/f/c/w;

    if-eqz v0, :cond_8

    check-cast p4, Lb/b/f/c/w;

    invoke-virtual {p4}, Lb/b/f/c/w;->k()J

    move-result-wide p4

    if-ne p3, v1, :cond_6

    const-string p1, " // "

    goto :goto_3

    :cond_6
    const-string p1, " #"

    :goto_3
    if-ne p3, v1, :cond_7

    long-to-int p4, p4

    invoke-static {p4}, La/a/a;->v(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_4

    :cond_7
    invoke-static {p4, p5}, La/a/a;->b(J)Ljava/lang/String;

    move-result-object p4

    :goto_4
    iget-object p5, p0, Lb/b/a/c/j;->b:Lb/b/a/d/j;

    iget-object v0, p0, Lb/b/a/c/j;->a:Lb/b/h/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lb/b/a/c/j;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, v0, p2, p3, p1}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    return-void

    :cond_8
    instance-of v0, p4, Lb/b/f/c/o;

    if-eqz v0, :cond_a

    check-cast p4, Lb/b/f/c/o;

    invoke-virtual {p4}, Lb/b/f/c/o;->j()I

    move-result p1

    if-eq p3, v1, :cond_9

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, " #"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_5

    :cond_9
    const-string p4, ""

    :goto_5
    iget-object p5, p0, Lb/b/a/c/j;->b:Lb/b/a/d/j;

    iget-object v0, p0, Lb/b/a/c/j;->a:Lb/b/h/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lb/b/a/c/j;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " // "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, v0, p2, p3, p1}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    return-void

    :cond_a
    instance-of v0, p4, Lb/b/f/c/l;

    if-eqz v0, :cond_c

    check-cast p4, Lb/b/f/c/l;

    invoke-virtual {p4}, Lb/b/f/c/l;->k()J

    move-result-wide p4

    if-eq p3, v1, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " #"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4, p5}, La/a/a;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_b
    const-string p1, ""

    :goto_6
    iget-object v0, p0, Lb/b/a/c/j;->b:Lb/b/a/d/j;

    iget-object v1, p0, Lb/b/a/c/j;->a:Lb/b/h/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lb/b/a/c/j;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " // "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4, p5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p4

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p2, p3, p1}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    return-void

    :cond_c
    const-string v0, ""

    if-eqz p5, :cond_e

    const-string v0, ", "

    const/16 v1, 0xc5

    if-ne p1, v1, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, La/a/a;->r(I)Ljava/lang/String;

    move-result-object p5

    :goto_7
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p5

    goto :goto_7

    :cond_e
    :goto_8
    iget-object p1, p0, Lb/b/a/c/j;->b:Lb/b/a/d/j;

    iget-object p5, p0, Lb/b/a/c/j;->a:Lb/b/h/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lb/b/a/c/j;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p5, p2, p3, p4}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    return-void
.end method

.method public final a(IIILb/b/f/d/c;)V
    .registers 6

    iget-object p1, p0, Lb/b/a/c/j;->b:Lb/b/a/d/j;

    iget-object p4, p0, Lb/b/a/c/j;->a:Lb/b/h/c;

    invoke-direct {p0, p2}, Lb/b/a/c/j;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p4, p2, p3, v0}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    return-void
.end method

.method public final a(IILb/b/f/c/ae;Ljava/util/ArrayList;)V
    .registers 9

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    const-string p4, " // "

    goto :goto_0

    :cond_0
    const-string p4, " "

    :goto_0
    invoke-virtual {p3}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/f/d/c;->s()Lb/b/f/d/c;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lb/b/a/c/j;->b:Lb/b/a/d/j;

    iget-object v1, p0, Lb/b/a/c/j;->a:Lb/b/h/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lb/b/a/c/j;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, v1, p1, p2, p3}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    return-void
.end method
