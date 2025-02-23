.class final Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/ViewModelProvider$Factory;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;
    .registers 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance p1, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;

    invoke-direct {p1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;-><init>()V

    return-object p1
.end method
