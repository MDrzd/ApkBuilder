.class public Lorg/apache/commons/lang3/reflect/InheritanceUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distance(Ljava/lang/Class;Ljava/lang/Class;)I
    .registers 5

    const/4 v0, -0x1

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/lang3/BooleanUtils;->toInteger(Z)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    return v1

    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/InheritanceUtils;->distance(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p0

    add-int/2addr v1, p0

    if-lez v1, :cond_3

    add-int/2addr v1, v2

    return v1

    :cond_3
    :goto_0
    return v0
.end method
