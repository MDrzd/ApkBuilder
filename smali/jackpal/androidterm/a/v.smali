.class final Ljackpal/androidterm/a/v;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Ljackpal/androidterm/a/u;


# direct methods
.method constructor <init>(Ljackpal/androidterm/a/u;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/v;->a:Ljackpal/androidterm/a/u;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Ljackpal/androidterm/a/v;->a:Ljackpal/androidterm/a/u;

    invoke-static {p1}, Ljackpal/androidterm/a/u;->a(Ljackpal/androidterm/a/u;)V

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_1
    return-void
.end method
