.class final Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 3

    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {p2, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    return-void
.end method

.method public final onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
