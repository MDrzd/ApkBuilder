.class final Lcom/a/a/c;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/a/a/a;


# direct methods
.method constructor <init>(Lcom/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/c;->a:Lcom/a/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/a/a/c;->a:Lcom/a/a/a;

    invoke-virtual {p1}, Lcom/a/a/a;->a()I

    move-result p1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/a;

    invoke-static {v0}, Lcom/a/a/a;->a(Lcom/a/a/a;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/a;

    invoke-static {v0, p1}, Lcom/a/a/a;->a(Lcom/a/a/a;I)V

    :cond_1
    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/a;

    invoke-static {v0}, Lcom/a/a/a;->b(Lcom/a/a/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/a;

    invoke-static {v0}, Lcom/a/a/a;->c(Lcom/a/a/a;)Lcom/a/a/e;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/a;

    invoke-static {v0}, Lcom/a/a/a;->c(Lcom/a/a/a;)Lcom/a/a/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/a/a/e;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method
