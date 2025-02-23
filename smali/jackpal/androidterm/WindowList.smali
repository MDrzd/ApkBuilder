.class public Ljackpal/androidterm/WindowList;
.super Landroid/app/ListActivity;


# instance fields
.field private a:Ljackpal/androidterm/c/a;

.field private b:Ljackpal/androidterm/y;

.field private c:Ljackpal/androidterm/TermService;

.field private d:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Ljackpal/androidterm/x;

    invoke-direct {v0, p0}, Ljackpal/androidterm/x;-><init>(Ljackpal/androidterm/WindowList;)V

    iput-object v0, p0, Ljackpal/androidterm/WindowList;->d:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Ljackpal/androidterm/WindowList;Ljackpal/androidterm/TermService;)Ljackpal/androidterm/TermService;
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/WindowList;->c:Ljackpal/androidterm/TermService;

    return-object p1
.end method

.method static synthetic a(Ljackpal/androidterm/WindowList;)V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/WindowList;->c:Ljackpal/androidterm/TermService;

    invoke-virtual {v0}, Ljackpal/androidterm/TermService;->a()Ljackpal/androidterm/c/a;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/WindowList;->a:Ljackpal/androidterm/c/a;

    iget-object v0, p0, Ljackpal/androidterm/WindowList;->b:Ljackpal/androidterm/y;

    if-nez v0, :cond_0

    new-instance v0, Ljackpal/androidterm/y;

    iget-object v1, p0, Ljackpal/androidterm/WindowList;->a:Ljackpal/androidterm/c/a;

    invoke-direct {v0, v1}, Ljackpal/androidterm/y;-><init>(Ljackpal/androidterm/c/a;)V

    invoke-virtual {p0, v0}, Ljackpal/androidterm/WindowList;->setListAdapter(Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Ljackpal/androidterm/WindowList;->b:Ljackpal/androidterm/y;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljackpal/androidterm/WindowList;->a:Ljackpal/androidterm/c/a;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/y;->a(Ljackpal/androidterm/c/a;)V

    :goto_0
    iget-object v1, p0, Ljackpal/androidterm/WindowList;->a:Ljackpal/androidterm/c/a;

    invoke-virtual {v1, v0}, Ljackpal/androidterm/c/a;->a(Ljackpal/androidterm/a/ac;)V

    iget-object p0, p0, Ljackpal/androidterm/WindowList;->a:Ljackpal/androidterm/c/a;

    invoke-virtual {p0, v0}, Ljackpal/androidterm/c/a;->c(Ljackpal/androidterm/a/ac;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ljackpal/androidterm/WindowList;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p0}, Ljackpal/androidterm/WindowList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0a00e0

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v1}, Ljackpal/androidterm/WindowList;->setResult(I)V

    sget p1, Ljackpal/androidterm/compat/f;->a:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_0

    invoke-static {p0}, Ljackpal/androidterm/compat/e;->b(Landroid/app/Activity;)Ljackpal/androidterm/compat/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v0}, Ljackpal/androidterm/compat/c;->a(II)V

    :cond_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "jackpal.androidterm.window_id"

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1}, Ljackpal/androidterm/WindowList;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Ljackpal/androidterm/WindowList;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Ljackpal/androidterm/WindowList;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    iget-object v0, p0, Ljackpal/androidterm/WindowList;->b:Ljackpal/androidterm/y;

    iget-object v1, p0, Ljackpal/androidterm/WindowList;->a:Ljackpal/androidterm/c/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljackpal/androidterm/WindowList;->a:Ljackpal/androidterm/c/a;

    invoke-virtual {v1, v0}, Ljackpal/androidterm/c/a;->b(Ljackpal/androidterm/a/ac;)Z

    iget-object v1, p0, Ljackpal/androidterm/WindowList;->a:Ljackpal/androidterm/c/a;

    invoke-virtual {v1, v0}, Ljackpal/androidterm/c/a;->d(Ljackpal/androidterm/a/ac;)Z

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljackpal/androidterm/y;->a(Ljackpal/androidterm/c/a;)V

    :cond_1
    iget-object v0, p0, Ljackpal/androidterm/WindowList;->d:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Ljackpal/androidterm/WindowList;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method protected onResume()V
    .registers 4

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljackpal/androidterm/TermService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Ljackpal/androidterm/WindowList;->d:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljackpal/androidterm/WindowList;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Term"

    const-string v1, "bind to service failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
