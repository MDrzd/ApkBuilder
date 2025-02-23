.class final Ljackpal/androidterm/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljackpal/androidterm/a/c;


# direct methods
.method constructor <init>(Ljackpal/androidterm/a/c;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/e;->a:Ljackpal/androidterm/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/a/e;->a:Ljackpal/androidterm/a/c;

    invoke-static {v0}, Ljackpal/androidterm/a/c;->d(Ljackpal/androidterm/a/c;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/a/e;->a:Ljackpal/androidterm/a/c;

    invoke-virtual {v0}, Ljackpal/androidterm/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ljackpal/androidterm/a/e;->a:Ljackpal/androidterm/a/c;

    invoke-static {v0}, Ljackpal/androidterm/a/c;->d(Ljackpal/androidterm/a/c;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    iget-object v1, p0, Ljackpal/androidterm/a/e;->a:Ljackpal/androidterm/a/c;

    invoke-static {v1}, Ljackpal/androidterm/a/c;->d(Ljackpal/androidterm/a/c;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Ljackpal/androidterm/a/e;->a:Ljackpal/androidterm/a/c;

    invoke-static {v2}, Ljackpal/androidterm/a/c;->e(Ljackpal/androidterm/a/c;)I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Ljackpal/androidterm/a/e;->a:Ljackpal/androidterm/a/c;

    invoke-static {v2, v1}, Ljackpal/androidterm/a/c;->a(Ljackpal/androidterm/a/c;I)I

    iget-object v1, p0, Ljackpal/androidterm/a/e;->a:Ljackpal/androidterm/a/c;

    invoke-virtual {v1}, Ljackpal/androidterm/a/c;->invalidate()V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Ljackpal/androidterm/a/e;->a:Ljackpal/androidterm/a/c;

    invoke-virtual {v0, p0}, Ljackpal/androidterm/a/c;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
