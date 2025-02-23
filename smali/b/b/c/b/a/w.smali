.class public final Lb/b/c/b/a/w;
.super Lb/b/c/b/p;


# static fields
.field public static final a:Lb/b/c/b/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/c/b/a/w;

    invoke-direct {v0}, Lb/b/c/b/a/w;-><init>()V

    sput-object v0, Lb/b/c/b/a/w;->a:Lb/b/c/b/p;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/b/c/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public final a(Lb/b/c/b/k;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object v1

    invoke-static {v1}, Lb/b/c/b/a/w;->b(Lb/b/f/b/u;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lb/b/c/b/k;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    .registers 7

    invoke-virtual {p2}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lb/b/c/b/h;

    invoke-virtual {v1}, Lb/b/c/b/h;->d()I

    move-result v1

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->f()I

    move-result v3

    :goto_0
    invoke-virtual {v0}, Lb/b/f/b/u;->f()I

    move-result v0

    invoke-static {p2, v0}, Lb/b/c/b/a/w;->a(Lb/b/c/b/k;I)S

    move-result p2

    int-to-short v0, v1

    int-to-short v1, v3

    invoke-static {p1, p2, v0, v1}, Lb/b/c/b/a/w;->a(Lb/b/h/r;SSS)V

    return-void
.end method

.method public final b(Lb/b/c/b/k;)Z
    .registers 5

    instance-of v0, p1, Lb/b/c/b/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lb/b/c/b/h;

    invoke-virtual {p1}, Lb/b/c/b/h;->d()I

    move-result v0

    invoke-virtual {p1}, Lb/b/c/b/h;->c()Lb/b/f/c/a;

    move-result-object v2

    invoke-static {v0}, Lb/b/c/b/a/w;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    instance-of v0, v2, Lb/b/f/c/z;

    if-nez v0, :cond_2

    instance-of v0, v2, Lb/b/f/c/ae;

    if-nez v0, :cond_2

    instance-of v0, v2, Lb/b/f/c/j;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lb/b/c/b/h;->k()Lb/b/f/b/u;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/u;->a_()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lb/b/c/b/a/w;->c(Lb/b/f/b/u;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-static {v0}, Lb/b/c/b/a/w;->e(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lb/b/f/b/u;->f()I

    move-result p1

    invoke-static {p1}, Lb/b/c/b/a/w;->c(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
