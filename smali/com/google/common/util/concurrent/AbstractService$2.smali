.class final Lcom/google/common/util/concurrent/AbstractService$2;
.super Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final call(Lcom/google/common/util/concurrent/Service$Listener;)V
    .registers 2

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Service$Listener;->running()V

    return-void
.end method

.method final bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/common/util/concurrent/Service$Listener;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractService$2;->call(Lcom/google/common/util/concurrent/Service$Listener;)V

    return-void
.end method
