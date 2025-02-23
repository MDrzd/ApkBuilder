.class final Lcom/b/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/b/a/e;


# direct methods
.method constructor <init>(Lcom/b/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/f;->a:Lcom/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/b/a/f;->a:Lcom/b/a/e;

    invoke-static {v0}, Lcom/b/a/e;->a(Lcom/b/a/e;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/f;->a:Lcom/b/a/e;

    invoke-static {v0}, Lcom/b/a/e;->a(Lcom/b/a/e;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_0
    iget-object v0, p0, Lcom/b/a/f;->a:Lcom/b/a/e;

    invoke-static {v0}, Lcom/b/a/e;->b(Lcom/b/a/e;)Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/b/a/i;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
