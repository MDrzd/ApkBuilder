.class public final Lb/b/a/b/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/a/b/u;

.field private final b:Lb/b/a/b/o;

.field private final c:Lb/b/h/k;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    new-instance v0, Lb/b/a/b/x;

    invoke-direct {v0, p1}, Lb/b/a/b/x;-><init>(I)V

    new-instance p1, Lb/b/a/b/o;

    invoke-direct {p1, p2}, Lb/b/a/b/o;-><init>(I)V

    invoke-direct {p0, v0, p1}, Lb/b/a/b/p;-><init>(Lb/b/a/b/u;Lb/b/a/b/o;)V

    return-void
.end method

.method private constructor <init>(Lb/b/a/b/u;Lb/b/a/b/o;)V
    .registers 4

    sget-object v0, Lb/b/h/k;->a:Lb/b/h/k;

    invoke-direct {p0, p1, p2, v0}, Lb/b/a/b/p;-><init>(Lb/b/a/b/u;Lb/b/a/b/o;Lb/b/h/k;)V

    return-void
.end method

.method private constructor <init>(Lb/b/a/b/u;Lb/b/a/b/o;Lb/b/h/k;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lb/b/h/k;->e()V

    iput-object p1, p0, Lb/b/a/b/p;->a:Lb/b/a/b/u;

    iput-object p2, p0, Lb/b/a/b/p;->b:Lb/b/a/b/o;

    iput-object p3, p0, Lb/b/a/b/p;->c:Lb/b/h/k;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "stack == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "locals == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lb/b/a/b/p;
    .registers 5

    new-instance v0, Lb/b/a/b/p;

    iget-object v1, p0, Lb/b/a/b/p;->a:Lb/b/a/b/u;

    invoke-virtual {v1}, Lb/b/a/b/u;->f()Lb/b/a/b/u;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/b/p;->b:Lb/b/a/b/o;

    invoke-virtual {v2}, Lb/b/a/b/o;->f()Lb/b/a/b/o;

    move-result-object v2

    iget-object v3, p0, Lb/b/a/b/p;->c:Lb/b/h/k;

    invoke-direct {v0, v1, v2, v3}, Lb/b/a/b/p;-><init>(Lb/b/a/b/u;Lb/b/a/b/o;Lb/b/h/k;)V

    return-object v0
.end method

.method public final a(II)Lb/b/a/b/p;
    .registers 6

    iget-object v0, p0, Lb/b/a/b/p;->a:Lb/b/a/b/u;

    instance-of v0, v0, Lb/b/a/b/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/b/p;->a:Lb/b/a/b/u;

    check-cast v0, Lb/b/a/b/v;

    invoke-virtual {v0, p2}, Lb/b/a/b/v;->b(I)Lb/b/a/b/u;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lb/b/a/b/p;->c:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->i()Lb/b/h/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/h/k;->h()I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {v0}, Lb/b/h/k;->b_()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    return-object v1

    :cond_1
    new-instance p1, Lb/b/a/b/p;

    iget-object v1, p0, Lb/b/a/b/p;->b:Lb/b/a/b/o;

    invoke-direct {p1, p2, v1, v0}, Lb/b/a/b/p;-><init>(Lb/b/a/b/u;Lb/b/a/b/o;Lb/b/h/k;)V

    return-object p1

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "returning from invalid subroutine"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "can\'t return from non-subroutine"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "returning from invalid subroutine"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/a/b/p;)Lb/b/a/b/p;
    .registers 10

    iget-object v0, p0, Lb/b/a/b/p;->a:Lb/b/a/b/u;

    iget-object v1, p1, Lb/b/a/b/p;->a:Lb/b/a/b/u;

    invoke-virtual {v0, v1}, Lb/b/a/b/u;->a(Lb/b/a/b/u;)Lb/b/a/b/u;

    move-result-object v0

    iget-object v1, p0, Lb/b/a/b/p;->b:Lb/b/a/b/o;

    iget-object v2, p1, Lb/b/a/b/p;->b:Lb/b/a/b/o;

    invoke-virtual {v1, v2}, Lb/b/a/b/o;->a(Lb/b/a/b/o;)Lb/b/a/b/o;

    move-result-object v1

    iget-object p1, p1, Lb/b/a/b/p;->c:Lb/b/h/k;

    iget-object v2, p0, Lb/b/a/b/p;->c:Lb/b/h/k;

    invoke-virtual {v2, p1}, Lb/b/h/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lb/b/a/b/p;->c:Lb/b/h/k;

    goto :goto_1

    :cond_0
    new-instance v2, Lb/b/h/k;

    invoke-direct {v2}, Lb/b/h/k;-><init>()V

    iget-object v3, p0, Lb/b/a/b/p;->c:Lb/b/h/k;

    invoke-virtual {v3}, Lb/b/h/k;->f()I

    move-result v3

    invoke-virtual {p1}, Lb/b/h/k;->f()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    if-ge v5, v4, :cond_1

    iget-object v6, p0, Lb/b/a/b/p;->c:Lb/b/h/k;

    invoke-virtual {v6, v5}, Lb/b/h/k;->b(I)I

    move-result v6

    invoke-virtual {p1, v5}, Lb/b/h/k;->b(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v2, v5}, Lb/b/h/k;->c(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lb/b/h/k;->b_()V

    move-object p1, v2

    :goto_1
    instance-of v2, v0, Lb/b/a/b/v;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    check-cast v0, Lb/b/a/b/v;

    invoke-virtual {p1}, Lb/b/h/k;->f()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lb/b/a/b/v;->g()Lb/b/a/b/x;

    move-result-object v0

    :cond_3
    :goto_2
    iget-object v2, p0, Lb/b/a/b/p;->a:Lb/b/a/b/u;

    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lb/b/a/b/p;->b:Lb/b/a/b/o;

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lb/b/a/b/p;->c:Lb/b/h/k;

    if-ne v2, p1, :cond_4

    return-object p0

    :cond_4
    new-instance v2, Lb/b/a/b/p;

    invoke-direct {v2, v0, v1, p1}, Lb/b/a/b/p;-><init>(Lb/b/a/b/u;Lb/b/a/b/o;Lb/b/h/k;)V

    return-object v2
.end method

.method public final a(Lb/b/a/b/p;II)Lb/b/a/b/p;
    .registers 11

    iget-object v0, p0, Lb/b/a/b/p;->a:Lb/b/a/b/u;

    iget-object v1, p1, Lb/b/a/b/p;->a:Lb/b/a/b/u;

    invoke-virtual {v0, v1, p3}, Lb/b/a/b/u;->a(Lb/b/a/b/u;I)Lb/b/a/b/v;

    move-result-object p3

    iget-object v0, p0, Lb/b/a/b/p;->b:Lb/b/a/b/o;

    iget-object v1, p1, Lb/b/a/b/p;->b:Lb/b/a/b/o;

    invoke-virtual {v0, v1}, Lb/b/a/b/o;->a(Lb/b/a/b/o;)Lb/b/a/b/o;

    move-result-object v0

    iget-object p1, p1, Lb/b/a/b/p;->c:Lb/b/h/k;

    invoke-virtual {p1}, Lb/b/h/k;->i()Lb/b/h/k;

    move-result-object p1

    invoke-virtual {p1, p2}, Lb/b/h/k;->c(I)V

    invoke-virtual {p1}, Lb/b/h/k;->b_()V

    iget-object p2, p0, Lb/b/a/b/p;->a:Lb/b/a/b/u;

    if-ne p3, p2, :cond_0

    iget-object p2, p0, Lb/b/a/b/p;->b:Lb/b/a/b/o;

    if-ne v0, p2, :cond_0

    iget-object p2, p0, Lb/b/a/b/p;->c:Lb/b/h/k;

    invoke-virtual {p2, p1}, Lb/b/h/k;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    iget-object p2, p0, Lb/b/a/b/p;->c:Lb/b/h/k;

    invoke-virtual {p2, p1}, Lb/b/h/k;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lb/b/a/b/p;->c:Lb/b/h/k;

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lb/b/a/b/p;->c:Lb/b/h/k;

    invoke-virtual {p2}, Lb/b/h/k;->f()I

    move-result p2

    invoke-virtual {p1}, Lb/b/h/k;->f()I

    move-result v1

    if-le p2, v1, :cond_2

    iget-object p2, p0, Lb/b/a/b/p;->c:Lb/b/h/k;

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lb/b/a/b/p;->c:Lb/b/h/k;

    :goto_0
    invoke-virtual {p1}, Lb/b/h/k;->f()I

    move-result v1

    invoke-virtual {p2}, Lb/b/h/k;->f()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-ltz v3, :cond_4

    invoke-virtual {p2, v3}, Lb/b/h/k;->b(I)I

    move-result v4

    sub-int v5, v1, v2

    add-int/2addr v5, v3

    invoke-virtual {p1, v5}, Lb/b/h/k;->b(I)I

    move-result v5

    if-ne v4, v5, :cond_3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Incompatible merged subroutines"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    new-instance p2, Lb/b/a/b/p;

    invoke-direct {p2, p3, v0, p1}, Lb/b/a/b/p;-><init>(Lb/b/a/b/u;Lb/b/a/b/o;Lb/b/h/k;)V

    return-object p2
.end method

.method public final a(Lb/b/f/c/ae;)Lb/b/a/b/p;
    .registers 5

    iget-object v0, p0, Lb/b/a/b/p;->b:Lb/b/a/b/o;

    invoke-virtual {v0}, Lb/b/a/b/o;->f()Lb/b/a/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/b/o;->h()V

    invoke-virtual {v0, p1}, Lb/b/a/b/o;->a(Lb/b/f/d/d;)V

    new-instance p1, Lb/b/a/b/p;

    iget-object v1, p0, Lb/b/a/b/p;->a:Lb/b/a/b/u;

    iget-object v2, p0, Lb/b/a/b/p;->c:Lb/b/h/k;

    invoke-direct {p1, v1, v0, v2}, Lb/b/a/b/p;-><init>(Lb/b/a/b/u;Lb/b/a/b/o;Lb/b/h/k;)V

    return-object p1
.end method

.method public final a(Lb/a/a/c;)V
    .registers 3

    iget-object v0, p0, Lb/b/a/b/p;->a:Lb/b/a/b/u;

    invoke-virtual {v0, p1}, Lb/b/a/b/u;->a(Lb/a/a/c;)V

    iget-object v0, p0, Lb/b/a/b/p;->b:Lb/b/a/b/o;

    invoke-virtual {v0, p1}, Lb/b/a/b/o;->a(Lb/a/a/c;)V

    return-void
.end method

.method public final a(Lb/b/f/d/b;)V
    .registers 7

    invoke-virtual {p1}, Lb/b/f/d/b;->a_()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lb/b/f/d/b;->b(I)Lb/b/f/d/c;

    move-result-object v3

    iget-object v4, p0, Lb/b/a/b/p;->a:Lb/b/a/b/u;

    invoke-virtual {v4, v2, v3}, Lb/b/a/b/u;->a(ILb/b/f/d/d;)V

    invoke-virtual {v3}, Lb/b/f/d/c;->i()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lb/b/f/d/c;)V
    .registers 3

    iget-object v0, p0, Lb/b/a/b/p;->a:Lb/b/a/b/u;

    invoke-virtual {v0, p1}, Lb/b/a/b/u;->a(Lb/b/f/d/c;)V

    iget-object v0, p0, Lb/b/a/b/p;->b:Lb/b/a/b/o;

    invoke-virtual {v0, p1}, Lb/b/a/b/o;->a(Lb/b/f/d/c;)V

    return-void
