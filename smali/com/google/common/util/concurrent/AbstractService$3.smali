.class final Lcom/google/common/util/concurrent/AbstractService$3;
.super Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;


# instance fields
.field final synthetic val$from:Lcom/google/common/util/concurrent/Service$State;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/common/util/concurrent/Service$State;)V
    .registers 3

    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractService$3;->val$from:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final call(Lcom/google/common/util/concurrent/Service$Listener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$3;->val$from:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/Service$Listener;->terminated(Lcom/google/common/util/concurrent/Service$State;)V

    return-void
.end method

.method final bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/common/util/concurrent/Service$Listener;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractService$3;->call(Lcom/google/common/util/concurrent/Service$Listener;)V

    return-void
.end method
