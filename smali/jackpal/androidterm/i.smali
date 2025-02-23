.class final Ljackpal/androidterm/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Ljackpal/androidterm/Term;


# direct methods
.method constructor <init>(Ljackpal/androidterm/Term;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/i;->a:Ljackpal/androidterm/Term;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    const-string p1, "Term"

    const-string v0, "Bound to TermService"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljackpal/androidterm/t;

    iget-object p1, p0, Ljackpal/androidterm/i;->a:Ljackpal/androidterm/Term;

    invoke-virtual {p2}, Ljackpal/androidterm/t;->a()Ljackpal/androidterm/TermService;

    move-result-object p2

    invoke-static {p1, p2}, Ljackpal/androidterm/Term;->a(Ljackpal/androidterm/Term;Ljackpal/androidterm/TermService;)Ljackpal/androidterm/TermService;

    iget-object p1, p0, Ljackpal/androidterm/i;->a:Ljackpal/androidterm/Term;

    invoke-static {p1}, Ljackpal/androidterm/Term;->c(Ljackpal/androidterm/Term;)I

    move-result p1

    if-gtz p1, :cond_0

    iget-object p1, p0, Ljackpal/androidterm/i;->a:Ljackpal/androidterm/Term;

    invoke-static {p1}, Ljackpal/androidterm/Term;->e(Ljackpal/androidterm/Term;)V

    iget-object p1, p0, Ljackpal/androidterm/i;->a:Ljackpal/androidterm/Term;

    invoke-static {p1}, Ljackpal/androidterm/Term;->f(Ljackpal/androidterm/Term;)V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object p1, p0, Ljackpal/androidterm/i;->a:Ljackpal/androidterm/Term;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljackpal/androidterm/Term;->a(Ljackpal/androidterm/Term;Ljackpal/androidterm/TermService;)Ljackpal/androidterm/TermService;

    return-void
.end method
