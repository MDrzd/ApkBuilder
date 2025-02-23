.class Landroid/arch/lifecycle/LiveData$AlwaysActiveObserver;
.super Landroid/arch/lifecycle/LiveData$ObserverWrapper;


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V
    .registers 3

    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$AlwaysActiveObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-direct {p0, p1, p2}, Landroid/arch/lifecycle/LiveData$ObserverWrapper;-><init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method shouldBeActive()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
