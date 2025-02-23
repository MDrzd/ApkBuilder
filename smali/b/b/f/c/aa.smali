.class public final Lb/b/f/c/aa;
.super Lb/b/f/c/a;


# static fields
.field public static final a:Lb/b/f/c/aa;


# instance fields
.field private final b:Lb/b/f/c/ad;

.field private final c:Lb/b/f/c/ad;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lb/b/f/c/aa;

    new-instance v1, Lb/b/f/c/ad;

    const-string v2, "TYPE"

    invoke-direct {v1, v2}, Lb/b/f/c/ad;-><init>(Ljava/lang/String;)V

    new-instance v2, Lb/b/f/c/ad;

    const-string v3, "Ljava/lang/Class;"

    invoke-direct {v2, v3}, Lb/b/f/c/ad;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lb/b/f/c/aa;-><init>(Lb/b/f/c/ad;Lb/b/f/c/ad;)V

    sput-object v0, Lb/b/f/c/aa;->a:Lb/b/f/c/aa;

    return-void
.end method

.method public constructor <init>(Lb/b/f/c/ad;Lb/b/f/c/ad;)V
    .registers 3

    invoke-direct {p0}, Lb/b/f/c/a;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lb/b/f/c/aa;->b:Lb/b/f/c/ad;

    iput-object p2, p0, Lb/b/f/c/aa;->c:Lb/b/f/c/ad;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "descriptor == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lb/b/f/c/ad;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/aa;->b:Lb/b/f/c/ad;

    return-object v0
.end method

.method protected final b(Lb/b/f/c/a;)I
    .registers 4

    check-cast p1, Lb/b/f/c/aa;

    iget-object v0, p0, Lb/b/f/c/aa;->b:Lb/b/f/c/ad;

    iget-object v1, p1, Lb/b/f/c/aa;->b:Lb/b/f/c/ad;

    invoke-virtual {v0, v1}, Lb/b/f/c/ad;->a(Lb/b/f/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lb/b/f/c/aa;->c:Lb/b/f/c/ad;

    iget-object p1, p1, Lb/b/f/c/aa;->c:Lb/b/f/c/ad;

    invoke-virtual {v0, p1}, Lb/b/f/c/ad;->a(Lb/b/f/c/a;)I

    move-result p1

    return p1
.end method

.method public final b()Lb/b/f/c/ad;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/aa;->c:Lb/b/f/c/ad;

    return-object v0
.end method

.method public final c()Lb/b/f/d/c;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/aa;->c:Lb/b/f/c/ad;

    invoke-virtual {v0}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/b/f/d/c;->a(Ljava/lang/String;)Lb/b/f/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .registers 3

    iget-object v0, p0, Lb/b/f/c/aa;->b:Lb/b/f/c/ad;

    invoke-virtual {v0}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .registers 3

    iget-object v0, p0, Lb/b/f/c/aa;->b:Lb/b/f/c/ad;

    invoke-virtual {v0}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<clinit>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lb/b/f/c/aa;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lb/b/f/c/aa;

    iget-object v0, p0, Lb/b/f/c/aa;->b:Lb/b/f/c/ad;

    iget-object v2, p1, Lb/b/f/c/aa;->b:Lb/b/f/c/ad;

    invoke-virtual {v0, v2}, Lb/b/f/c/ad;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/f/c/aa;->c:Lb/b/f/c/ad;

    iget-object p1, p1, Lb/b/f/c/aa;->c:Lb/b/f/c/ad;

    invoke-virtual {v0, p1}, Lb/b/f/c/ad;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    const-string v0, "nat"

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/b/f/c/aa;->b:Lb/b/f/c/ad;

    invoke-virtual {v1}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/f/c/aa;->c:Lb/b/f/c/ad;

    invoke-virtual {v1}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lb/b/f/c/aa;->b:Lb/b/f/c/ad;

    invoke-virtual {v0}, Lb/b/f/c/ad;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/b/f/c/aa;->c:Lb/b/f/c/ad;

    invoke-virtual {v1}, Lb/b/f/c/ad;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nat{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/b/f/c/aa;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
