.class public final Lb/b/a/b/s;
.super Lb/b/h/h;


# static fields
.field public static final a:Lb/b/a/b/s;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb/b/a/b/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/b/a/b/s;-><init>(I)V

    sput-object v0, Lb/b/a/b/s;->a:Lb/b/a/b/s;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/h;-><init>(I)V

    return-void
.end method

.method public static a(Lb/b/a/b/s;Lb/b/a/b/s;)Lb/b/a/b/s;
    .registers 8

    sget-object v0, Lb/b/a/b/s;->a:Lb/b/a/b/s;

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lb/b/a/b/s;->a_()I

    move-result v0

    invoke-virtual {p1}, Lb/b/a/b/s;->a_()I

    move-result v1

    new-instance v2, Lb/b/a/b/s;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Lb/b/a/b/s;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-direct {p0, v4}, Lb/b/a/b/s;->a(I)Lb/b/a/b/t;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lb/b/a/b/s;->a(ILb/b/a/b/t;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v1, :cond_2

    add-int p0, v0, v3

    invoke-direct {p1, v3}, Lb/b/a/b/s;->a(I)Lb/b/a/b/t;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lb/b/a/b/s;->a(ILb/b/a/b/t;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lb/b/a/b/s;->b_()V

    return-object v2
.end method

.method private a(I)Lb/b/a/b/t;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/a/b/s;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/a/b/t;

    return-object p1
.end method

.method private a(ILb/b/a/b/t;)V
    .registers 3

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lb/b/a/b/s;->a(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "item == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Lb/b/a/b/s;Lb/b/a/b/s;)Lb/b/a/b/s;
    .registers 11

    invoke-virtual {p0}, Lb/b/a/b/s;->a_()I

    move-result v0

    new-instance v1, Lb/b/a/b/s;

    invoke-direct {v1, v0}, Lb/b/a/b/s;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-direct {p0, v3}, Lb/b/a/b/s;->a(I)Lb/b/a/b/t;

    move-result-object v4

    invoke-virtual {p1}, Lb/b/a/b/s;->a_()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    invoke-virtual {p1, v6}, Lb/b/a/b/s;->e(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/b/a/b/t;

    if-eqz v7, :cond_0

    invoke-virtual {v7, v4}, Lb/b/a/b/t;->a(Lb/b/a/b/t;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_2

    invoke-static {v7}, Lb/b/a/b/t;->b(Lb/b/a/b/t;)Lb/b/f/c/ad;

    move-result-object v5

    invoke-virtual {v4, v5}, Lb/b/a/b/t;->a(Lb/b/f/c/ad;)Lb/b/a/b/t;

    move-result-object v4

    :cond_2
    invoke-direct {v1, v3, v4}, Lb/b/a/b/s;->a(ILb/b/a/b/t;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lb/b/a/b/s;->b_()V

    return-object v1
.end method


# virtual methods
.method public final a(II)Lb/b/a/b/t;
    .registers 7

    invoke-virtual {p0}, Lb/b/a/b/s;->a_()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lb/b/a/b/s;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/b/t;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Lb/b/a/b/t;->a(II)Z

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

.method public final a(IIILb/b/f/c/ad;Lb/b/f/c/ad;Lb/b/f/c/ad;I)V
    .registers 16

    new-instance v7, Lb/b/a/b/t;

    move-object v0, v7

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lb/b/a/b/t;-><init>(IILb/b/f/c/ad;Lb/b/f/c/ad;Lb/b/f/c/ad;I)V

    invoke-virtual {p0, p1, v7}, Lb/b/a/b/s;->a(ILjava/lang/Object;)V

    return-void
.end method
