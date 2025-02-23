.class public final Lb/b/c/b/a/x;
.super Lb/b/c/b/p;


# static fields
.field public static final a:Lb/b/c/b/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/c/b/a/x;

    invoke-direct {v0}, Lb/b/c/b/a/x;-><init>()V

    sput-object v0, Lb/b/c/b/a/x;->a:Lb/b/c/b/p;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/b/c/b/p;-><init>()V

    return-void
.end method

.method private static d(Lb/b/f/b/u;)I
    .registers 8

    invoke-virtual {p0}, Lb/b/f/b/u;->a_()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, -0x1

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/f/b/r;->k()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v5}, Lb/b/f/b/r;->f()I

    move-result v6

    invoke-virtual {v5}, Lb/b/f/b/r;->k()I

    move-result v5

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Lb/b/c/b/a/x;->a(I)Z

    move-result v5

    if-nez v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-gt v4, v1, :cond_3

    return v4

    :cond_3
    return v2
.end method

.method private static e(Lb/b/f/b/u;)Lb/b/f/b/u;
    .registers 8

    invoke-static {p0}, Lb/b/c/b/a/x;->d(Lb/b/f/b/u;)I

    move-result v0

    invoke-virtual {p0}, Lb/b/f/b/u;->a_()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v2, Lb/b/f/b/u;

    invoke-direct {v2, v0}, Lb/b/f/b/u;-><init>(I)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lb/b/f/b/u;->a(ILb/b/f/b/r;)V

    invoke-virtual {v4}, Lb/b/f/b/r;->k()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4}, Lb/b/f/b/r;->f()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    sget-object v6, Lb/b/f/d/c;->i:Lb/b/f/d/c;

    invoke-static {v4, v6}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lb/b/f/b/u;->a(ILb/b/f/b/r;)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lb/b/f/b/u;->b_()V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public final a(Lb/b/c/b/k;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object v0

    invoke-static {v0}, Lb/b/c/b/a/x;->e(Lb/b/f/b/u;)Lb/b/f/b/u;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lb/b/c/b/a/x;->a(Lb/b/f/b/u;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lb/b/c/b/k;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/c/b/k;Z)Ljava/lang/String;
    .registers 3

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lb/b/c/b/k;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final a(Lb/b/h/r;Lb/b/c/b/k;)V
    .registers 13

    move-object v0, p2

    check-cast v0, Lb/b/c/b/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/c/b/w;->b(I)I

    move-result v2

    int-to-short v2, v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lb/b/c/b/w;->b(I)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p2}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object v4

    invoke-static {v4}, Lb/b/c/b/a/x;->e(Lb/b/f/b/u;)Lb/b/f/b/u;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/b/u;->a_()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v4, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v6

    invoke-virtual {v6}, Lb/b/f/b/r;->f()I

    move-result v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-le v5, v3, :cond_1

    invoke-virtual {v4, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/r;->f()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v7, 0x2

    if-le v5, v7, :cond_2

    invoke-virtual {v4, v7}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v7

    invoke-virtual {v7}, Lb/b/f/b/r;->f()I

    move-result v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x3

    if-le v5, v8, :cond_3

    invoke-virtual {v4, v8}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v8

    invoke-virtual {v8}, Lb/b/f/b/r;->f()I

    move-result v8

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    const/4 v9, 0x4

    if-le v5, v9, :cond_4

    invoke-virtual {v4, v9}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/r;->f()I

    move-result v1

    :cond_4
    invoke-static {v1, v5}, Lb/b/c/b/a/x;->b(II)I

    move-result v1

    invoke-static {p2, v1}, Lb/b/c/b/a/x;->a(Lb/b/c/b/k;I)S

    move-result p2

    invoke-static {v6, v3, v7, v8}, Lb/b/c/b/a/x;->a(IIII)S

    move-result v1

    invoke-static {p1, p2, v2, v1, v0}, Lb/b/c/b/a/x;->a(Lb/b/h/r;SSSS)V

    return-void
.end method

.method public final b(Lb/b/c/b/k;)Z
    .registers 6

    instance-of v0, p1, Lb/b/c/b/w;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lb/b/c/b/w;

    invoke-virtual {p1}, Lb/b/c/b/w;->c()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1, v1}, Lb/b/c/b/w;->b(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lb/b/c/b/w;->b(I)I

    move-result v3

    invoke-static {v0}, Lb/b/c/b/a/x;->e(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lb/b/c/b/a/x;->e(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lb/b/c/b/w;->a(I)Lb/b/f/c/a;

    move-result-object v0

    instance-of v0, v0, Lb/b/f/c/z;

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1, v2}, Lb/b/c/b/w;->a(I)Lb/b/f/c/a;

    move-result-object v0

    instance-of v0, v0, Lb/b/f/c/ab;

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lb/b/c/b/w;->k()Lb/b/f/b/u;

    move-result-object p1

    invoke-static {p1}, Lb/b/c/b/a/x;->d(Lb/b/f/b/u;)I

    move-result p1

    if-ltz p1, :cond_5

    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public final c(Lb/b/c/b/k;)Ljava/util/BitSet;
    .registers 7

    invoke-virtual {p1}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/u;->a_()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/r;->f()I

    move-result v4

    invoke-virtual {v3}, Lb/b/f/b/r;->k()I

    move-result v3

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Lb/b/c/b/a/x;->a(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
