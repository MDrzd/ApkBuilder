.class Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->isVisibleToUser(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->computeContentWidth()V

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->access$001(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V

    return-void
.end method
