.class public final Lb/b/a/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/a/d/g;


# instance fields
.field private final a:Lb/b/a/d/g;

.field private final b:Lb/b/a/d/c;

.field private final c:Lb/b/a/a/c;

.field private final d:Lb/b/a/b/q;

.field private final e:Lb/b/a/b/s;


# direct methods
.method public constructor <init>(Lb/b/a/d/g;Lb/b/a/d/c;ZZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/b/n;->a:Lb/b/a/d/g;

    iput-object p2, p0, Lb/b/a/b/n;->b:Lb/b/a/d/c;

    invoke-interface {p1}, Lb/b/a/d/g;->g()Lb/b/a/d/b;

    move-result-object p1

    const-string p2, "Code"

    invoke-interface {p1, p2}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object p1

    check-cast p1, Lb/b/a/a/c;

    iput-object p1, p0, Lb/b/a/b/n;->c:Lb/b/a/a/c;

    iget-object p1, p0, Lb/b/a/b/n;->c:Lb/b/a/a/c;

    invoke-virtual {p1}, Lb/b/a/a/c;->f()Lb/b/a/d/b;

    move-result-object p1

    sget-object p2, Lb/b/a/b/q;->a:Lb/b/a/b/q;

    if-eqz p3, :cond_0

    const-string p3, "LineNumberTable"

    invoke-interface {p1, p3}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object p3

    :goto_0
    check-cast p3, Lb/b/a/a/i;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lb/b/a/a/i;->b()Lb/b/a/b/q;

    move-result-object v0

    invoke-static {p2, v0}, Lb/b/a/b/q;->a(Lb/b/a/b/q;Lb/b/a/b/q;)Lb/b/a/b/q;

    move-result-object p2

    invoke-interface {p1, p3}, Lb/b/a/d/b;->a(Lb/b/a/d/a;)Lb/b/a/d/a;

    move-result-object p3

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lb/b/a/b/n;->d:Lb/b/a/b/q;

    sget-object p2, Lb/b/a/b/s;->a:Lb/b/a/b/s;

    if-eqz p4, :cond_3

    const-string p3, "LocalVariableTable"

    invoke-interface {p1, p3}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object p3

    :goto_1
    check-cast p3, Lb/b/a/a/j;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lb/b/a/a/j;->b()Lb/b/a/b/s;

    move-result-object p4

    invoke-static {p2, p4}, Lb/b/a/b/s;->a(Lb/b/a/b/s;Lb/b/a/b/s;)Lb/b/a/b/s;

    move-result-object p2

    invoke-interface {p1, p3}, Lb/b/a/d/b;->a(Lb/b/a/d/a;)Lb/b/a/d/a;

    move-result-object p3

    goto :goto_1

    :cond_1
    sget-object p3, Lb/b/a/b/s;->a:Lb/b/a/b/s;

    const-string p4, "LocalVariableTypeTable"

    invoke-interface {p1, p4}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object p4

    :goto_2
    check-cast p4, Lb/b/a/a/k;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lb/b/a/a/k;->b()Lb/b/a/b/s;

    move-result-object v0

    invoke-static {p3, v0}, Lb/b/a/b/s;->a(Lb/b/a/b/s;Lb/b/a/b/s;)Lb/b/a/b/s;

    move-result-object p3

    invoke-interface {p1, p4}, Lb/b/a/d/b;->a(Lb/b/a/d/a;)Lb/b/a/d/a;

    move-result-object p4

    goto :goto_2

    :cond_2
    invoke-virtual {p3}, Lb/b/a/b/s;->a_()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2, p3}, Lb/b/a/b/s;->b(Lb/b/a/b/s;Lb/b/a/b/s;)Lb/b/a/b/s;

    move-result-object p2

    :cond_3
    iput-object p2, p0, Lb/b/a/b/n;->e:Lb/b/a/b/s;

    return-void
.end method


# virtual methods
.method public final a(I)Lb/b/f/b/z;
    .registers 5

    new-instance v0, Lb/b/f/b/z;

    iget-object v1, p0, Lb/b/a/b/n;->b:Lb/b/a/d/c;

    invoke-interface {v1}, Lb/b/a/d/c;->m()Lb/b/f/c/ad;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/b/n;->d:Lb/b/a/b/q;

    invoke-virtual {v2, p1}, Lb/b/a/b/q;->a(I)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lb/b/f/b/z;-><init>(Lb/b/f/c/ad;II)V

    return-object v0
.end method

.method public final a()Z
    .registers 2

    iget-object v0, p0, Lb/b/a/b/n;->b:Lb/b/a/d/c;

    invoke-interface {v0}, Lb/b/a/d/c;->d()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/b/n;->c()Lb/b/f/c/aa;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/c/aa;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .registers 2

    invoke-virtual {p0}, Lb/b/a/b/n;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lb/b/f/c/aa;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/n;->a:Lb/b/a/d/g;

    invoke-interface {v0}, Lb/b/a/d/g;->c()Lb/b/f/c/aa;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lb/b/f/c/ad;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/n;->a:Lb/b/a/d/g;

    invoke-interface {v0}, Lb/b/a/d/g;->d()Lb/b/f/c/ad;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lb/b/f/c/ad;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/n;->a:Lb/b/a/d/g;

    invoke-interface {v0}, Lb/b/a/d/g;->e()Lb/b/f/c/ad;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .registers 2

    iget-object v0, p0, Lb/b/a/b/n;->a:Lb/b/a/d/g;

    invoke-interface {v0}, Lb/b/a/d/g;->f()I

    move-result v0

    return v0
.end method

.method public final g()Lb/b/a/d/b;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/n;->a:Lb/b/a/d/g;

    invoke-interface {v0}, Lb/b/a/d/g;->g()Lb/b/a/d/b;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lb/b/f/c/ae;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/n;->a:Lb/b/a/d/g;

    invoke-interface {v0}, Lb/b/a/d/g;->h()Lb/b/f/c/ae;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lb/b/f/d/a;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/n;->a:Lb/b/a/d/g;

    invoke-interface {v0}, Lb/b/a/d/g;->i()Lb/b/f/d/a;

    move-result-object v0

    return-object v0
.end method

.method public final j()I
    .registers 2

    iget-object v0, p0, Lb/b/a/b/n;->c:Lb/b/a/a/c;

    invoke-virtual {v0}, Lb/b/a/a/c;->b()I

    move-result v0

    return v0
.end method

.method public final k()I
    .registers 2

    iget-object v0, p0, Lb/b/a/b/n;->c:Lb/b/a/a/c;

    invoke-virtual {v0}, Lb/b/a/a/c;->c()I

    move-result v0

    return v0
.end method

.method public final l()Lb/b/a/b/j;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/n;->c:Lb/b/a/a/c;

    invoke-virtual {v0}, Lb/b/a/a/c;->d()Lb/b/a/b/j;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lb/b/a/b/g;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/n;->c:Lb/b/a/a/c;

    invoke-virtual {v0}, Lb/b/a/a/c;->e()Lb/b/a/b/g;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lb/b/a/b/s;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/n;->e:Lb/b/a/b/s;

    return-object v0
.end method
