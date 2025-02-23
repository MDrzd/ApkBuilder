.class public final Lb/b/f/c/ab;
.super Lb/b/f/c/ag;


# instance fields
.field private final a:Lb/b/f/d/a;


# direct methods
.method public constructor <init>(Lb/b/f/d/a;)V
    .registers 2

    invoke-direct {p0}, Lb/b/f/c/ag;-><init>()V

    iput-object p1, p0, Lb/b/f/c/ab;->a:Lb/b/f/d/a;

    return-void
.end method

.method public static a(Lb/b/f/c/ad;)Lb/b/f/c/ab;
    .registers 2

    invoke-virtual {p0}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/b/f/d/a;->b(Ljava/lang/String;)Lb/b/f/d/a;

    move-result-object p0

    new-instance v0, Lb/b/f/c/ab;

    invoke-direct {v0, p0}, Lb/b/f/c/ab;-><init>(Lb/b/f/d/a;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lb/b/f/d/c;
    .registers 2

    sget-object v0, Lb/b/f/d/c;->o:Lb/b/f/d/c;

    return-object v0
.end method

.method protected final b(Lb/b/f/c/a;)I
    .registers 3

    check-cast p1, Lb/b/f/c/ab;

    iget-object v0, p0, Lb/b/f/c/ab;->a:Lb/b/f/d/a;

    iget-object p1, p1, Lb/b/f/c/ab;->a:Lb/b/f/d/a;

    invoke-virtual {v0, p1}, Lb/b/f/d/a;->a(Lb/b/f/d/a;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lb/b/f/c/ab;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lb/b/f/c/ab;

    iget-object v0, p0, Lb/b/f/c/ab;->a:Lb/b/f/d/a;

    iget-object p1, p1, Lb/b/f/c/ab;->a:Lb/b/f/d/a;

    invoke-virtual {v0, p1}, Lb/b/f/d/a;->equals(Ljava/lang/Object;)Z

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

    const-string v0, "proto"

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/ab;->a:Lb/b/f/d/a;

    invoke-virtual {v0}, Lb/b/f/d/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lb/b/f/c/ab;->a:Lb/b/f/d/a;

    invoke-virtual {v0}, Lb/b/f/d/a;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Lb/b/f/d/a;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/ab;->a:Lb/b/f/d/a;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proto{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/b/f/c/ab;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
