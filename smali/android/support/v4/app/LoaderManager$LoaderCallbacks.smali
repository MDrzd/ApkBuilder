.class public interface abstract Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .param p1    # Landroid/support/v4/content/Loader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract onLoaderReset(Landroid/support/v4/content/Loader;)V
    .param p1    # Landroid/support/v4/content/Loader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method
