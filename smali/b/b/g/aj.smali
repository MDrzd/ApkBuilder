.class public abstract Lb/b/g/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/h/s;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Lb/b/g/af;

.field private b:Lb/b/f/b/r;


# direct methods
.method protected constructor <init>(Lb/b/f/b/r;Lb/b/g/af;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lb/b/g/aj;->a:Lb/b/g/af;

    iput-object p1, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "block == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lb/b/f/b/i;Lb/b/g/af;)Lb/b/g/aj;
    .registers 3

    new-instance v0, Lb/b/g/x;

    invoke-direct {v0, p0, p1}, Lb/b/g/x;-><init>(Lb/b/f/b/i;Lb/b/g/af;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lb/b/f/b/u;
.end method

.method public final a(Lb/b/f/b/n;)V
    .registers 4

    iget-object v0, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    invoke-virtual {v0}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v0

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    invoke-virtual {v0}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/b/f/b/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    iget-object v1, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    invoke-virtual {v1}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lb/b/f/b/r;->b(ILb/b/f/d/d;Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object p1

    iput-object p1, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    :cond_1
    return-void
.end method

.method public abstract a(Lb/b/g/ad;)V
.end method

.method public abstract a(Lb/b/g/ak;)V
.end method

.method public abstract b()Lb/b/f/b/i;
.end method

.method protected final b(Lb/b/f/b/r;)V
    .registers 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "result == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lb/b/g/ad;)V
    .registers 4

    iget-object v0, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    iget-object v1, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    invoke-virtual {p1, v1}, Lb/b/g/ad;->a(Lb/b/f/b/r;)Lb/b/f/b/r;

    move-result-object v1

    iput-object v1, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    iget-object v1, p0, Lb/b/g/aj;->a:Lb/b/g/af;

    invoke-virtual {v1}, Lb/b/g/af;->n()Lb/b/g/al;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lb/b/g/al;->a(Lb/b/g/aj;Lb/b/f/b/r;)V

    invoke-virtual {p0, p1}, Lb/b/g/aj;->a(Lb/b/g/ad;)V

    return-void
.end method

.method public final b(I)Z
    .registers 3

    iget-object v0, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract c()Lb/b/f/b/x;
.end method

.method public final c(I)V
    .registers 3

    iget-object v0, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    invoke-virtual {v0, p1}, Lb/b/f/b/r;->a(I)Lb/b/f/b/r;

    move-result-object p1

    iput-object p1, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    :cond_0
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lb/b/g/aj;->m()Lb/b/g/aj;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Lb/b/f/b/i;
.end method

.method public e()Lb/b/f/b/r;
    .registers 2

    iget-object v0, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    invoke-virtual {v0}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract j()Z
.end method

.method public abstract k()Z
.end method

.method public abstract l()Z
.end method

.method public m()Lb/b/g/aj;
    .registers 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/g/aj;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final n()Lb/b/f/b/r;
    .registers 2

    iget-object v0, p0, Lb/b/g/aj;->b:Lb/b/f/b/r;

    return-object v0
.end method

.method public final o()Lb/b/g/af;
    .registers 2

    iget-object v0, p0, Lb/b/g/aj;->a:Lb/b/g/af;

    return-object v0
.end method
