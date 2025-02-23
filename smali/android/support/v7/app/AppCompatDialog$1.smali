.class Landroid/support/v7/app/AppCompatDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/KeyEventDispatcher$Component;


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDialog;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDialog$1;->this$0:Landroid/support/v7/app/AppCompatDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDialog$1;->this$0:Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDialog;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
