.class Lcom/google/common/util/concurrent/AbstractService$9;
.super Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractService;

.field final synthetic val$cause:Ljava/lang/Throwable;

.field final synthetic val$from:Lcom/google/common/util/concurrent/Service$State;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractService;Ljava/lang/String;Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .registers 5

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$9;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    iput-object p3, p0, Lcom/google/common/util/concurrent/AbstractService$9;->val$from:Lcom/google/common/util/concurrent/Service$State;

    iput-object p4, p0, Lcom/google/common/util/concurrent/AbstractService$9;->val$cause:Ljava/lang/Throwable;

    invoke-direct {p0, p2}, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method call(Lcom/google/common/util/concurrent/Service$Listener;)V
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$9;->val$from:Lcom/google/common/util/concurrent/Service$State;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService$9;->val$cause:Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v1}, Lcom/google/common/util/concurrent/Service$Listener;->failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V

    return-void
.end method

.method bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/common/util/concurrent/Service$Listener;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractService$9;->call(Lcom/google/common/util/concurrent/Service$Listener;)V

    return-void
.end method
