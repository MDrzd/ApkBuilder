.class public final Lb/b/c/c/w;
.super Lb/b/c/c/av;


# instance fields
.field private final a:Lb/b/f/c/d;

.field private b:[B


# direct methods
.method public constructor <init>(Lb/b/f/c/d;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lb/b/c/c/av;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/c/c/w;->a:Lb/b/f/c/d;

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/c/c/w;->b:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "array == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected final a(Lb/b/c/c/av;)I
    .registers 3

    check-cast p1, Lb/b/c/c/w;

    iget-object v0, p0, Lb/b/c/c/w;->a:Lb/b/f/c/d;

    iget-object p1, p1, Lb/b/c/c/w;->a:Lb/b/f/c/d;

    invoke-virtual {v0, p1}, Lb/b/f/c/d;->a(Lb/b/f/c/a;)I

    move-result p1

    return p1
.end method

.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->s:Lb/b/c/c/ai;

    return-object v0
.end method

.method protected final a(Lb/b/c/c/az;I)V
    .registers 5

    new-instance p2, Lb/b/h/f;

    invoke-direct {p2}, Lb/b/h/f;-><init>()V

    new-instance v0, Lb/b/c/c/bk;

    invoke-virtual {p1}, Lb/b/c/c/az;->e()Lb/b/c/c/u;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lb/b/c/c/bk;-><init>(Lb/b/c/c/u;Lb/b/h/r;)V

    iget-object p1, p0, Lb/b/c/c/w;->a:Lb/b/f/c/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lb/b/c/c/bk;->a(Lb/b/f/c/d;Z)V

    invoke-virtual {p2}, Lb/b/h/f;->b()[B

    move-result-object p1

    iput-object p1, p0, Lb/b/c/c/w;->b:[B

    iget-object p1, p0, Lb/b/c/c/w;->b:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Lb/b/c/c/w;->a(I)V

    return-void
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 3

    iget-object v0, p0, Lb/b/c/c/w;->a:Lb/b/f/c/d;

    invoke-static {p1, v0}, Lb/b/c/c/bk;->a(Lb/b/c/c/u;Lb/b/f/c/a;)V

    return-void
.end method

.method protected final a_(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 6

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/c/c/w;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " encoded array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v0, Lb/b/c/c/bk;

    invoke-direct {v0, p1, p2}, Lb/b/c/c/bk;-><init>(Lb/b/c/c/u;Lb/b/h/r;)V

    iget-object p1, p0, Lb/b/c/c/w;->a:Lb/b/f/c/d;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lb/b/c/c/bk;->a(Lb/b/f/c/d;Z)V

    return-void

    :cond_0
    iget-object p1, p0, Lb/b/c/c/w;->b:[B

    invoke-interface {p2, p1}, Lb/b/h/r;->a([B)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/w;->a:Lb/b/f/c/d;

    invoke-virtual {v0}, Lb/b/f/c/d;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lb/b/c/c/w;->a:Lb/b/f/c/d;

    invoke-virtual {v0}, Lb/b/f/c/d;->hashCode()I

    move-result v0

    return v0
.end method
