.class final Ljackpal/androidterm/o;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field private a:Ljackpal/androidterm/a/c;

.field private synthetic b:Ljackpal/androidterm/Term;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/Term;Ljackpal/androidterm/a/c;)V
    .registers 3

    iput-object p1, p0, Ljackpal/androidterm/o;->b:Ljackpal/androidterm/Term;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p2, p0, Ljackpal/androidterm/o;->a:Ljackpal/androidterm/a/c;

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v0, p1

    float-to-double p1, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    cmpl-double p4, v0, p1

    if-lez p4, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Ljackpal/androidterm/o;->b:Ljackpal/androidterm/Term;

    invoke-static {p1}, Ljackpal/androidterm/Term;->g(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object p1

    invoke-virtual {p1}, Ljackpal/androidterm/TermViewFlipper;->showPrevious()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljackpal/androidterm/o;->b:Ljackpal/androidterm/Term;

    invoke-static {p1}, Ljackpal/androidterm/Term;->g(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object p1

    invoke-virtual {p1}, Ljackpal/androidterm/TermViewFlipper;->showNext()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Ljackpal/androidterm/o;->a:Ljackpal/androidterm/a/c;

    invoke-virtual {v0}, Ljackpal/androidterm/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/o;->a:Ljackpal/androidterm/a/c;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljackpal/androidterm/a/c;->a(FF)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Ljackpal/androidterm/o;->b:Ljackpal/androidterm/Term;

    invoke-static {p1, v0}, Ljackpal/androidterm/Term;->a(Ljackpal/androidterm/Term;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljackpal/androidterm/o;->b:Ljackpal/androidterm/Term;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Ljackpal/androidterm/o;->a:Ljackpal/androidterm/a/c;

    invoke-virtual {v2}, Ljackpal/androidterm/a/c;->e()I

    move-result v2

    iget-object v3, p0, Ljackpal/androidterm/o;->a:Ljackpal/androidterm/a/c;

    invoke-virtual {v3}, Ljackpal/androidterm/a/c;->f()I

    move-result v3

    invoke-static {v0, v1, p1, v2, v3}, Ljackpal/androidterm/Term;->a(Ljackpal/androidterm/Term;IIII)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
