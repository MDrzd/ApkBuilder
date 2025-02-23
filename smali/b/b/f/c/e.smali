.class public final Lb/b/f/c/e;
.super Lb/b/h/h;

# interfaces
.implements Ljava/lang/Comparable;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/f/c/e;)I
    .registers 9

    invoke-virtual {p0}, Lb/b/f/c/e;->a_()I

    move-result v0

    invoke-virtual {p1}, Lb/b/f/c/e;->a_()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    invoke-virtual {p0, v4}, Lb/b/f/c/e;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/f/c/a;

    invoke-virtual {p1, v4}, Lb/b/f/c/e;->e(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/b/f/c/a;

    invoke-virtual {v5, v6}, Lb/b/f/c/a;->a(Lb/b/f/c/a;)I

    move-result v5

    if-eqz v5, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-ge v0, v1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    if-le v0, v1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v3
.end method

.method public final a(I)Lb/b/f/c/a;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/f/c/e;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/f/c/a;

    return-object p1
.end method

.method public final a(ILb/b/f/c/a;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lb/b/f/c/e;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/b/f/c/e;

    invoke-virtual {p0, p1}, Lb/b/f/c/e;->a(Lb/b/f/c/e;)I

    move-result p1

    return p1
.end method
