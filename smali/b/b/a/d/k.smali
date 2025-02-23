.class public final Lb/b/a/d/k;
.super Lb/b/h/h;

# interfaces
.implements Lb/b/a/d/b;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/h;-><init>(I)V

    return-void
.end method

.method private a(I)Lb/b/a/d/a;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/a/d/k;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/a/d/a;

    return-object p1
.end method


# virtual methods
.method public final a()I
    .registers 5

    invoke-virtual {p0}, Lb/b/a/d/k;->a_()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-direct {p0, v2}, Lb/b/a/d/k;->a(I)Lb/b/a/d/a;

    move-result-object v3

    invoke-interface {v3}, Lb/b/a/d/a;->a()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final a(Lb/b/a/d/a;)Lb/b/a/d/a;
    .registers 7

    invoke-virtual {p0}, Lb/b/a/d/k;->a_()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    invoke-direct {p0, v1}, Lb/b/a/d/k;->a(I)Lb/b/a/d/a;

    move-result-object v3

    if-eq v3, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lb/b/a/d/a;->g()Ljava/lang/String;

    move-result-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_2

    invoke-direct {p0, v1}, Lb/b/a/d/k;->a(I)Lb/b/a/d/a;

    move-result-object v3

    invoke-interface {v3}, Lb/b/a/d/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_2
    return-object v2
.end method

.method public final a(Ljava/lang/String;)Lb/b/a/d/a;
    .registers 6

    invoke-virtual {p0}, Lb/b/a/d/k;->a_()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-direct {p0, v1}, Lb/b/a/d/k;->a(I)Lb/b/a/d/a;

    move-result-object v2

    invoke-interface {v2}, Lb/b/a/d/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(ILb/b/a/d/a;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lb/b/a/d/k;->a(ILjava/lang/Object;)V

    return-void
.end method
