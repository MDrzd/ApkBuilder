.class public final Lb/b/f/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lb/b/f/c/ad;

.field private final b:Lb/b/f/c/ad;


# direct methods
.method private constructor <init>(Lb/b/f/c/ad;Lb/b/f/c/ad;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/f/b/n;->a:Lb/b/f/c/ad;

    iput-object p2, p0, Lb/b/f/b/n;->b:Lb/b/f/c/ad;

    return-void
.end method

.method public static a(Lb/b/f/c/ad;Lb/b/f/c/ad;)Lb/b/f/b/n;
    .registers 3

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lb/b/f/b/n;

    invoke-direct {v0, p0, p1}, Lb/b/f/b/n;-><init>(Lb/b/f/c/ad;Lb/b/f/c/ad;)V

    return-object v0
.end method

.method private static b(Lb/b/f/c/ad;Lb/b/f/c/ad;)I
    .registers 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0, p1}, Lb/b/f/c/ad;->a(Lb/b/f/c/a;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lb/b/f/b/n;)I
    .registers 4

    iget-object v0, p0, Lb/b/f/b/n;->a:Lb/b/f/c/ad;

    iget-object v1, p1, Lb/b/f/b/n;->a:Lb/b/f/c/ad;

    invoke-static {v0, v1}, Lb/b/f/b/n;->b(Lb/b/f/c/ad;Lb/b/f/c/ad;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lb/b/f/b/n;->b:Lb/b/f/c/ad;

    iget-object p1, p1, Lb/b/f/b/n;->b:Lb/b/f/c/ad;

    invoke-static {v0, p1}, Lb/b/f/b/n;->b(Lb/b/f/c/ad;Lb/b/f/c/ad;)I

    move-result p1

    return p1
.end method

.method public final a()Lb/b/f/c/ad;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/n;->a:Lb/b/f/c/ad;

    return-object v0
.end method

.method public final b()Lb/b/f/c/ad;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/n;->b:Lb/b/f/c/ad;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/b/f/b/n;

    invoke-virtual {p0, p1}, Lb/b/f/b/n;->a(Lb/b/f/b/n;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lb/b/f/b/n;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lb/b/f/b/n;

    invoke-virtual {p0, p1}, Lb/b/f/b/n;->a(Lb/b/f/b/n;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .registers 4

    iget-object v0, p0, Lb/b/f/b/n;->a:Lb/b/f/c/ad;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/f/b/n;->a:Lb/b/f/c/ad;

    invoke-virtual {v0}, Lb/b/f/c/ad;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lb/b/f/b/n;->b:Lb/b/f/c/ad;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lb/b/f/b/n;->b:Lb/b/f/c/ad;

    invoke-virtual {v1}, Lb/b/f/c/ad;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lb/b/f/b/n;->a:Lb/b/f/c/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/f/b/n;->b:Lb/b/f/c/ad;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/f/b/n;->a:Lb/b/f/c/ad;

    invoke-virtual {v0}, Lb/b/f/c/ad;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lb/b/f/b/n;->a:Lb/b/f/c/ad;

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/b/f/b/n;->b:Lb/b/f/c/ad;

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/b/f/b/n;->a:Lb/b/f/c/ad;

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lb/b/f/b/n;->a:Lb/b/f/c/ad;

    invoke-virtual {v1}, Lb/b/f/c/ad;->i()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/f/b/n;->b:Lb/b/f/c/ad;

    if-nez v1, :cond_3

    const-string v1, ""

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lb/b/f/b/n;->b:Lb/b/f/c/ad;

    invoke-virtual {v1}, Lb/b/f/c/ad;->i()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
