.class final Landroid/support/v4/view/MenuItemCompat$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field final synthetic val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;


# direct methods
.method constructor <init>(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/MenuItemCompat$1;->val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/MenuItemCompat$1;->val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/MenuItemCompat$1;->val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
