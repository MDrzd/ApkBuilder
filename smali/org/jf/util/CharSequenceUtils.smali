.class public Lorg/jf/util/CharSequenceUtils;
.super Ljava/lang/Object;


# static fields
.field private static final TO_STRING:Lcom/google/common/base/Function;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/common/base/Functions;->toStringFunction()Lcom/google/common/base/Function;

    move-result-object v0

    sput-object v0, Lorg/jf/util/CharSequenceUtils;->TO_STRING:Lcom/google/common/base/Function;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static listEquals(Ljava/util/List;Ljava/util/List;)Z
    .registers 3

    sget-object v0, Lorg/jf/util/CharSequenceUtils;->TO_STRING:Lcom/google/common/base/Function;

    invoke-static {p0, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lorg/jf/util/CharSequenceUtils;->TO_STRING:Lcom/google/common/base/Function;

    invoke-static {p1, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static listHashCode(Ljava/util/List;)I
    .registers 2

    sget-object v0, Lorg/jf/util/CharSequenceUtils;->TO_STRING:Lcom/google/common/base/Function;

    invoke-static {p0, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    return p0
.end method
