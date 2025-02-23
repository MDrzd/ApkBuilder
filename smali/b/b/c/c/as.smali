.class final Lb/b/c/c/as;
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
    .registers 3

    check-cast p1, Lb/b/c/c/av;

    check-cast p2, Lb/b/c/c/av;

    invoke-virtual {p1}, Lb/b/c/c/av;->a()Lb/b/c/c/ai;

    move-result-object p1

    invoke-virtual {p2}, Lb/b/c/c/av;->a()Lb/b/c/c/ai;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/b/c/c/ai;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method
