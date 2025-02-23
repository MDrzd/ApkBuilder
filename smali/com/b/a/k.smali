.class final Lcom/b/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/n;


# instance fields
.field private synthetic a:Lcom/b/a/i;


# direct methods
.method constructor <init>(Lcom/b/a/i;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/k;->a:Lcom/b/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/b/a/k;->a:Lcom/b/a/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/b/a/i;->a(Lcom/b/a/i;Z)Z

    iget-object v0, p0, Lcom/b/a/k;->a:Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->a()V

    return-void
.end method

.method public final a(FFF)V
    .registers 5

    iget-object v0, p0, Lcom/b/a/k;->a:Lcom/b/a/i;

    invoke-static {v0}, Lcom/b/a/i;->b(Lcom/b/a/i;)F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/k;->a:Lcom/b/a/i;

    invoke-static {v0}, Lcom/b/a/i;->c(Lcom/b/a/i;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/k;->a:Lcom/b/a/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/a/i;->a(FFF)V

    :cond_0
    return-void
.end method
