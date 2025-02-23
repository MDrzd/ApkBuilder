.class final Lb/b/e/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lb/b/e/y;

    check-cast p2, Lb/b/e/y;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-static {p1}, Lb/b/e/y;->a(Lb/b/e/y;)I

    move-result v0

    invoke-static {p2}, Lb/b/e/y;->a(Lb/b/e/y;)I

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-static {p1}, Lb/b/e/y;->a(Lb/b/e/y;)I

    move-result p1

    invoke-static {p2}, Lb/b/e/y;->a(Lb/b/e/y;)I

    move-result p2

    :goto_0
    sub-int/2addr p1, p2

    return p1

    :cond_3
    invoke-virtual {p1}, Lb/b/e/y;->d()I

    move-result p1

    invoke-virtual {p2}, Lb/b/e/y;->d()I

    move-result p2

    goto :goto_0
.end method
