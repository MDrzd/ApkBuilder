.class public final Lb/b/a/b/q;
.super Lb/b/h/h;


# static fields
.field public static final a:Lb/b/a/b/q;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb/b/a/b/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/b/a/b/q;-><init>(I)V

    sput-object v0, Lb/b/a/b/q;->a:Lb/b/a/b/q;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/h;-><init>(I)V

    return-void
.end method

.method public static a(Lb/b/a/b/q;Lb/b/a/b/q;)Lb/b/a/b/q;
    .registers 8

    sget-object v0, Lb/b/a/b/q;->a:Lb/b/a/b/q;

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lb/b/a/b/q;->a_()I

    move-result v0

    invoke-virtual {p1}, Lb/b/a/b/q;->a_()I

    move-result v1

    new-instance v2, Lb/b/a/b/q;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Lb/b/a/b/q;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-direct {p0, v4}, Lb/b/a/b/q;->b(I)Lb/b/a/b/r;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lb/b/a/b/q;->a(ILb/b/a/b/r;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v1, :cond_2

    add-int p0, v0, v3

    invoke-direct {p1, v3}, Lb/b/a/b/q;->b(I)Lb/b/a/b/r;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lb/b/a/b/q;->a(ILb/b/a/b/r;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method private a(ILb/b/a/b/r;)V
    .registers 3

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lb/b/a/b/q;->a(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "item == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(I)Lb/b/a/b/r;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/a/b/q;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/a/b/r;

    return-object p1
.end method


# virtual methods
.method public final a(I)I
    .registers 8

    invoke-virtual {p0}, Lb/b/a/b/q;->a_()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-direct {p0, v2}, Lb/b/a/b/q;->b(I)Lb/b/a/b/r;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/a/b/r;->a()I

    move-result v5

    if-gt v5, p1, :cond_0

    if-le v5, v1, :cond_0

    invoke-virtual {v4}, Lb/b/a/b/r;->b()I

    move-result v3

    if-eq v5, p1, :cond_1

    move v1, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final a(III)V
    .registers 5

    new-instance v0, Lb/b/a/b/r;

    invoke-direct {v0, p2, p3}, Lb/b/a/b/r;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lb/b/a/b/q;->a(ILjava/lang/Object;)V

    return-void
.end method
