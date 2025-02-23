.class Lcom/google/common/eventbus/EventBus$2;
.super Ljava/lang/ThreadLocal;


# instance fields
.field final synthetic this$0:Lcom/google/common/eventbus/EventBus;


# direct methods
.method constructor <init>(Lcom/google/common/eventbus/EventBus;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/eventbus/EventBus$2;->this$0:Lcom/google/common/eventbus/EventBus;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/eventbus/EventBus$2;->initialValue()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/Queue;
    .registers 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method
