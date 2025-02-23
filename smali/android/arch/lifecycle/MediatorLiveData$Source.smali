.class Landroid/arch/lifecycle/MediatorLiveData$Source;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field final mLiveData:Landroid/arch/lifecycle/LiveData;

.field final mObserver:Landroid/arch/lifecycle/Observer;

.field mVersion:I


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mVersion:I

    iput-object p1, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mLiveData:Landroid/arch/lifecycle/LiveData;

    iput-object p2, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mObserver:Landroid/arch/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget v0, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mVersion:I

    iget-object v1, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->getVersion()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData;->getVersion()I

    move-result v0

    iput v0, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mVersion:I

    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mObserver:Landroid/arch/lifecycle/Observer;

    invoke-interface {v0, p1}, Landroid/arch/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method plug()V
    .registers 2

    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/LiveData;->observeForever(Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method unplug()V
    .registers 2

    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    return-void
.end method
