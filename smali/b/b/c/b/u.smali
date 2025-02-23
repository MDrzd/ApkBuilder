.class public final Lb/b/c/b/u;
.super Lb/b/c/b/al;


# instance fields
.field private final a:Lb/b/f/b/w;


# direct methods
.method public constructor <init>(Lb/b/f/b/z;Lb/b/f/b/w;)V
    .registers 3

    invoke-direct {p0, p1}, Lb/b/c/b/al;-><init>(Lb/b/f/b/z;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lb/b/c/b/u;->a:Lb/b/f/b/w;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "locals == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lb/b/f/b/u;)Lb/b/c/b/k;
    .registers 4

    new-instance p1, Lb/b/c/b/u;

    invoke-virtual {p0}, Lb/b/c/b/u;->j()Lb/b/f/b/z;

    move-result-object v0

    iget-object v1, p0, Lb/b/c/b/u;->a:Lb/b/f/b/w;

    invoke-direct {p1, v0, v1}, Lb/b/c/b/u;-><init>(Lb/b/f/b/z;Lb/b/f/b/w;)V

    return-object p1
.end method

.method public final a(Lb/b/g/ad;)Lb/b/c/b/k;
    .registers 5

    new-instance v0, Lb/b/c/b/u;

    invoke-virtual {p0}, Lb/b/c/b/u;->j()Lb/b/f/b/z;

    move-result-object v1

    iget-object v2, p0, Lb/b/c/b/u;->a:Lb/b/f/b/w;

    invoke-virtual {p1, v2}, Lb/b/g/ad;->a(Lb/b/f/b/w;)Lb/b/f/b/w;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lb/b/c/b/u;-><init>(Lb/b/f/b/z;Lb/b/f/b/w;)V

    return-object v0
.end method

.method protected final a(Z)Ljava/lang/String;
    .registers 6

    iget-object p1, p0, Lb/b/c/b/u;->a:Lb/b/f/b/w;

    invoke-virtual {p1}, Lb/b/f/b/w;->g()I

    move-result p1

    iget-object v0, p0, Lb/b/c/b/u;->a:Lb/b/f/b/w;

    invoke-virtual {v0}, Lb/b/f/b/w;->f()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 p1, p1, 0x28

    add-int/lit8 p1, p1, 0x64

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "local-snapshot"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    iget-object v2, p0, Lb/b/c/b/u;->a:Lb/b/f/b/w;

    invoke-virtual {v2, p1}, Lb/b/f/b/w;->a(I)Lb/b/f/b/r;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "\n  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lb/b/c/b/v;->a(Lb/b/f/b/r;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/u;->a:Lb/b/f/b/w;

    invoke-virtual {v0}, Lb/b/f/b/w;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lb/b/f/b/w;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/u;->a:Lb/b/f/b/w;

    return-object v0
.end method

.method public final d(I)Lb/b/c/b/k;
    .registers 5

    new-instance v0, Lb/b/c/b/u;

    invoke-virtual {p0}, Lb/b/c/b/u;->j()Lb/b/f/b/z;

    move-result-object v1

    iget-object v2, p0, Lb/b/c/b/u;->a:Lb/b/f/b/w;

    invoke-virtual {v2, p1}, Lb/b/f/b/w;->b(I)Lb/b/f/b/w;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lb/b/c/b/u;-><init>(Lb/b/f/b/z;Lb/b/f/b/w;)V

    return-object v0
.end method
