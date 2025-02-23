.class Lcom/google/common/eventbus/AsyncEventBus$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/common/eventbus/AsyncEventBus;

.field final synthetic val$event:Ljava/lang/Object;

.field final synthetic val$subscriber:Lcom/google/common/eventbus/EventSubscriber;


# direct methods
.method constructor <init>(Lcom/google/common/eventbus/AsyncEventBus;Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/eventbus/AsyncEventBus$1;->this$0:Lcom/google/common/eventbus/AsyncEventBus;

    iput-object p2, p0, Lcom/google/common/eventbus/AsyncEventBus$1;->val$event:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/eventbus/AsyncEventBus$1;->val$subscriber:Lcom/google/common/eventbus/EventSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/common/eventbus/AsyncEventBus$1;->this$0:Lcom/google/common/eventbus/AsyncEventBus;

    iget-object v1, p0, Lcom/google/common/eventbus/AsyncEventBus$1;->val$event:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/eventbus/AsyncEventBus$1;->val$subscriber:Lcom/google/common/eventbus/EventSubscriber;

    invoke-static {v0, v1, v2}, Lcom/google/common/eventbus/AsyncEventBus;->access$001(Lcom/google/common/eventbus/AsyncEventBus;Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V

    return-void
.end method
