.class public Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Landroid/support/v7/widget/AbsActionBarView;


# direct methods
.method protected constructor <init>(Landroid/support/v7/widget/AbsActionBarView;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    iget-boolean p1, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/AbsActionBarView;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object p1, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/AbsActionBarView;

    iget v0, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/AbsActionBarView;->access$101(Landroid/support/v7/widget/AbsActionBarView;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/AbsActionBarView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/AbsActionBarView;->access$001(Landroid/support/v7/widget/AbsActionBarView;I)V

    iput-boolean v0, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/AbsActionBarView;

    iput-object p1, v0, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput p2, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    return-object p0
.end method
