.class final Lcom/google/common/collect/Iterables$3;
.super Lcom/google/common/collect/TransformedIterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Iterables$3;->transform(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method final transform(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .registers 2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
