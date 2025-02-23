.class final Ljackpal/androidterm/g;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljackpal/androidterm/e;


# direct methods
.method constructor <init>(Ljackpal/androidterm/e;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/g;->a:Ljackpal/androidterm/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const-string v0, "Term"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "waiting for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljackpal/androidterm/g;->a:Ljackpal/androidterm/e;

    invoke-static {v2}, Ljackpal/androidterm/e;->a(Ljackpal/androidterm/e;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ljackpal/androidterm/g;->a:Ljackpal/androidterm/e;

    invoke-static {v0}, Ljackpal/androidterm/e;->a(Ljackpal/androidterm/e;)I

    move-result v0

    invoke-static {v0}, Ljackpal/androidterm/TermExec;->waitFor(I)I

    move-result v0

    const-string v1, "Term"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Subprocess exited: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ljackpal/androidterm/g;->a:Ljackpal/androidterm/e;

    invoke-static {v1}, Ljackpal/androidterm/e;->b(Ljackpal/androidterm/e;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Ljackpal/androidterm/g;->a:Ljackpal/androidterm/e;

    invoke-static {v2}, Ljackpal/androidterm/e;->b(Ljackpal/androidterm/e;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
