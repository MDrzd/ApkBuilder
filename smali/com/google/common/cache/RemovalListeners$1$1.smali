.class Lcom/google/common/cache/RemovalListeners$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/common/cache/RemovalListeners$1;

.field final synthetic val$notification:Lcom/google/common/cache/RemovalNotification;


# direct methods
.method constructor <init>(Lcom/google/common/cache/RemovalListeners$1;Lcom/google/common/cache/RemovalNotification;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/cache/RemovalListeners$1$1;->this$0:Lcom/google/common/cache/RemovalListeners$1;

    iput-object p2, p0, Lcom/google/common/cache/RemovalListeners$1$1;->val$notification:Lcom/google/common/cache/RemovalNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/cache/RemovalListeners$1$1;->this$0:Lcom/google/common/cache/RemovalListeners$1;

    iget-object v0, v0, Lcom/google/common/cache/RemovalListeners$1;->val$listener:Lcom/google/common/cache/RemovalListener;

    iget-object v1, p0, Lcom/google/common/cache/RemovalListeners$1$1;->val$notification:Lcom/google/common/cache/RemovalNotification;

    invoke-interface {v0, v1}, Lcom/google/common/cache/RemovalListener;->onRemoval(Lcom/google/common/cache/RemovalNotification;)V

    return-void
.end method
