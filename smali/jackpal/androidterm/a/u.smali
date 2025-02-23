.class final Ljackpal/androidterm/a/u;
.super Ljava/lang/Thread;


# instance fields
.field private a:[B

.field private synthetic b:Ljackpal/androidterm/a/q;


# direct methods
.method constructor <init>(Ljackpal/androidterm/a/q;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/u;->b:Ljackpal/androidterm/a/q;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Ljackpal/androidterm/a/u;->a:[B

    return-void
.end method

.method private a()V
    .registers 6

    iget-object v0, p0, Ljackpal/androidterm/a/u;->b:Ljackpal/androidterm/a/q;

    invoke-static {v0}, Ljackpal/androidterm/a/q;->f(Ljackpal/androidterm/a/q;)Ljackpal/androidterm/a/l;

    move-result-object v0

    iget-object v1, p0, Ljackpal/androidterm/a/u;->a:[B

    iget-object v2, p0, Ljackpal/androidterm/a/u;->b:Ljackpal/androidterm/a/q;

    invoke-static {v2}, Ljackpal/androidterm/a/q;->g(Ljackpal/androidterm/a/q;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0}, Ljackpal/androidterm/a/l;->a()I

    move-result v3

    array-length v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v4, v3}, Ljackpal/androidterm/a/l;->a([BII)I

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method static synthetic a(Ljackpal/androidterm/a/u;)V
    .registers 1

    invoke-direct {p0}, Ljackpal/androidterm/a/u;->a()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Ljackpal/androidterm/a/u;->b:Ljackpal/androidterm/a/q;

    new-instance v1, Ljackpal/androidterm/a/v;

    invoke-direct {v1, p0}, Ljackpal/androidterm/a/v;-><init>(Ljackpal/androidterm/a/u;)V

    invoke-static {v0, v1}, Ljackpal/androidterm/a/q;->a(Ljackpal/androidterm/a/q;Landroid/os/Handler;)Landroid/os/Handler;

    invoke-direct {p0}, Ljackpal/androidterm/a/u;->a()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
