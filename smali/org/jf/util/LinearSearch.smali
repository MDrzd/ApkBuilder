.class public Lorg/jf/util/LinearSearch;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static linearSearch(Ljava/util/List;Ljava/util/Comparator;Ljava/lang/Object;I)I
    .registers 6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :cond_0
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    return p3

    :cond_1
    if-gez v0, :cond_5

    :goto_0
    add-int/lit8 p3, p3, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    return p3

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 p3, p3, 0x1

    neg-int p0, p3

    return p0

    :cond_3
    goto :goto_0

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    return p0

    :cond_5
    const/4 v0, -0x1

    add-int/2addr p3, v0

    :goto_1
    if-ltz p3, :cond_8

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_6

    return p3

    :cond_6
    if-gez v1, :cond_7

    add-int/lit8 p3, p3, 0x2

    neg-int p0, p3

    return p0

    :cond_7
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_8
    return v0
.end method
