.class Landroid/support/v4/content/LocalBroadcastManager$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Landroid/support/v4/content/LocalBroadcastManager;


# direct methods
.method constructor <init>(Landroid/support/v4/content/LocalBroadcastManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/content/LocalBroadcastManager$1;->this$0:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    iget-object p1, p0, Landroid/support/v4/content/LocalBroadcastManager$1;->this$0:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p1}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V

    return-void
.end method
