.class Landroid/support/v4/provider/FontsContractCompat$4$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/provider/FontsContractCompat$4;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Landroid/support/v4/provider/FontsContractCompat$4;I)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$4$7;->this$0:Landroid/support/v4/provider/FontsContractCompat$4;

    iput p2, p0, Landroid/support/v4/provider/FontsContractCompat$4$7;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$4$7;->this$0:Landroid/support/v4/provider/FontsContractCompat$4;

    iget-object v0, v0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    iget v1, p0, Landroid/support/v4/provider/FontsContractCompat$4$7;->val$resultCode:I

    invoke-virtual {v0, v1}, Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method
