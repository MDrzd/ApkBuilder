.class Landroid/support/v4/provider/FontsContractCompat$4$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/provider/FontsContractCompat$4;


# direct methods
.method constructor <init>(Landroid/support/v4/provider/FontsContractCompat$4;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$4$6;->this$0:Landroid/support/v4/provider/FontsContractCompat$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$4$6;->this$0:Landroid/support/v4/provider/FontsContractCompat$4;

    iget-object v0, v0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method
