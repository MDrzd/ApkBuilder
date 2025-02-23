.class Landroid/support/v7/widget/TooltipCompatHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/TooltipCompatHandler;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/TooltipCompatHandler;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/TooltipCompatHandler$2;->this$0:Landroid/support/v7/widget/TooltipCompatHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler$2;->this$0:Landroid/support/v7/widget/TooltipCompatHandler;

    invoke-virtual {v0}, Landroid/support/v7/widget/TooltipCompatHandler;->hide()V

    return-void
.end method
