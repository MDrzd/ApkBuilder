.class Landroid/support/v7/widget/ActionBarOverlayLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return-void
.end method
