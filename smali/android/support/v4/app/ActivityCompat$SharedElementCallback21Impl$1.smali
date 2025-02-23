.class Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener;


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;

.field final synthetic val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl$1;->this$0:Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;

    iput-object p2, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl$1;->val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl$1;->val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-interface {v0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    return-void
.end method
