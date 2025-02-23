.class final Ljackpal/androidterm/a/r;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Ljackpal/androidterm/a/q;


# direct methods
.method constructor <init>(Ljackpal/androidterm/a/q;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/r;->a:Ljackpal/androidterm/a/q;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/a/r;->a:Ljackpal/androidterm/a/q;

    invoke-static {v0}, Ljackpal/androidterm/a/q;->a(Ljackpal/androidterm/a/q;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Ljackpal/androidterm/a/r;->a:Ljackpal/androidterm/a/q;

    invoke-static {p1}, Ljackpal/androidterm/a/q;->b(Ljackpal/androidterm/a/q;)V

    return-void

    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljackpal/androidterm/a/s;

    invoke-direct {v0, p0}, Ljackpal/androidterm/a/s;-><init>(Ljackpal/androidterm/a/r;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
