.class public final Lb/b/f/b/u;
.super Lb/b/h/h;

# interfaces
.implements Lb/b/f/d/e;


# static fields
.field public static final a:Lb/b/f/b/u;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb/b/f/b/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/b/f/b/u;-><init>(I)V

    sput-object v0, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/h;-><init>(I)V

    return-void
.end method

.method public static a(Lb/b/f/b/r;)Lb/b/f/b/u;
    .registers 3

    new-instance v0, Lb/b/f/b/u;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lb/b/f/b/u;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lb/b/f/b/u;->a(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lb/b/f/b/r;Lb/b/f/b/r;)Lb/b/f/b/u;
    .registers 4

    new-instance v0, Lb/b/f/b/u;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lb/b/f/b/u;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lb/b/f/b/u;->a(ILjava/lang/Object;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1}, Lb/b/f/b/u;->a(ILjava/lang/Object;)V

    return-object v0
.end method

.method static synthetic a(Lb/b/f/b/u;I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/f/b/u;->e(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lb/b/f/b/u;ILjava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lb/b/f/b/u;->a(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(IZLjava/util/BitSet;)Lb/b/f/b/u;
    .registers 11

    invoke-virtual {p0}, Lb/b/f/b/u;->a_()I

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v6, Lb/b/f/b/v;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lb/b/f/b/v;-><init>(Lb/b/f/b/u;Ljava/util/BitSet;IZB)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    invoke-static {v6, p2}, Lb/b/f/b/v;->a(Lb/b/f/b/v;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lb/b/f/b/v;->a(Lb/b/f/b/v;)Lb/b/f/b/u;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/BitSet;)Lb/b/f/b/u;
    .registers 6

    invoke-virtual {p0}, Lb/b/f/b/u;->a_()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    sget-object p1, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    return-object p1

    :cond_0
    new-instance v1, Lb/b/f/b/u;

    invoke-direct {v1, v0}, Lb/b/f/b/u;-><init>(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lb/b/f/b/u;->a_()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v0}, Lb/b/f/b/u;->e(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lb/b/f/b/u;->a(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lb/b/f/b/u;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lb/b/f/b/u;->b_()V

    :cond_3
    return-object v1
.end method

.method public final a(I)Lb/b/f/d/c;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/d/c;->a()Lb/b/f/d/c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/f/d/c;)Lb/b/f/d/e;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ILb/b/f/b/r;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lb/b/f/b/u;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final b(I)Lb/b/f/b/r;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/f/b/u;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/f/b/r;

    return-object p1
.end method

.method public final b(Lb/b/f/b/r;)Lb/b/f/b/u;
    .registers 7

    invoke-virtual {p0}, Lb/b/f/b/u;->a_()I

    move-result v0

    new-instance v1, Lb/b/f/b/u;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Lb/b/f/b/u;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Lb/b/f/b/u;->e(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lb/b/f/b/u;->a(ILjava/lang/Object;)V

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2, p1}, Lb/b/f/b/u;->a(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lb/b/f/b/u;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lb/b/f/b/u;->b_()V

    :cond_1
    return-object v1
.end method

.method public final c(I)I
    .registers 5

    invoke-virtual {p0}, Lb/b/f/b/u;->a_()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->f()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final d(I)Lb/b/f/b/u;
    .registers 6

    invoke-virtual {p0}, Lb/b/f/b/u;->a_()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lb/b/f/b/u;

    invoke-direct {v1, v0}, Lb/b/f/b/u;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lb/b/f/b/u;->e(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/f/b/r;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Lb/b/f/b/r;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lb/b/f/b/u;->a(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lb/b/f/b/u;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lb/b/f/b/u;->b_()V

    :cond_3
    return-object v1
.end method

.method public final f()I
    .registers 5

    invoke-virtual {p0}, Lb/b/f/b/u;->a_()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lb/b/f/b/u;->a(I)Lb/b/f/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/d/c;->i()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final g()Lb/b/f/b/u;
    .registers 6

    invoke-virtual {p0}, Lb/b/f/b/u;->a_()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    return-object v0

    :cond_0
    new-instance v1, Lb/b/f/b/u;

    invoke-direct {v1, v0}, Lb/b/f/b/u;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lb/b/f/b/u;->e(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lb/b/f/b/u;->a(ILjava/lang/Object;)V

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lb/b/f/b/u;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lb/b/f/b/u;->b_()V

    :cond_2
    return-object v1
.end method

.method public final i()Lb/b/f/b/u;
    .registers 5

    invoke-virtual {p0}, Lb/b/f/b/u;->a_()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    return-object v0

    :cond_0
    new-instance v1, Lb/b/f/b/u;

    invoke-direct {v1, v0}, Lb/b/f/b/u;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lb/b/f/b/u;->e(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lb/b/f/b/u;->a(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lb/b/f/b/u;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lb/b/f/b/u;->b_()V

    :cond_2
    return-object v1
.end method
