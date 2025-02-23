.class final Ljackpal/androidterm/h;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Ljackpal/androidterm/Term;


# direct methods
.method constructor <init>(Ljackpal/androidterm/Term;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/h;->a:Ljackpal/androidterm/Term;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object p1, p0, Ljackpal/androidterm/h;->a:Ljackpal/androidterm/Term;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/h;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, v0}, Ljackpal/androidterm/Term;->a(Ljackpal/androidterm/Term;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "jackpal.androidterm.broadcast.PREPEND_TO_PATH"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Ljackpal/androidterm/h;->a:Ljackpal/androidterm/Term;

    invoke-static {p2}, Ljackpal/androidterm/Term;->a(Ljackpal/androidterm/Term;)Ljackpal/androidterm/c/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Ljackpal/androidterm/h;->a:Ljackpal/androidterm/Term;

    invoke-static {p2}, Ljackpal/androidterm/Term;->a(Ljackpal/androidterm/Term;)Ljackpal/androidterm/c/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljackpal/androidterm/c/c;->b(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Ljackpal/androidterm/h;->a:Ljackpal/androidterm/Term;

    invoke-static {p1}, Ljackpal/androidterm/Term;->b(Ljackpal/androidterm/Term;)I

    iget-object p1, p0, Ljackpal/androidterm/h;->a:Ljackpal/androidterm/Term;

    invoke-static {p1}, Ljackpal/androidterm/Term;->c(Ljackpal/androidterm/Term;)I

    move-result p1

    if-gtz p1, :cond_1

    iget-object p1, p0, Ljackpal/androidterm/h;->a:Ljackpal/androidterm/Term;

    invoke-static {p1}, Ljackpal/androidterm/Term;->d(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermService;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ljackpal/androidterm/h;->a:Ljackpal/androidterm/Term;

    invoke-static {p1}, Ljackpal/androidterm/Term;->e(Ljackpal/androidterm/Term;)V

    iget-object p1, p0, Ljackpal/androidterm/h;->a:Ljackpal/androidterm/Term;

    invoke-static {p1}, Ljackpal/androidterm/Term;->f(Ljackpal/androidterm/Term;)V

    :cond_1
    return-void
.end method
