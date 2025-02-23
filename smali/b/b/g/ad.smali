.class public abstract Lb/b/g/ad;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Lb/b/f/b/r;)Lb/b/f/b/r;
.end method

.method public final a(Lb/b/f/b/u;)Lb/b/f/b/u;
    .registers 6

    invoke-virtual {p1}, Lb/b/f/b/u;->a_()I

    move-result v0

    new-instance v1, Lb/b/f/b/u;

    invoke-direct {v1, v0}, Lb/b/f/b/u;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {p0, v3}, Lb/b/g/ad;->a(Lb/b/f/b/r;)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lb/b/f/b/u;->a(ILb/b/f/b/r;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lb/b/f/b/u;->b_()V

    invoke-virtual {v1, p1}, Lb/b/f/b/u;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public final a(Lb/b/f/b/w;)Lb/b/f/b/w;
    .registers 6

    invoke-virtual {p1}, Lb/b/f/b/w;->f()I

    move-result v0

    new-instance v1, Lb/b/f/b/w;

    invoke-virtual {p0}, Lb/b/g/ad;->a()I

    move-result v2

    invoke-direct {v1, v2}, Lb/b/f/b/w;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lb/b/f/b/w;->a(I)Lb/b/f/b/r;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lb/b/g/ad;->a(Lb/b/f/b/r;)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lb/b/f/b/w;->d(Lb/b/f/b/r;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lb/b/f/b/w;->b_()V

    invoke-virtual {v1, p1}, Lb/b/f/b/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    return-object v1
.end method
