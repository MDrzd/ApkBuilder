.class public final Lb/b/a/b/g;
.super Lb/b/h/h;


# static fields
.field public static final a:Lb/b/a/b/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb/b/a/b/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/b/a/b/g;-><init>(I)V

    sput-object v0, Lb/b/a/b/g;->a:Lb/b/a/b/g;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Lb/b/a/b/h;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/a/b/g;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/a/b/h;

    return-object p1
.end method

.method public final a(IIIILb/b/f/c/ae;)V
    .registers 7

    new-instance v0, Lb/b/a/b/h;

    invoke-direct {v0, p2, p3, p4, p5}, Lb/b/a/b/h;-><init>(IIILb/b/f/c/ae;)V

    invoke-virtual {p0, p1, v0}, Lb/b/a/b/g;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final b(I)Lb/b/a/b/g;
    .registers 12

    invoke-virtual {p0}, Lb/b/a/b/g;->a_()I

    move-result v0

    new-array v1, v0, [Lb/b/a/b/h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Lb/b/a/b/g;->a(I)Lb/b/a/b/h;

    move-result-object v5

    invoke-virtual {v5, p1}, Lb/b/a/b/h;->a(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lb/b/a/b/h;->d()Lb/b/f/c/ae;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_2

    aget-object v8, v1, v7

    invoke-virtual {v8}, Lb/b/a/b/h;->d()Lb/b/f/c/ae;

    move-result-object v8

    if-eq v8, v6, :cond_1

    sget-object v9, Lb/b/f/c/ae;->a:Lb/b/f/c/ae;

    if-ne v8, v9, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_2
    const/4 v6, 0x1

    :goto_3
    if-eqz v6, :cond_3

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    sget-object p1, Lb/b/a/b/g;->a:Lb/b/a/b/g;

    return-object p1

    :cond_5
    new-instance p1, Lb/b/a/b/g;

    invoke-direct {p1, v4}, Lb/b/a/b/g;-><init>(I)V

    :goto_4
    if-ge v2, v4, :cond_7

    aget-object v0, v1, v2

    if-eqz v0, :cond_6

    invoke-virtual {p1, v2, v0}, Lb/b/a/b/g;->a(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "item == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {p1}, Lb/b/a/b/g;->b_()V

    return-object p1
.end method

.method public final c(I)Lb/b/h/k;
    .registers 7

    const/4 v0, -0x1

    if-lt p1, v0, :cond_5

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lb/b/a/b/g;->a_()I

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    invoke-static {p1}, Lb/b/h/k;->a(I)Lb/b/h/k;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lb/b/h/k;->a:Lb/b/h/k;

    return-object p1

    :cond_2
    new-instance v3, Lb/b/h/k;

    add-int v4, v2, v1

    invoke-direct {v3, v4}, Lb/b/h/k;-><init>(I)V

    :goto_1
    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Lb/b/a/b/g;->a(I)Lb/b/a/b/h;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/a/b/h;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lb/b/h/k;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v3, p1}, Lb/b/h/k;->c(I)V

    :cond_4
    invoke-virtual {v3}, Lb/b/h/k;->b_()V

    return-object v3

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "noException < -1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f()Lb/b/f/d/e;
    .registers 5

    invoke-virtual {p0}, Lb/b/a/b/g;->a_()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lb/b/f/d/b;->a:Lb/b/f/d/b;

    return-object v0

    :cond_0
    new-instance v1, Lb/b/f/d/b;

    invoke-direct {v1, v0}, Lb/b/f/d/b;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lb/b/a/b/g;->a(I)Lb/b/a/b/h;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/a/b/h;->d()Lb/b/f/c/ae;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lb/b/f/d/b;->a(ILb/b/f/d/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lb/b/f/d/b;->b_()V

    return-object v1
.end method
