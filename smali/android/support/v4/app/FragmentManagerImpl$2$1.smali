.class Landroid/support/v4/app/FragmentManagerImpl$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroid/support/v4/app/FragmentManagerImpl$2;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl$2;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$2$1;->this$1:Landroid/support/v4/app/FragmentManagerImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$2$1;->this$1:Landroid/support/v4/app/FragmentManagerImpl$2;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl$2;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$2$1;->this$1:Landroid/support/v4/app/FragmentManagerImpl$2;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl$2;->val$fragment:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$2$1;->this$1:Landroid/support/v4/app/FragmentManagerImpl$2;

    iget-object v1, v0, Landroid/support/v4/app/FragmentManagerImpl$2;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$2$1;->this$1:Landroid/support/v4/app/FragmentManagerImpl$2;

    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl$2;->val$fragment:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$2$1;->this$1:Landroid/support/v4/app/FragmentManagerImpl$2;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl$2;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_0
    return-void
.end method
