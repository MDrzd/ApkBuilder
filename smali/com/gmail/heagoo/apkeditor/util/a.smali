.class public Lcom/gmail/heagoo/apkeditor/util/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:I

.field private c:I

.field private d:Landroid/view/View;

.field private e:I

.field private f:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/a;->a:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/gmail/heagoo/common/g;->b(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/util/a;->b:I

    invoke-static {p1}, Lcom/gmail/heagoo/common/g;->a(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/util/a;->c:I

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/a;->d:Landroid/view/View;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/a;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/gmail/heagoo/apkeditor/util/b;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/util/b;-><init>(Lcom/gmail/heagoo/apkeditor/util/a;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/a;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/a;->f:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 2

    new-instance v0, Lcom/gmail/heagoo/apkeditor/util/a;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/util/a;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/util/a;)V
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/util/a;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/util/a;->e:I

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/util/a;->b:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/gmail/heagoo/apkeditor/util/a;->c:I

    :goto_0
    mul-int/lit8 v0, v0, 0x55

    div-int/lit8 v0, v0, 0x64

    const/16 v2, 0x800

    const/16 v3, 0x400

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    :goto_1
    iput v1, p0, Lcom/gmail/heagoo/apkeditor/util/a;->e:I

    :cond_2
    return-void
.end method
