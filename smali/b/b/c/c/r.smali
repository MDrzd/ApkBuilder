.class final Lb/b/c/c/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lb/b/c/c/q;


# direct methods
.method constructor <init>(Lb/b/c/c/q;)V
    .registers 2

    iput-object p1, p0, Lb/b/c/c/r;->a:Lb/b/c/c/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lb/b/c/b/aa;

    check-cast p2, Lb/b/c/b/aa;

    invoke-virtual {p1}, Lb/b/c/b/aa;->a()I

    move-result p1

    invoke-virtual {p2}, Lb/b/c/b/aa;->a()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
