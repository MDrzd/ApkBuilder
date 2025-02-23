.class public final Lb/b/f/c/c;
.super Lb/b/f/c/a;


# instance fields
.field private final a:Lb/b/f/a/a;


# direct methods
.method public constructor <init>(Lb/b/f/a/a;)V
    .registers 3

    invoke-direct {p0}, Lb/b/f/c/a;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/f/a/a;->e()V

    iput-object p1, p0, Lb/b/f/c/c;->a:Lb/b/f/a/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "annotation == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lb/b/f/a/a;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/c;->a:Lb/b/f/a/a;

    return-object v0
.end method

.method protected final b(Lb/b/f/c/a;)I
    .registers 3

    iget-object v0, p0, Lb/b/f/c/c;->a:Lb/b/f/a/a;

    check-cast p1, Lb/b/f/c/c;

    iget-object p1, p1, Lb/b/f/c/c;->a:Lb/b/f/a/a;

    invoke-virtual {v0, p1}, Lb/b/f/a/a;->a(Lb/b/f/a/a;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lb/b/f/c/c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lb/b/f/c/c;->a:Lb/b/f/a/a;

    check-cast p1, Lb/b/f/c/c;

    iget-object p1, p1, Lb/b/f/c/c;->a:Lb/b/f/a/a;

    invoke-virtual {v0, p1}, Lb/b/f/a/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    const-string v0, "annotation"

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/c;->a:Lb/b/f/a/a;

    invoke-virtual {v0}, Lb/b/f/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lb/b/f/c/c;->a:Lb/b/f/a/a;

    invoke-virtual {v0}, Lb/b/f/a/a;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/c;->a:Lb/b/f/a/a;

    invoke-virtual {v0}, Lb/b/f/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
