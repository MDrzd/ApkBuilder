.class Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CoordinatorLayout;)V
    .registers 2

    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 3

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    const/4 v0, 0x1

    return v0
.end method
