.class public final Lb/b/c/b/v;
.super Lb/b/c/b/al;


# instance fields
.field private final a:Lb/b/f/b/r;


# direct methods
.method public constructor <init>(Lb/b/f/b/z;Lb/b/f/b/r;)V
    .registers 3

    invoke-direct {p0, p1}, Lb/b/c/b/al;-><init>(Lb/b/f/b/z;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lb/b/c/b/v;->a:Lb/b/f/b/r;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "local == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lb/b/f/b/r;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/f/b/r;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/n;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object p0

    invoke-interface {p0}, Lb/b/f/d/d;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lb/b/f/b/u;)Lb/b/c/b/k;
    .registers 4

    new-instance p1, Lb/b/c/b/v;

    invoke-virtual {p0}, Lb/b/c/b/v;->j()Lb/b/f/b/z;

    move-result-object v0

    iget-object v1, p0, Lb/b/c/b/v;->a:Lb/b/f/b/r;

    invoke-direct {p1, v0, v1}, Lb/b/c/b/v;-><init>(Lb/b/f/b/z;Lb/b/f/b/r;)V

    return-object p1
.end method

.method public final a(Lb/b/g/ad;)Lb/b/c/b/k;
    .registers 5

    new-instance v0, Lb/b/c/b/v;

    invoke-virtual {p0}, Lb/b/c/b/v;->j()Lb/b/f/b/z;

    move-result-object v1

    iget-object v2, p0, Lb/b/c/b/v;->a:Lb/b/f/b/r;

    invoke-virtual {p1, v2}, Lb/b/g/ad;->a(Lb/b/f/b/r;)Lb/b/f/b/r;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lb/b/c/b/v;-><init>(Lb/b/f/b/z;Lb/b/f/b/r;)V

    return-object v0
.end method

.method protected final a(Z)Ljava/lang/String;
    .registers 3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "local-start "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lb/b/c/b/v;->a:Lb/b/f/b/r;

    invoke-static {v0}, Lb/b/c/b/v;->a(Lb/b/f/b/r;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/v;->a:Lb/b/f/b/r;

    invoke-virtual {v0}, Lb/b/f/b/r;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lb/b/f/b/r;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/v;->a:Lb/b/f/b/r;

    return-object v0
.end method

.method public final d(I)Lb/b/c/b/k;
    .registers 5

    new-instance v0, Lb/b/c/b/v;

    invoke-virtual {p0}, Lb/b/c/b/v;->j()Lb/b/f/b/z;

    move-result-object v1

    iget-object v2, p0, Lb/b/c/b/v;->a:Lb/b/f/b/r;

    invoke-virtual {v2, p1}, Lb/b/f/b/r;->b(I)Lb/b/f/b/r;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lb/b/c/b/v;-><init>(Lb/b/f/b/z;Lb/b/f/b/r;)V

    return-object v0
.end method
