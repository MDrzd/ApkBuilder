.class Landroid/support/v7/app/AppCompatDelegateImpl$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedFromWindow()V
    .registers 1

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->dismissPopups()V

    return-void
.end method
