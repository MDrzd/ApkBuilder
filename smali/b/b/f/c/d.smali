.class public Lb/b/f/c/d;
.super Lb/b/f/c/a;


# instance fields
.field private final a:Lb/b/f/c/e;


# direct methods
.method public constructor <init>(Lb/b/f/c/e;)V
    .registers 3

    invoke-direct {p0}, Lb/b/f/c/a;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/f/c/e;->e()V

    iput-object p1, p0, Lb/b/f/c/d;->a:Lb/b/f/c/e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "list == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lb/b/f/c/e;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/d;->a:Lb/b/f/c/e;

    return-object v0
.end method

.method protected b(Lb/b/f/c/a;)I
    .registers 3

    iget-object v0, p0, Lb/b/f/c/d;->a:Lb/b/f/c/e;

    check-cast p1, Lb/b/f/c/d;

    iget-object p1, p1, Lb/b/f/c/d;->a:Lb/b/f/c/e;

    invoke-virtual {v0, p1}, Lb/b/f/c/e;->a(Lb/b/f/c/e;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lb/b/f/c/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lb/b/f/c/d;->a:Lb/b/f/c/e;

    check-cast p1, Lb/b/f/c/d;

    iget-object p1, p1, Lb/b/f/c/d;->a:Lb/b/f/c/e;

    invoke-virtual {v0, p1}, Lb/b/f/c/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    const-string v0, "array"

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lb/b/f/c/d;->a:Lb/b/f/c/e;

    const-string v1, "{"

    const-string v2, ", "

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Lb/b/f/c/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lb/b/f/c/d;->a:Lb/b/f/c/e;

    invoke-virtual {v0}, Lb/b/f/c/e;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lb/b/f/c/d;->a:Lb/b/f/c/e;

    const-string v1, "array{"

    const-string v2, ", "

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Lb/b/f/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
