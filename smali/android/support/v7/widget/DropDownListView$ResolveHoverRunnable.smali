.class Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/DropDownListView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/DropDownListView;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/support/v7/widget/DropDownListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/support/v7/widget/DropDownListView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/DropDownListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public post()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/DropDownListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/support/v7/widget/DropDownListView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->drawableStateChanged()V

    return-void
.end method
