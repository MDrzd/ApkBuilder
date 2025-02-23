.class final Ljackpal/androidterm/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljackpal/androidterm/a/c;


# direct methods
.method constructor <init>(Ljackpal/androidterm/a/c;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/d;->a:Ljackpal/androidterm/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/a/d;->a:Ljackpal/androidterm/a/c;

    invoke-static {v0}, Ljackpal/androidterm/a/c;->a(Ljackpal/androidterm/a/c;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/d;->a:Ljackpal/androidterm/a/c;

    iget-object v2, p0, Ljackpal/androidterm/a/d;->a:Ljackpal/androidterm/a/c;

    invoke-static {v2}, Ljackpal/androidterm/a/c;->b(Ljackpal/androidterm/a/c;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Ljackpal/androidterm/a/c;->a(Ljackpal/androidterm/a/c;Z)Z

    iget-object v0, p0, Ljackpal/androidterm/a/d;->a:Ljackpal/androidterm/a/c;

    invoke-static {v0}, Ljackpal/androidterm/a/c;->c(Ljackpal/androidterm/a/c;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/a/d;->a:Ljackpal/androidterm/a/c;

    invoke-static {v0, v1}, Ljackpal/androidterm/a/c;->a(Ljackpal/androidterm/a/c;Z)Z

    :goto_0
    iget-object v0, p0, Ljackpal/androidterm/a/d;->a:Ljackpal/androidterm/a/c;

    invoke-virtual {v0}, Ljackpal/androidterm/a/c;->invalidate()V

    return-void
.end method
