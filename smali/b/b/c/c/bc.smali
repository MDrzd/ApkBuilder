.class public final Lb/b/c/c/bc;
.super Lb/b/c/c/av;


# instance fields
.field private final a:Lb/b/f/c/ad;


# direct methods
.method public constructor <init>(Lb/b/f/c/ad;)V
    .registers 4

    invoke-virtual {p1}, Lb/b/f/c/ad;->m()I

    move-result v0

    invoke-static {v0}, La/a/a;->b(I)I

    move-result v0

    invoke-virtual {p1}, Lb/b/f/c/ad;->l()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v1, v0}, Lb/b/c/c/av;-><init>(II)V

    iput-object p1, p0, Lb/b/c/c/bc;->a:Lb/b/f/c/ad;

    return-void
.end method


# virtual methods
.method protected final a(Lb/b/c/c/av;)I
    .registers 3

    check-cast p1, Lb/b/c/c/bc;

    iget-object v0, p0, Lb/b/c/c/bc;->a:Lb/b/f/c/ad;

    iget-object p1, p1, Lb/b/c/c/bc;->a:Lb/b/f/c/ad;

    invoke-virtual {v0, p1}, Lb/b/f/c/ad;->a(Lb/b/f/c/a;)I

    move-result p1

    return p1
.end method

.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->p:Lb/b/c/c/ai;

    return-object v0
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 2

    return-void
.end method

.method public final a_(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 7

    iget-object p1, p0, Lb/b/c/c/bc;->a:Lb/b/f/c/ad;

    invoke-virtual {p1}, Lb/b/f/c/ad;->k()Lb/b/h/c;

    move-result-object p1

    iget-object v0, p0, Lb/b/c/c/bc;->a:Lb/b/f/c/ad;

    invoke-virtual {v0}, Lb/b/f/c/ad;->m()I

    move-result v0

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, La/a/a;->b(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "utf16_size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    invoke-virtual {p1}, Lb/b/h/c;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lb/b/c/c/bc;->a:Lb/b/f/c/ad;

    invoke-virtual {v2}, Lb/b/f/c/ad;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Lb/b/h/r;->e(I)I

    invoke-interface {p2, p1}, Lb/b/h/r;->a(Lb/b/h/c;)V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lb/b/h/r;->d(I)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/bc;->a:Lb/b/f/c/ad;

    invoke-virtual {v0}, Lb/b/f/c/ad;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
