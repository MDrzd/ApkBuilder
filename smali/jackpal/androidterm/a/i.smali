.class final Ljackpal/androidterm/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/widget/Scroller;

.field private b:I

.field private c:Landroid/view/MotionEvent;

.field private synthetic d:Ljackpal/androidterm/a/c;


# direct methods
.method private constructor <init>(Ljackpal/androidterm/a/c;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/i;->d:Ljackpal/androidterm/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljackpal/androidterm/a/c;B)V
    .registers 3

    invoke-direct {p0, p1}, Ljackpal/androidterm/a/i;-><init>(Ljackpal/androidterm/a/c;)V

    return-void
.end method

.method static synthetic a(Ljackpal/androidterm/a/i;Landroid/widget/Scroller;)Landroid/widget/Scroller;
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/i;->a:Landroid/widget/Scroller;

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;FF)V
    .registers 13

    iget-object v0, p0, Ljackpal/androidterm/a/i;->a:Landroid/widget/Scroller;

    const v1, 0x3e19999a    # 0.15f

    mul-float p2, p2, v1

    float-to-int p2, p2

    neg-int v3, p2

    mul-float p3, p3, v1

    float-to-int p2, p3

    neg-int v4, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, -0x64

    const/16 v8, 0x64

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    const/4 p2, 0x0

    iput p2, p0, Ljackpal/androidterm/a/i;->b:I

    iput-object p1, p0, Ljackpal/androidterm/a/i;->c:Landroid/view/MotionEvent;

    iget-object p1, p0, Ljackpal/androidterm/a/i;->d:Ljackpal/androidterm/a/c;

    invoke-virtual {p1, p0}, Ljackpal/androidterm/a/c;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final run()V
    .registers 6

    iget-object v0, p0, Ljackpal/androidterm/a/i;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/a/i;->d:Ljackpal/androidterm/a/c;

    invoke-virtual {v0}, Ljackpal/androidterm/a/c;->g()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ljackpal/androidterm/a/i;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    iget-object v1, p0, Ljackpal/androidterm/a/i;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    :goto_0
    iget v2, p0, Ljackpal/androidterm/a/i;->b:I

    if-ge v2, v1, :cond_2

    iget-object v2, p0, Ljackpal/androidterm/a/i;->d:Ljackpal/androidterm/a/c;

    iget-object v3, p0, Ljackpal/androidterm/a/i;->c:Landroid/view/MotionEvent;

    const/16 v4, 0x41

    invoke-static {v2, v3, v4}, Ljackpal/androidterm/a/c;->a(Ljackpal/androidterm/a/c;Landroid/view/MotionEvent;I)V

    iget v2, p0, Ljackpal/androidterm/a/i;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljackpal/androidterm/a/i;->b:I

    goto :goto_0

    :cond_2
    :goto_1
    iget v2, p0, Ljackpal/androidterm/a/i;->b:I

    if-le v2, v1, :cond_3

    iget-object v2, p0, Ljackpal/androidterm/a/i;->d:Ljackpal/androidterm/a/c;

    iget-object v3, p0, Ljackpal/androidterm/a/i;->c:Landroid/view/MotionEvent;

    const/16 v4, 0x40

    invoke-static {v2, v3, v4}, Ljackpal/androidterm/a/c;->a(Ljackpal/androidterm/a/c;Landroid/view/MotionEvent;I)V

    iget v2, p0, Ljackpal/androidterm/a/i;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljackpal/androidterm/a/i;->b:I

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Ljackpal/androidterm/a/i;->d:Ljackpal/androidterm/a/c;

    invoke-virtual {v0, p0}, Ljackpal/androidterm/a/c;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method
