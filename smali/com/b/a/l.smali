.class final Lcom/b/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/m;


# instance fields
.field private synthetic a:Lcom/b/a/e;

.field private synthetic b:Lcom/b/a/i;


# direct methods
.method constructor <init>(Lcom/b/a/i;Lcom/b/a/e;)V
    .registers 3

    iput-object p1, p0, Lcom/b/a/l;->b:Lcom/b/a/i;

    iput-object p2, p0, Lcom/b/a/l;->a:Lcom/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .registers 4

    iget-object v0, p0, Lcom/b/a/l;->a:Lcom/b/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/e;->a(FF)V

    iget-object p1, p0, Lcom/b/a/l;->a:Lcom/b/a/e;

    invoke-virtual {p1}, Lcom/b/a/e;->postInvalidate()V

    return-void
.end method
