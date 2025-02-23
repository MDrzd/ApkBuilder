.class public final Lb/b/c/b/x;
.super Lb/b/c/b/ak;


# direct methods
.method public constructor <init>(Lb/b/f/b/z;)V
    .registers 3

    sget-object v0, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-direct {p0, p1, v0}, Lb/b/c/b/ak;-><init>(Lb/b/f/b/z;Lb/b/f/b/u;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    invoke-virtual {p0}, Lb/b/c/b/x;->h()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final a(Lb/b/f/b/u;)Lb/b/c/b/k;
    .registers 3

    new-instance p1, Lb/b/c/b/x;

    invoke-virtual {p0}, Lb/b/c/b/x;->j()Lb/b/f/b/z;

    move-result-object v0

    invoke-direct {p1, v0}, Lb/b/c/b/x;-><init>(Lb/b/f/b/z;)V

    return-object p1
.end method

.method protected final a(Z)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lb/b/c/b/x;->h()I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "nop // spacer"

    return-object p1
.end method

.method public final a(Lb/b/h/r;)V
    .registers 3

    invoke-virtual {p0}, Lb/b/c/b/x;->h()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lb/b/c/b/p;->a(II)S

    move-result v0

    invoke-interface {p1, v0}, Lb/b/h/r;->b(I)V

    :cond_0
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
