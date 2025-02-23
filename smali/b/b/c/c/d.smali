.class public final Lb/b/c/c/d;
.super Lb/b/c/c/av;


# instance fields
.field private final a:Lb/b/f/a/c;

.field private final b:[Lb/b/c/c/a;


# direct methods
.method public constructor <init>(Lb/b/f/a/c;Lb/b/c/c/u;)V
    .registers 7

    invoke-static {p1}, Lb/b/c/c/d;->a(Lb/b/f/a/c;)I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lb/b/c/c/av;-><init>(II)V

    iput-object p1, p0, Lb/b/c/c/d;->a:Lb/b/f/a/c;

    invoke-virtual {p1}, Lb/b/f/a/c;->f()I

    move-result v0

    new-array v0, v0, [Lb/b/c/c/a;

    iput-object v0, p0, Lb/b/c/c/d;->b:[Lb/b/c/c/a;

    invoke-virtual {p1}, Lb/b/f/a/c;->g()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/f/a/a;

    iget-object v2, p0, Lb/b/c/c/d;->b:[Lb/b/c/c/a;

    new-instance v3, Lb/b/c/c/a;

    invoke-direct {v3, v1, p2}, Lb/b/c/c/a;-><init>(Lb/b/f/a/a;Lb/b/c/c/u;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lb/b/f/a/c;)I
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lb/b/f/a/c;->f()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    shl-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x4

    return p0

    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "list == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final a(Lb/b/c/c/av;)I
    .registers 3

    check-cast p1, Lb/b/c/c/d;

    iget-object v0, p0, Lb/b/c/c/d;->a:Lb/b/f/a/c;

    iget-object p1, p1, Lb/b/c/c/d;->a:Lb/b/f/a/c;

    invoke-virtual {v0, p1}, Lb/b/f/a/c;->a(Lb/b/f/a/c;)I

    move-result p1

    return p1
.end method

.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->m:Lb/b/c/c/ai;

    return-object v0
.end method

.method protected final a(Lb/b/c/c/az;I)V
    .registers 3

    iget-object p1, p0, Lb/b/c/c/d;->b:[Lb/b/c/c/a;

    invoke-static {p1}, Lb/b/c/c/a;->a([Lb/b/c/c/a;)V

    return-void
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 6

    invoke-virtual {p1}, Lb/b/c/c/u;->q()Lb/b/c/c/ar;

    move-result-object p1

    iget-object v0, p0, Lb/b/c/c/d;->b:[Lb/b/c/c/a;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/b/c/c/d;->b:[Lb/b/c/c/a;

    iget-object v3, p0, Lb/b/c/c/d;->b:[Lb/b/c/c/a;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Lb/b/c/c/ar;->b(Lb/b/c/c/av;)Lb/b/c/c/av;

    move-result-object v3

    check-cast v3, Lb/b/c/c/a;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final a_(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 9

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result p1

    iget-object v0, p0, Lb/b/c/c/d;->b:[Lb/b/c/c/a;

    array-length v0, v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/c/c/d;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " annotation set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Lb/b/h/r;->c(I)V

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lb/b/c/c/d;->b:[Lb/b/c/c/a;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lb/b/c/c/a;->f()I

    move-result v3

    if-eqz p1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  entries["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v4}, Lb/b/h/r;->a(ILjava/lang/String;)V

    iget-object v4, p0, Lb/b/c/c/d;->b:[Lb/b/c/c/a;

    aget-object v4, v4, v2

    const-string v5, "    "

    invoke-virtual {v4, p2, v5}, Lb/b/c/c/a;->a(Lb/b/h/r;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p2, v3}, Lb/b/h/r;->c(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/d;->a:Lb/b/f/a/c;

    invoke-virtual {v0}, Lb/b/f/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lb/b/f/a/c;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/d;->a:Lb/b/f/a/c;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lb/b/c/c/d;->a:Lb/b/f/a/c;

    invoke-virtual {v0}, Lb/b/f/a/c;->hashCode()I

    move-result v0

    return v0
.end method