.end method

.method public final b(II)Lb/b/a/b/p;
    .registers 7

    iget-object v0, p0, Lb/b/a/b/p;->c:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->i()Lb/b/h/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/h/k;->c(I)V

    new-instance v0, Lb/b/a/b/p;

    iget-object v1, p0, Lb/b/a/b/p;->a:Lb/b/a/b/u;

    invoke-virtual {v1}, Lb/b/a/b/u;->g()Lb/b/a/b/x;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/b/p;->b:Lb/b/a/b/o;

    invoke-static {p1}, Lb/b/h/k;->a(I)Lb/b/h/k;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lb/b/a/b/p;-><init>(Lb/b/a/b/u;Lb/b/a/b/o;Lb/b/h/k;)V

    invoke-virtual {v0, p0, p1, p2}, Lb/b/a/b/p;->a(Lb/b/a/b/p;II)Lb/b/a/b/p;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lb/b/a/b/p;->a:Lb/b/a/b/u;

    invoke-virtual {v0}, Lb/b/a/b/u;->b_()V

    iget-object v0, p0, Lb/b/a/b/p;->b:Lb/b/a/b/o;

    invoke-virtual {v0}, Lb/b/a/b/o;->b_()V

    return-void
.end method

.method public final c()Lb/b/a/b/u;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/p;->a:Lb/b/a/b/u;

    return-object v0
.end method

.method public final d()Lb/b/a/b/o;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/p;->b:Lb/b/a/b/o;

    return-object v0
.end method

.method public final e()Lb/b/h/k;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/p;->c:Lb/b/h/k;

    return-object v0
.end method
