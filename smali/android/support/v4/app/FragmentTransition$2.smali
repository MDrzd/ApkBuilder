.class final Landroid/support/v4/app/FragmentTransition$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$impl:Landroid/support/v4/app/FragmentTransitionImpl;

.field final synthetic val$inFragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/support/v4/app/FragmentTransitionImpl;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 9

    iput-object p1, p0, Landroid/support/v4/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    iput-object p2, p0, Landroid/support/v4/app/FragmentTransition$2;->val$impl:Landroid/support/v4/app/FragmentTransitionImpl;

    iput-object p3, p0, Landroid/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/FragmentTransition$2;->val$inFragment:Landroid/support/v4/app/Fragment;

    iput-object p5, p0, Landroid/support/v4/app/FragmentTransition$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/FragmentTransition$2;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p7, p0, Landroid/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p8, p0, Landroid/support/v4/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$2;->val$impl:Landroid/support/v4/app/FragmentTransitionImpl;

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransitionImpl;->removeTarget(Ljava/lang/Object;Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$2;->val$impl:Landroid/support/v4/app/FragmentTransitionImpl;

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/FragmentTransition$2;->val$inFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Landroid/support/v4/app/FragmentTransition$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Landroid/support/v4/app/FragmentTransitionImpl;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransition$2;->val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransition$2;->val$impl:Landroid/support/v4/app/FragmentTransitionImpl;

    iget-object v2, p0, Landroid/support/v4/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/FragmentTransitionImpl;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
