.class final Lorg/jf/util/CollectionUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic val$elementComparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/util/CollectionUtils$1;->val$elementComparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/util/Collection;

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lorg/jf/util/CollectionUtils$1;->compare(Ljava/util/Collection;Ljava/util/Collection;)I

    move-result p1

    return p1
.end method

.method public final compare(Ljava/util/Collection;Ljava/util/Collection;)I
    .registers 4

    iget-object v0, p0, Lorg/jf/util/CollectionUtils$1;->val$elementComparator:Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Lorg/jf/util/CollectionUtils;->compareAsList(Ljava/util/Comparator;Ljava/util/Collection;Ljava/util/Collection;)I

    move-result p1

    return p1
.end method
