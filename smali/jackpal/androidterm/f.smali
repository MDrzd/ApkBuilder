.class final Ljackpal/androidterm/f;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Ljackpal/androidterm/e;


# direct methods
.method constructor <init>(Ljackpal/androidterm/e;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/f;->a:Ljackpal/androidterm/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/f;->a:Ljackpal/androidterm/e;

    invoke-virtual {v0}, Ljackpal/androidterm/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljackpal/androidterm/f;->a:Ljackpal/androidterm/e;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Ljackpal/androidterm/e;->a(Ljackpal/androidterm/e;I)V

    :cond_1
    return-void
.end method
