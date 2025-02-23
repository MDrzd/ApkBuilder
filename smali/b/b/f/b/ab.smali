.class public final Lb/b/f/b/ab;
.super Lb/b/f/b/e;


# instance fields
.field private final a:Lb/b/f/d/e;


# direct methods
.method public constructor <init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;Lb/b/f/c/a;)V
    .registers 12

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lb/b/f/b/e;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;Lb/b/f/c/a;)V

    invoke-virtual {p1}, Lb/b/f/b/x;->d()I

    move-result p2

    const/4 p3, 0x6

    if-ne p2, p3, :cond_1

    if-eqz p4, :cond_0

    iput-object p4, p0, Lb/b/f/b/ab;->a:Lb/b/f/d/e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "opcode with invalid branchingness: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/b/f/b/x;->d()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final a(Lb/b/f/b/r;Lb/b/f/b/u;)Lb/b/f/b/i;
    .registers 9

    new-instance p1, Lb/b/f/b/ab;

    invoke-virtual {p0}, Lb/b/f/b/ab;->e()Lb/b/f/b/x;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/f/b/ab;->f()Lb/b/f/b/z;

    move-result-object v2

    iget-object v4, p0, Lb/b/f/b/ab;->a:Lb/b/f/d/e;

    invoke-virtual {p0}, Lb/b/f/b/ab;->e_()Lb/b/f/c/a;

    move-result-object v5

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lb/b/f/b/ab;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;Lb/b/f/c/a;)V

    return-object p1
.end method

.method public final a(Lb/b/f/d/c;)Lb/b/f/b/i;
    .registers 9

    new-instance v6, Lb/b/f/b/ab;

    invoke-virtual {p0}, Lb/b/f/b/ab;->e()Lb/b/f/b/x;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/f/b/ab;->f()Lb/b/f/b/z;

    move-result-object v2

    invoke-virtual {p0}, Lb/b/f/b/ab;->j()Lb/b/f/b/u;

    move-result-object v3

    iget-object v0, p0, Lb/b/f/b/ab;->a:Lb/b/f/d/e;

    invoke-interface {v0, p1}, Lb/b/f/d/e;->a(Lb/b/f/d/c;)Lb/b/f/d/e;

    move-result-object v4

    invoke-virtual {p0}, Lb/b/f/b/ab;->e_()Lb/b/f/c/a;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lb/b/f/b/ab;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;Lb/b/f/c/a;)V

    return-object v6
.end method

.method public final a()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lb/b/f/b/ab;->e_()Lb/b/f/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/c/a;->h()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Lb/b/f/c/ad;

    if-eqz v2, :cond_0

    check-cast v0, Lb/b/f/c/ad;

    invoke-virtual {v0}, Lb/b/f/c/ad;->i()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/f/b/ab;->a:Lb/b/f/d/e;

    invoke-static {v1}, Lb/b/f/b/ac;->a(Lb/b/f/d/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lb/b/f/b/k;)V
    .registers 2

    invoke-interface {p1, p0}, Lb/b/f/b/k;->a(Lb/b/f/b/ab;)V

    return-void
.end method

.method public final b()Lb/b/f/d/e;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/ab;->a:Lb/b/f/d/e;

    return-object v0
.end method
