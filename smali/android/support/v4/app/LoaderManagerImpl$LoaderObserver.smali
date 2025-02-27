.class Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field private final mCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDeliveredData:Z

.field private final mLoader:Landroid/support/v4/content/Loader;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/content/Loader;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V
    .registers 4
    .param p1    # Landroid/support/v4/content/Loader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroid/support/v4/content/Loader;

    iput-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mDeliveredData="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method hasDeliveredData()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    return v0
.end method

.method public onChanged(Ljava/lang/Object;)V
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  onLoadFinished in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v2, p1}, Landroid/support/v4/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroid/support/v4/content/Loader;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    return-void
.end method

.method reset()V
    .registers 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Resetting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroid/support/v4/content/Loader;

    invoke-interface {v0, v1}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroid/support/v4/content/Loader;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
