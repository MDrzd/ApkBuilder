.class final Lcom/google/common/reflect/TypeToken$TypeCollector$4;
.super Lcom/google/common/collect/Ordering;


# instance fields
.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$valueComparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$TypeCollector$4;->val$valueComparator:Ljava/util/Comparator;

    iput-object p2, p0, Lcom/google/common/reflect/TypeToken$TypeCollector$4;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$TypeCollector$4;->val$valueComparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$TypeCollector$4;->val$map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$TypeCollector$4;->val$map:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
