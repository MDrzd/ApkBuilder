.class final Ljackpal/androidterm/compat/a;
.super Ljackpal/androidterm/compat/c;


# instance fields
.field private a:Landroid/app/ActionBar;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljackpal/androidterm/compat/c;-><init>()V

    check-cast p1, Landroid/app/ActionBar;

    iput-object p1, p0, Ljackpal/androidterm/compat/a;->a:Landroid/app/ActionBar;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/compat/a;->a:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    return-void
.end method

.method public final a(I)V
    .registers 3

    iget-object p1, p0, Ljackpal/androidterm/compat/a;->a:Landroid/app/ActionBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    return-void
.end method

.method public final a(II)V
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/compat/a;->a:Landroid/app/ActionBar;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public final a(Landroid/widget/SpinnerAdapter;Ljackpal/androidterm/compat/d;)V
    .registers 5

    iget-object v0, p0, Ljackpal/androidterm/compat/a;->a:Landroid/app/ActionBar;

    new-instance v1, Ljackpal/androidterm/compat/b;

    invoke-direct {v1, p0, p2}, Ljackpal/androidterm/compat/b;-><init>(Ljackpal/androidterm/compat/a;Ljackpal/androidterm/compat/d;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    return-void
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/compat/a;->a:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/compat/a;->a:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/compat/a;->a:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    return-void
.end method
