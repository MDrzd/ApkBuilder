.class final Landroid/arch/lifecycle/Transformations$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field mSource:Landroid/arch/lifecycle/LiveData;

.field final synthetic val$func:Landroid/arch/core/util/Function;

.field final synthetic val$result:Landroid/arch/lifecycle/MediatorLiveData;


# direct methods
.method constructor <init>(Landroid/arch/core/util/Function;Landroid/arch/lifecycle/MediatorLiveData;)V
    .registers 3

    iput-object p1, p0, Landroid/arch/lifecycle/Transformations$2;->val$func:Landroid/arch/core/util/Function;

    iput-object p2, p0, Landroid/arch/lifecycle/Transformations$2;->val$result:Landroid/arch/lifecycle/MediatorLiveData;

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

    iget-object v0, p0, Landroid/arch/lifecycle/Transformations$2;->val$func:Landroid/arch/core/util/Function;

    invoke-interface {v0, p1}, Landroid/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/LiveData;

    iget-object v0, p0, Landroid/arch/lifecycle/Transformations$2;->mSource:Landroid/arch/lifecycle/LiveData;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/arch/lifecycle/Transformations$2;->mSource:Landroid/arch/lifecycle/LiveData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/arch/lifecycle/Transformations$2;->val$result:Landroid/arch/lifecycle/MediatorLiveData;

    iget-object v1, p0, Landroid/arch/lifecycle/Transformations$2;->mSource:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MediatorLiveData;->removeSource(Landroid/arch/lifecycle/LiveData;)V

    :cond_1
    iput-object p1, p0, Landroid/arch/lifecycle/Transformations$2;->mSource:Landroid/arch/lifecycle/LiveData;

    iget-object p1, p0, Landroid/arch/lifecycle/Transformations$2;->mSource:Landroid/arch/lifecycle/LiveData;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/arch/lifecycle/Transformations$2;->val$result:Landroid/arch/lifecycle/MediatorLiveData;

    iget-object v0, p0, Landroid/arch/lifecycle/Transformations$2;->mSource:Landroid/arch/lifecycle/LiveData;

    new-instance v1, Landroid/arch/lifecycle/Transformations$2$1;

    invoke-direct {v1, p0}, Landroid/arch/lifecycle/Transformations$2$1;-><init>(Landroid/arch/lifecycle/Transformations$2;)V

    invoke-virtual {p1, v0, v1}, Landroid/arch/lifecycle/MediatorLiveData;->addSource(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V

    :cond_2
    return-void
.end method
