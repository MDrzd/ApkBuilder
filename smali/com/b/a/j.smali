.class final Lcom/b/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c;


# instance fields
.field private synthetic a:Lcom/b/a/i;


# direct methods
.method constructor <init>(Lcom/b/a/i;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/j;->a:Lcom/b/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .registers 5

    iget-object v0, p0, Lcom/b/a/j;->a:Lcom/b/a/i;

    iget-object v1, p0, Lcom/b/a/j;->a:Lcom/b/a/i;

    invoke-static {v1}, Lcom/b/a/i;->a(Lcom/b/a/i;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p1

    iget-object p1, p0, Lcom/b/a/j;->a:Lcom/b/a/i;

    invoke-static {p1}, Lcom/b/a/i;->a(Lcom/b/a/i;)Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    invoke-virtual {v0, v1, p1}, Lcom/b/a/i;->a(FF)Z

    return-void
.end method
