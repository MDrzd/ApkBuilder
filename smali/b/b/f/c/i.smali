.class public final Lb/b/f/c/i;
.super Lb/b/f/c/d;


# direct methods
.method private constructor <init>(Lb/b/f/c/e;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/f/c/d;-><init>(Lb/b/f/c/e;)V

    return-void
.end method

.method public static a(Lb/b/f/c/y;Lb/b/f/c/aa;Lb/b/a/b/c;)Lb/b/f/c/i;
    .registers 6

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    new-instance v0, Lb/b/f/c/e;

    invoke-virtual {p2}, Lb/b/a/b/c;->a_()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Lb/b/f/c/e;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lb/b/f/c/e;->a(ILb/b/f/c/a;)V

    invoke-virtual {p1}, Lb/b/f/c/aa;->a()Lb/b/f/c/ad;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lb/b/f/c/e;->a(ILb/b/f/c/a;)V

    const/4 p0, 0x2

    new-instance v2, Lb/b/f/c/ab;

    invoke-virtual {p1}, Lb/b/f/c/aa;->b()Lb/b/f/c/ad;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/b/f/d/a;->b(Ljava/lang/String;)Lb/b/f/d/a;

    move-result-object p1

    invoke-direct {v2, p1}, Lb/b/f/c/ab;-><init>(Lb/b/f/d/a;)V

    invoke-virtual {v0, p0, v2}, Lb/b/f/c/e;->a(ILb/b/f/c/a;)V

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {p2}, Lb/b/a/b/c;->a_()I

    move-result p0

    if-ge v1, p0, :cond_0

    add-int/lit8 p0, v1, 0x3

    invoke-virtual {p2, v1}, Lb/b/a/b/c;->a(I)Lb/b/f/c/a;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lb/b/f/c/e;->a(ILb/b/f/c/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb/b/f/c/e;->b_()V

    new-instance p0, Lb/b/f/c/i;

    invoke-direct {p0, v0}, Lb/b/f/c/i;-><init>(Lb/b/f/c/e;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "nat == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bootstrapMethodHandle == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final b(Lb/b/f/c/a;)I
    .registers 3

    invoke-virtual {p0}, Lb/b/f/c/i;->a()Lb/b/f/c/e;

    move-result-object v0

    check-cast p1, Lb/b/f/c/i;

    invoke-virtual {p1}, Lb/b/f/c/i;->a()Lb/b/f/c/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/b/f/c/e;->a(Lb/b/f/c/e;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lb/b/f/c/i;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/f/c/i;->a()Lb/b/f/c/e;

    move-result-object v0

    check-cast p1, Lb/b/f/c/i;

    invoke-virtual {p1}, Lb/b/f/c/i;->a()Lb/b/f/c/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/b/f/c/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    const-string v0, "call site"

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lb/b/f/c/i;->a()Lb/b/f/c/e;

    move-result-object v0

    const-string v1, "{"

    const-string v2, ", "

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Lb/b/f/c/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    invoke-virtual {p0}, Lb/b/f/c/i;->a()Lb/b/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/c/e;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lb/b/f/c/i;->a()Lb/b/f/c/e;

    move-result-object v0

    const-string v1, "call site{"

    const-string v2, ", "

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Lb/b/f/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
