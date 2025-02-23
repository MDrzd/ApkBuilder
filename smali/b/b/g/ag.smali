.class public final Lb/b/g/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lb/b/g/af;

    check-cast p2, Lb/b/g/af;

    invoke-static {p1}, Lb/b/g/af;->d(Lb/b/g/af;)I

    move-result p1

    invoke-static {p2}, Lb/b/g/af;->d(Lb/b/g/af;)I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
