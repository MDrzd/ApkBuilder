.class Landroid/support/v7/widget/SearchView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/SearchView$3;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4

    iget-object p1, p0, Landroid/support/v7/widget/SearchView$3;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object p1, p1, Landroid/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/SearchView$3;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object p1, p1, Landroid/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$3;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-interface {p1, v0, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
