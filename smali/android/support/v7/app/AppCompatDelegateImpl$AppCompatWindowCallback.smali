.class Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;
.super Landroid/support/v7/view/WindowCallbackWrapper;


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/view/Window$Callback;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0, p2}, Landroid/support/v7/view/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v7/view/WindowCallbackWrapper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/view/WindowCallbackWrapper;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onContentChanged()V
    .registers 1

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    if-nez p1, :cond_0

    instance-of v0, p2, Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/WindowCallbackWrapper;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/support/v7/view/WindowCallbackWrapper;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {p2, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->onMenuOpened(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/support/v7/view/WindowCallbackWrapper;->onPanelClosed(ILandroid/view/Menu;)V

    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {p2, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->onPanelClosed(I)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 7

    instance-of v0, p3, Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroid/support/v7/view/menu/MenuBuilder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/MenuBuilder;->setOverrideVisibleItems(Z)V

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->setOverrideVisibleItems(Z)V

    :cond_3
    return p1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 7
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object p2, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/WindowCallbackWrapper;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/WindowCallbackWrapper;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->isHandleNativeActionModesEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/view/WindowCallbackWrapper;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->isHandleNativeActionModesEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/WindowCallbackWrapper;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method final startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    new-instance v0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroid/support/v7/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
