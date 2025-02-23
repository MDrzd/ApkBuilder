.class final Lcom/google/common/eventbus/AnnotatedSubscriberFinder$1;
.super Lcom/google/common/cache/CacheLoader;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/cache/CacheLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;
    .registers 2

    invoke-static {p1}, Lcom/google/common/eventbus/AnnotatedSubscriberFinder;->access$000(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/common/eventbus/AnnotatedSubscriberFinder$1;->load(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method
