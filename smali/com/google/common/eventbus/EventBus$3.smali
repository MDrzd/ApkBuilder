.class Lcom/google/common/eventbus/EventBus$3;
.super Ljava/lang/ThreadLocal;


# instance fields
.field final synthetic this$0:Lcom/google/common/eventbus/EventBus;


# direct methods
.method constructor <init>(Lcom/google/common/eventbus/EventBus;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/eventbus/EventBus$3;->this$0:Lcom/google/common/eventbus/EventBus;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Boolean;
    .registers 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/eventbus/EventBus$3;->initialValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
