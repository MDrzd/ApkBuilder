.class Landroid/arch/lifecycle/Transformations$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/Transformations$2;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/Transformations$2;)V
    .registers 2

    iput-object p1, p0, Landroid/arch/lifecycle/Transformations$2$1;->this$0:Landroid/arch/lifecycle/Transformations$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/arch/lifecycle/Transformations$2$1;->this$0:Landroid/arch/lifecycle/Transformations$2;

    iget-object v0, v0, Landroid/arch/lifecycle/Transformations$2;->val$result:Landroid/arch/lifecycle/MediatorLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
