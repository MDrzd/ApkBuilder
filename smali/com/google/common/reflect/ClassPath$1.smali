.class final Lcom/google/common/reflect/ClassPath$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Predicate;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/common/reflect/ClassPath$ClassInfo;)Z
    .registers 3

    invoke-static {p1}, Lcom/google/common/reflect/ClassPath$ClassInfo;->access$000(Lcom/google/common/reflect/ClassPath$ClassInfo;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/google/common/reflect/ClassPath$ClassInfo;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/ClassPath$1;->apply(Lcom/google/common/reflect/ClassPath$ClassInfo;)Z

    move-result p1

    return p1
.end method
