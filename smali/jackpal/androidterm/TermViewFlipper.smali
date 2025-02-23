.class public Ljackpal/androidterm/TermViewFlipper;
.super Landroid/widget/ViewFlipper;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/Toast;

.field private c:Ljava/util/LinkedList;

.field private d:Z

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Rect;

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/widget/FrameLayout$LayoutParams;

.field private j:Z

.field private final k:Z

.field private final l:Landroid/os/Handler;

.field private m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->d:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/TermViewFlipper;->g:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/TermViewFlipper;->h:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-object v1, p0, Ljackpal/androidterm/TermViewFlipper;->i:Landroid/widget/FrameLayout$LayoutParams;

    iput-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->j:Z

    sget v1, Ljackpal/androidterm/compat/f;->a:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->k:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->l:Landroid/os/Handler;

    new-instance v0, Ljackpal/androidterm/v;

    invoke-direct {v0, p0}, Ljackpal/androidterm/v;-><init>(Ljackpal/androidterm/TermViewFlipper;)V

    iput-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->m:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Ljackpal/androidterm/TermViewFlipper;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Ljackpal/androidterm/TermViewFlipper;->d:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->g:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->h:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->i:Landroid/widget/FrameLayout$LayoutParams;

    iput-boolean p2, p0, Ljackpal/androidterm/TermViewFlipper;->j:Z

    sget v0, Ljackpal/androidterm/compat/f;->a:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 p2, 0x1

    :cond_0
    iput-boolean p2, p0, Ljackpal/androidterm/TermViewFlipper;->k:Z

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Ljackpal/androidterm/TermViewFlipper;->l:Landroid/os/Handler;

    new-instance p2, Ljackpal/androidterm/v;

    invoke-direct {p2, p0}, Ljackpal/androidterm/v;-><init>(Ljackpal/androidterm/TermViewFlipper;)V

    iput-object p2, p0, Ljackpal/androidterm/TermViewFlipper;->m:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Ljackpal/androidterm/TermViewFlipper;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Ljackpal/androidterm/TermViewFlipper;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Ljackpal/androidterm/TermViewFlipper;->c:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->g()V

    iget-object p1, p0, Ljackpal/androidterm/TermViewFlipper;->g:Landroid/graphics/Rect;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/16 v2, 0x33

    invoke-direct {v0, v1, p1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->i:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method static synthetic a(Ljackpal/androidterm/TermViewFlipper;)V
    .registers 1

    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->h()V

    return-void
.end method

.method static synthetic b(Ljackpal/androidterm/TermViewFlipper;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/TermViewFlipper;->l:Landroid/os/Handler;

    return-object p0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljackpal/androidterm/a/ac;

    invoke-interface {v1}, Ljackpal/androidterm/a/ac;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d()V
    .registers 2

    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/a/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljackpal/androidterm/a/c;->b()V

    return-void
.end method

.method private e()V
    .registers 2

    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/a/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljackpal/androidterm/a/c;->a()V

    invoke-virtual {v0}, Ljackpal/androidterm/a/c;->requestFocus()Z

    return-void
.end method

.method private f()V
    .registers 7

    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/a/c;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljackpal/androidterm/a/c;->d()Ljackpal/androidterm/a/q;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Ljackpal/androidterm/TermViewFlipper;->a:Landroid/content/Context;

    const v2, 0x7f0d0326

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->getDisplayedChild()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Ljackpal/androidterm/b;

    if-eqz v2, :cond_3

    check-cast v0, Ljackpal/androidterm/b;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->b:Landroid/widget/Toast;

    if-nez v0, :cond_4

    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->a:Landroid/content/Context;

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->b:Landroid/widget/Toast;

    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->b:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->b:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private g()V
    .registers 5

    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->g:Landroid/graphics/Rect;

    iget-object v1, p0, Ljackpal/androidterm/TermViewFlipper;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Ljackpal/androidterm/TermViewFlipper;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, v1}, Ljackpal/androidterm/TermViewFlipper;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Ljackpal/androidterm/TermViewFlipper;->d:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-nez v2, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :cond_2
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private h()V
    .registers 4

    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->g()V

    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p0, Ljackpal/androidterm/TermViewFlipper;->e:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Ljackpal/androidterm/TermViewFlipper;->f:I

    if-eq v2, v0, :cond_2

    :cond_0
    iput v1, p0, Ljackpal/androidterm/TermViewFlipper;->e:I

    iput v0, p0, Ljackpal/androidterm/TermViewFlipper;->f:I

    iget-object v2, p0, Ljackpal/androidterm/TermViewFlipper;->i:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, v2}, Ljackpal/androidterm/TermViewFlipper;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->j:Z

    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/a/c;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljackpal/androidterm/a/c;->b(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->l:Landroid/os/Handler;

    iget-object v1, p0, Ljackpal/androidterm/TermViewFlipper;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->d()V

    return-void
.end method

.method public final a(Ljackpal/androidterm/a/ac;)V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljackpal/androidterm/c/c;)V
    .registers 4

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->a()Z

    move-result v0

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->e()[I

    move-result-object p1

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {p0, p1}, Ljackpal/androidterm/TermViewFlipper;->setBackgroundColor(I)V

    iput-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->d:Z

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->i:Landroid/widget/FrameLayout$LayoutParams;

    invoke-super {p0, p1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->i:Landroid/widget/FrameLayout$LayoutParams;

    invoke-super {p0, p1, p2, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->m:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->e()V

    return-void
.end method

.method public final b(Ljackpal/androidterm/a/ac;)V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Ljackpal/androidterm/w;

    invoke-direct {v0, p0}, Ljackpal/androidterm/w;-><init>(Ljackpal/androidterm/TermViewFlipper;)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->requestLayout()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->j:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->h()V

    invoke-super {p0, p1, p2}, Landroid/widget/ViewFlipper;->onMeasure(II)V

    return-void
.end method

.method public setDisplayedChild(I)V
    .registers 2

    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->d()V

    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->f()V

    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->e()V

    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->c()V

    return-void
.end method

.method public showNext()V
    .registers 1

    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->d()V

    invoke-super {p0}, Landroid/widget/ViewFlipper;->showNext()V

    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->f()V

    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->e()V

    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->c()V

    return-void
.end method

.method public showPrevious()V
    .registers 1

    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->d()V

    invoke-super {p0}, Landroid/widget/ViewFlipper;->showPrevious()V

    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->f()V

    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->e()V

    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->c()V

    return-void
.end method
