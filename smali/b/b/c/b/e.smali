.class public final Lb/b/c/b/e;
.super Lb/b/h/h;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lb/b/c/b/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb/b/c/b/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/b/c/b/e;-><init>(I)V

    sput-object v0, Lb/b/c/b/e;->a:Lb/b/c/b/e;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Lb/b/c/b/f;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/c/b/e;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/c/b/f;

    return-object p1
.end method

.method public final a(ILb/b/c/b/f;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lb/b/c/b/e;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 9

    check-cast p1, Lb/b/c/b/e;

    const/4 v0, 0x0

    if-eq p0, p1, :cond_3

    invoke-virtual {p0}, Lb/b/c/b/e;->a_()I

    move-result v1

    invoke-virtual {p1}, Lb/b/c/b/e;->a_()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {p0, v4}, Lb/b/c/b/e;->a(I)Lb/b/c/b/f;

    move-result-object v5

    invoke-virtual {p1, v4}, Lb/b/c/b/e;->a(I)Lb/b/c/b/f;

    move-result-object v6

    invoke-virtual {v5, v6}, Lb/b/c/b/f;->a(Lb/b/c/b/f;)I

    move-result v5

    if-eqz v5, :cond_0

    return v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-ge v1, v2, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    if-le v1, v2, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method
