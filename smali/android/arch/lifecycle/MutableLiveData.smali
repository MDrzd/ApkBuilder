.class public Landroid/arch/lifecycle/MutableLiveData;
.super Landroid/arch/lifecycle/LiveData;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/arch/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method public postValue(Ljava/lang/Object;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/arch/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/arch/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
