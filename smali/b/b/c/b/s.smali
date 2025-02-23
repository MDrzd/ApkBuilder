.class public final Lb/b/c/b/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:I

.field private final b:Lb/b/c/b/r;

.field private final c:Lb/b/f/b/r;

.field private final d:Lb/b/f/c/ae;


# direct methods
.method public constructor <init>(ILb/b/c/b/r;Lb/b/f/b/r;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p3}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    iput p1, p0, Lb/b/c/b/s;->a:I

    iput-object p2, p0, Lb/b/c/b/s;->b:Lb/b/c/b/r;

    iput-object p3, p0, Lb/b/c/b/s;->c:Lb/b/f/b/r;

    invoke-virtual {p3}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object p1

    invoke-static {p1}, Lb/b/f/c/ae;->b(Lb/b/f/d/c;)Lb/b/f/c/ae;

    move-result-object p1

    iput-object p1, p0, Lb/b/c/b/s;->d:Lb/b/f/c/ae;

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec.getLocalItem() == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "disposition == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Lb/b/c/b/s;)I
    .registers 6

    iget v0, p0, Lb/b/c/b/s;->a:I

    iget v1, p1, Lb/b/c/b/s;->a:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lb/b/c/b/s;->a:I

    iget v1, p1, Lb/b/c/b/s;->a:I

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lb/b/c/b/s;->c()Z

    move-result v0

    invoke-virtual {p1}, Lb/b/c/b/s;->c()Z

    move-result v1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lb/b/c/b/s;->c:Lb/b/f/b/r;

    iget-object p1, p1, Lb/b/c/b/s;->c:Lb/b/f/b/r;

    invoke-virtual {v0, p1}, Lb/b/f/b/r;->c(Lb/b/f/b/r;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/b/c/b/s;->a:I

    return v0
.end method

.method public final a(Lb/b/c/b/r;)Lb/b/c/b/s;
    .registers 5

    iget-object v0, p0, Lb/b/c/b/s;->b:Lb/b/c/b/r;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lb/b/c/b/s;

    iget v1, p0, Lb/b/c/b/s;->a:I

    iget-object v2, p0, Lb/b/c/b/s;->c:Lb/b/f/b/r;

    invoke-direct {v0, v1, p1, v2}, Lb/b/c/b/s;-><init>(ILb/b/c/b/r;Lb/b/f/b/r;)V

    return-object v0
.end method

.method public final a(Lb/b/c/b/s;)Z
    .registers 2

    iget-object p1, p1, Lb/b/c/b/s;->c:Lb/b/f/b/r;

    invoke-virtual {p0, p1}, Lb/b/c/b/s;->a(Lb/b/f/b/r;)Z

    move-result p1

    return p1
.end method

.method public final a(Lb/b/f/b/r;)Z
    .registers 3

    iget-object v0, p0, Lb/b/c/b/s;->c:Lb/b/f/b/r;

    invoke-virtual {v0, p1}, Lb/b/f/b/r;->a(Lb/b/f/b/r;)Z

    move-result p1

    return p1
.end method

.method public final b()Lb/b/c/b/r;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/s;->b:Lb/b/c/b/r;

    return-object v0
.end method

.method public final c()Z
    .registers 3

    iget-object v0, p0, Lb/b/c/b/s;->b:Lb/b/c/b/r;

    sget-object v1, Lb/b/c/b/r;->a:Lb/b/c/b/r;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/b/c/b/s;

    invoke-direct {p0, p1}, Lb/b/c/b/s;->b(Lb/b/c/b/s;)I

    move-result p1

    return p1
.end method

.method public final d()Lb/b/f/c/ad;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/s;->c:Lb/b/f/b/r;

    invoke-virtual {v0}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/n;->a()Lb/b/f/c/ad;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lb/b/f/c/ad;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/s;->c:Lb/b/f/b/r;

    invoke-virtual {v0}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/n;->b()Lb/b/f/c/ad;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lb/b/c/b/s;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lb/b/c/b/s;

    invoke-direct {p0, p1}, Lb/b/c/b/s;->b(Lb/b/c/b/s;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final f()Lb/b/f/c/ae;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/s;->d:Lb/b/f/c/ae;

    return-object v0
.end method

.method public final g()I
    .registers 2

    iget-object v0, p0, Lb/b/c/b/s;->c:Lb/b/f/b/r;

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    return v0
.end method

.method public final h()Lb/b/f/b/r;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/s;->c:Lb/b/f/b/r;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lb/b/c/b/s;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/c/b/s;->b:Lb/b/c/b/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/c/b/s;->c:Lb/b/f/b/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
