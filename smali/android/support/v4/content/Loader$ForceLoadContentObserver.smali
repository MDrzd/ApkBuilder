.class public final Landroid/support/v4/content/Loader$ForceLoadContentObserver;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic this$0:Landroid/support/v4/content/Loader;


# direct methods
.method public constructor <init>(Landroid/support/v4/content/Loader;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;->this$0:Landroid/support/v4/content/Loader;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .registers 2

    iget-object p1, p0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;->this$0:Landroid/support/v4/content/Loader;

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->onContentChanged()V

    return-void
.end method
