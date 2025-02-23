.class final Ljackpal/androidterm/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Ljackpal/androidterm/WindowList;


# direct methods
.method constructor <init>(Ljackpal/androidterm/WindowList;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/x;->a:Ljackpal/androidterm/WindowList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    check-cast p2, Ljackpal/androidterm/t;

    iget-object p1, p0, Ljackpal/androidterm/x;->a:Ljackpal/androidterm/WindowList;

    invoke-virtual {p2}, Ljackpal/androidterm/t;->a()Ljackpal/androidterm/TermService;

    move-result-object p2

    invoke-static {p1, p2}, Ljackpal/androidterm/WindowList;->a(Ljackpal/androidterm/WindowList;Ljackpal/androidterm/TermService;)Ljackpal/androidterm/TermService;

    iget-object p1, p0, Ljackpal/androidterm/x;->a:Ljackpal/androidterm/WindowList;

    invoke-static {p1}, Ljackpal/androidterm/WindowList;->a(Ljackpal/androidterm/WindowList;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object p1, p0, Ljackpal/androidterm/x;->a:Ljackpal/androidterm/WindowList;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljackpal/androidterm/WindowList;->a(Ljackpal/androidterm/WindowList;Ljackpal/androidterm/TermService;)Ljackpal/androidterm/TermService;

    return-void
.end method
