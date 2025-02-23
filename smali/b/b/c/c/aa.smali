.class public final Lb/b/c/c/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/h/s;
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lb/b/f/c/n;

.field private b:Lb/b/c/c/d;


# direct methods
.method public constructor <init>(Lb/b/f/c/n;Lb/b/c/c/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/c/c/aa;->a:Lb/b/f/c/n;

    iput-object p2, p0, Lb/b/c/c/aa;->b:Lb/b/c/c/d;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "field == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lb/b/c/c/u;)V
    .registers 4

    invoke-virtual {p1}, Lb/b/c/c/u;->m()Lb/b/c/c/ac;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/c/c/u;->e()Lb/b/c/c/ar;

    move-result-object p1

    iget-object v1, p0, Lb/b/c/c/aa;->a:Lb/b/f/c/n;

    invoke-virtual {v0, v1}, Lb/b/c/c/ac;->a(Lb/b/f/c/n;)Lb/b/c/c/ab;

    iget-object v0, p0, Lb/b/c/c/aa;->b:Lb/b/c/c/d;

    invoke-virtual {p1, v0}, Lb/b/c/c/ar;->b(Lb/b/c/c/av;)Lb/b/c/c/av;

    move-result-object p1

    check-cast p1, Lb/b/c/c/d;

    iput-object p1, p0, Lb/b/c/c/aa;->b:Lb/b/c/c/d;

    return-void
.end method

.method public final a(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 7

    invoke-virtual {p1}, Lb/b/c/c/u;->m()Lb/b/c/c/ac;

    move-result-object p1

    iget-object v0, p0, Lb/b/c/c/aa;->a:Lb/b/f/c/n;

    invoke-virtual {p1, v0}, Lb/b/c/c/ac;->b(Lb/b/f/c/n;)I

    move-result p1

    iget-object v0, p0, Lb/b/c/c/aa;->b:Lb/b/c/c/d;

    invoke-virtual {v0}, Lb/b/c/c/d;->f()I

    move-result v0

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lb/b/c/c/aa;->a:Lb/b/f/c/n;

    invoke-virtual {v3}, Lb/b/f/c/n;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "      field_idx:       "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p2, v2, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "      annotations_off: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p1}, Lb/b/h/r;->c(I)V

    invoke-interface {p2, v0}, Lb/b/h/r;->c(I)V

    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lb/b/c/c/aa;

    iget-object v0, p0, Lb/b/c/c/aa;->a:Lb/b/f/c/n;

    iget-object p1, p1, Lb/b/c/c/aa;->a:Lb/b/f/c/n;

    invoke-virtual {v0, p1}, Lb/b/f/c/n;->a(Lb/b/f/c/a;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lb/b/c/c/aa;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lb/b/c/c/aa;->a:Lb/b/f/c/n;

    check-cast p1, Lb/b/c/c/aa;

    iget-object p1, p1, Lb/b/c/c/aa;->a:Lb/b/f/c/n;

    invoke-virtual {v0, p1}, Lb/b/f/c/n;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final h()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/b/c/c/aa;->a:Lb/b/f/c/n;

    invoke-virtual {v1}, Lb/b/f/c/n;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/c/c/aa;->b:Lb/b/c/c/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lb/b/c/c/aa;->a:Lb/b/f/c/n;

    invoke-virtual {v0}, Lb/b/f/c/n;->hashCode()I

    move-result v0

    return v0
.end method
