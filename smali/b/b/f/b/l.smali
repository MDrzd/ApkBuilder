.class public final Lb/b/f/b/l;
.super Lb/b/h/h;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Lb/b/f/b/i;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/f/b/l;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/f/b/i;

    return-object p1
.end method

.method public final a(ILb/b/f/b/i;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lb/b/f/b/l;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lb/b/f/b/k;)V
    .registers 5

    invoke-virtual {p0}, Lb/b/f/b/l;->a_()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lb/b/f/b/l;->a(I)Lb/b/f/b/i;

    move-result-object v2

    invoke-virtual {v2, p1}, Lb/b/f/b/i;->a(Lb/b/f/b/k;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lb/b/f/b/l;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lb/b/f/b/l;->a_()I

    move-result v1

    invoke-virtual {p1}, Lb/b/f/b/l;->a_()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lb/b/f/b/l;->a(I)Lb/b/f/b/i;

    move-result-object v3

    invoke-virtual {p1, v2}, Lb/b/f/b/l;->a(I)Lb/b/f/b/i;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/b/f/b/i;->a(Lb/b/f/b/i;)Z

    move-result v3

    if-nez v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final f()Lb/b/f/b/i;
    .registers 2

    invoke-virtual {p0}, Lb/b/f/b/l;->a_()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lb/b/f/b/l;->a(I)Lb/b/f/b/i;

    move-result-object v0

    return-object v0
.end method
