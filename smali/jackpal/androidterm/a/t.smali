.class final Ljackpal/androidterm/a/t;
.super Ljava/lang/Thread;


# instance fields
.field private a:[B

.field private synthetic b:Z

.field private synthetic c:Ljackpal/androidterm/a/q;


# direct methods
.method constructor <init>(Ljackpal/androidterm/a/q;Z)V
    .registers 3

    iput-object p1, p0, Ljackpal/androidterm/a/t;->c:Ljackpal/androidterm/a/q;

    iput-boolean p2, p0, Ljackpal/androidterm/a/t;->b:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Ljackpal/androidterm/a/t;->a:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    :cond_0
    :try_start_0
    iget-object v0, p0, Ljackpal/androidterm/a/t;->c:Ljackpal/androidterm/a/q;

    invoke-static {v0}, Ljackpal/androidterm/a/q;->c(Ljackpal/androidterm/a/q;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Ljackpal/androidterm/a/t;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_0

    iget-object v2, p0, Ljackpal/androidterm/a/t;->c:Ljackpal/androidterm/a/q;

    invoke-static {v2}, Ljackpal/androidterm/a/q;->d(Ljackpal/androidterm/a/q;)Ljackpal/androidterm/a/l;

    move-result-object v2

    iget-object v3, p0, Ljackpal/androidterm/a/t;->a:[B

    invoke-virtual {v2, v3, v1, v0}, Ljackpal/androidterm/a/l;->b([BII)I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Ljackpal/androidterm/a/t;->c:Ljackpal/androidterm/a/q;

    invoke-static {v2}, Ljackpal/androidterm/a/q;->e(Ljackpal/androidterm/a/q;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Ljackpal/androidterm/a/t;->c:Ljackpal/androidterm/a/q;

    invoke-static {v3}, Ljackpal/androidterm/a/q;->e(Ljackpal/androidterm/a/q;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    iget-boolean v0, p0, Ljackpal/androidterm/a/t;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljackpal/androidterm/a/t;->c:Ljackpal/androidterm/a/q;

    invoke-static {v0}, Ljackpal/androidterm/a/q;->e(Ljackpal/androidterm/a/q;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ljackpal/androidterm/a/t;->c:Ljackpal/androidterm/a/q;

    invoke-static {v1}, Ljackpal/androidterm/a/q;->e(Ljackpal/androidterm/a/q;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
