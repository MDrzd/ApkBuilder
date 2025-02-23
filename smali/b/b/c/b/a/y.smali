.class public final Lb/b/c/b/a/y;
.super Lb/b/c/b/p;


# static fields
.field public static final a:Lb/b/c/b/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/c/b/a/y;

    invoke-direct {v0}, Lb/b/c/b/a/y;-><init>()V

    sput-object v0, Lb/b/c/b/a/y;->a:Lb/b/c/b/p;

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

    const/4 v0, 0x4

    return v0
.end method

.method public final a(Lb/b/c/b/k;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object v1

    invoke-static {v1}, Lb/b/c/b/a/y;->b(Lb/b/f/b/u;)Ljava/lang/String;

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
    .registers 8

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

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/u;->a_()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/r;->f()I

    move-result v1

    int-to-short v1, v1

    :cond_0
    invoke-virtual {v3}, Lb/b/f/b/u;->f()I

    move-result v3

    invoke-static {p2, v3}, Lb/b/c/b/a/y;->a(Lb/b/c/b/k;I)S

    move-result p2

    invoke-static {p1, p2, v2, v1, v0}, Lb/b/c/b/a/y;->a(Lb/b/h/r;SSSS)V

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

    invoke-virtual {p1, v1}, Lb/b/c/b/w;->b(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lb/b/c/b/w;->b(I)I

    move-result v3

    invoke-static {v0}, Lb/b/c/b/a/y;->e(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lb/b/c/b/a/y;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lb/b/c/b/w;->a(I)Lb/b/f/c/a;

    move-result-object v0

    instance-of v0, v0, Lb/b/f/c/z;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1, v2}, Lb/b/c/b/w;->a(I)Lb/b/f/c/a;

    move-result-object v0

    instance-of v0, v0, Lb/b/f/c/ab;

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Lb/b/c/b/w;->k()Lb/b/f/b/u;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/u;->a_()I

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    invoke-virtual {p1}, Lb/b/f/b/u;->f()I

    move-result v3

    invoke-static {v3}, Lb/b/c/b/a/y;->c(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Lb/b/c/b/a/y;->e(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-static {v0}, Lb/b/c/b/a/y;->e(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lb/b/c/b/a/y;->c(Lb/b/f/b/u;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    :goto_0
    return v1
.end method
