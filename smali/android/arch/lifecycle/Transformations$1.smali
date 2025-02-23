.class final Landroid/arch/lifecycle/Transformations$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field final synthetic val$func:Landroid/arch/core/util/Function;

.field final synthetic val$result:Landroid/arch/lifecycle/MediatorLiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/MediatorLiveData;Landroid/arch/core/util/Function;)V
    .registers 3

    iput-object p1, p0, Landroid/arch/lifecycle/Transformations$1;->val$result:Landroid/arch/lifecycle/MediatorLiveData;

    iput-object p2, p0, Landroid/arch/lifecycle/Transformations$1;->val$func:Landroid/arch/core/util/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/arch/lifecycle/Transformations$1;->val$result:Landroid/arch/lifecycle/MediatorLiveData;

    iget-object v1, p0, Landroid/arch/lifecycle/Transformations$1;->val$func:Landroid/arch/core/util/Function;

    invoke-interface {v1, p1}, Landroid/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
