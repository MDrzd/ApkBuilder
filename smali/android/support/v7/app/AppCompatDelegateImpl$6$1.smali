.class Landroid/support/v7/app/AppCompatDelegateImpl$6$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;


# instance fields
.field final synthetic this$1:Landroid/support/v7/app/AppCompatDelegateImpl$6;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl$6;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$6;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$6;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$6;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$6;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$6;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
