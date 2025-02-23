.class final Lb/b/c/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lb/b/c/c/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lb/b/c/c/a;

    check-cast p2, Lb/b/c/c/a;

    invoke-static {p1}, Lb/b/c/c/a;->a(Lb/b/c/c/a;)Lb/b/c/c/bf;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/c/c/bf;->i()I

    move-result p1

    invoke-static {p2}, Lb/b/c/c/a;->a(Lb/b/c/c/a;)Lb/b/c/c/bf;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/c/c/bf;->i()I

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
