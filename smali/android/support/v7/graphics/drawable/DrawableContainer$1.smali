.class Landroid/support/v7/graphics/drawable/DrawableContainer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v7/graphics/drawable/DrawableContainer;


# direct methods
.method constructor <init>(Landroid/support/v7/graphics/drawable/DrawableContainer;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer$1;->this$0:Landroid/support/v7/graphics/drawable/DrawableContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer$1;->this$0:Landroid/support/v7/graphics/drawable/DrawableContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/DrawableContainer;->animate(Z)V

    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer$1;->this$0:Landroid/support/v7/graphics/drawable/DrawableContainer;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->invalidateSelf()V

    return-void
.end method
