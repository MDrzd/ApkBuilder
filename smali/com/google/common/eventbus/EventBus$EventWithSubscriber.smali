.class Lcom/google/common/eventbus/EventBus$EventWithSubscriber;
.super Ljava/lang/Object;


# instance fields
.field final event:Ljava/lang/Object;

.field final subscriber:Lcom/google/common/eventbus/EventSubscriber;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;->event:Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/eventbus/EventSubscriber;

    iput-object p1, p0, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;->subscriber:Lcom/google/common/eventbus/EventSubscriber;

    return-void
.end method
