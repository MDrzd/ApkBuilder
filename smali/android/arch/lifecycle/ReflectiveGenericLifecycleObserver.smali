.class Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# instance fields
.field private final mInfo:Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;

.field private final mWrapped:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    sget-object p1, Landroid/arch/lifecycle/ClassesInfoCache;->sInstance:Landroid/arch/lifecycle/ClassesInfoCache;

    iget-object v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->mInfo:Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .registers 5

    iget-object v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->mInfo:Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;

    iget-object v1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, v1}, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;->invokeCallbacks(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    return-void
.end method
