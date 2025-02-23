.class public final Lb/b/c/c/bd;
.super Lb/b/c/c/ag;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lb/b/f/c/ad;

.field private b:Lb/b/c/c/bc;


# direct methods
.method public constructor <init>(Lb/b/f/c/ad;)V
    .registers 3

    invoke-direct {p0}, Lb/b/c/c/ag;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/c/c/bd;->a:Lb/b/f/c/ad;

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/c/c/bd;->b:Lb/b/c/c/bc;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->b:Lb/b/c/c/ai;

    return-object v0
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 4

    iget-object v0, p0, Lb/b/c/c/bd;->b:Lb/b/c/c/bc;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lb/b/c/c/u;->d()Lb/b/c/c/ar;

    move-result-object p1

    new-instance v0, Lb/b/c/c/bc;

    iget-object v1, p0, Lb/b/c/c/bd;->a:Lb/b/f/c/ad;

    invoke-direct {v0, v1}, Lb/b/c/c/bc;-><init>(Lb/b/f/c/ad;)V

    iput-object v0, p0, Lb/b/c/c/bd;->b:Lb/b/c/c/bc;

    iget-object v0, p0, Lb/b/c/c/bd;->b:Lb/b/c/c/bc;

    invoke-virtual {p1, v0}, Lb/b/c/c/ar;->a(Lb/b/c/c/av;)V

    :cond_0
    return-void
.end method

.method public final a(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 9

    iget-object p1, p0, Lb/b/c/c/bd;->b:Lb/b/c/c/bc;

    invoke-virtual {p1}, Lb/b/c/c/bc;->f()I

    move-result p1

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/c/c/bd;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/c/c/bd;->a:Lb/b/f/c/ad;

    invoke-virtual {v1}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x62

    const/4 v4, 0x0

    if-gt v2, v3, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    const/16 v2, 0x5f

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "..."

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v4, v0}, Lb/b/h/r;->a(ILjava/lang/String;)V

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  string_data_off: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_1
    invoke-interface {p2, p1}, Lb/b/h/r;->c(I)V

    return-void
.end method

.method public final c()Lb/b/f/c/ad;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/bd;->a:Lb/b/f/c/ad;

    return-object v0
.end method

.method public final c_()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lb/b/c/c/bd;

    iget-object v0, p0, Lb/b/c/c/bd;->a:Lb/b/f/c/ad;

    iget-object p1, p1, Lb/b/c/c/bd;->a:Lb/b/f/c/ad;

    invoke-virtual {v0, p1}, Lb/b/f/c/ad;->a(Lb/b/f/c/a;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lb/b/c/c/bd;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lb/b/c/c/bd;

    iget-object v0, p0, Lb/b/c/c/bd;->a:Lb/b/f/c/ad;

    iget-object p1, p1, Lb/b/c/c/bd;->a:Lb/b/f/c/ad;

    invoke-virtual {v0, p1}, Lb/b/f/c/ad;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lb/b/c/c/bd;->a:Lb/b/f/c/ad;

    invoke-virtual {v0}, Lb/b/f/c/ad;->hashCode()I

    move-result v0

    return v0
.end method
