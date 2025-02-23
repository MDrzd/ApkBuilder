.class final Lcom/gmail/heagoo/neweditor/o;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/gmail/heagoo/neweditor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/neweditor/EditorActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private a(Lcom/gmail/heagoo/neweditor/d;Landroid/graphics/Rect;)V
    .registers 12

    :try_start_0
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getLineHeight()I

    move-result v1

    div-int/2addr v0, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getLineHeight()I

    move-result v1

    div-int/2addr p2, v1

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a(Lcom/gmail/heagoo/neweditor/EditorActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_2

    iget-object v6, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iget-object v6, v6, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v6, v5}, Lcom/gmail/heagoo/neweditor/ObEditText;->b(I)I

    move-result v6

    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v5, v7

    if-gt v6, v0, :cond_0

    move v3, v2

    :cond_0
    if-gt v6, p2, :cond_1

    move v4, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    move p2, v4

    :cond_3
    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->h(Lcom/gmail/heagoo/neweditor/EditorActivity;)I

    move-result v1

    sub-int v6, v0, v1

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->h(Lcom/gmail/heagoo/neweditor/EditorActivity;)I

    move-result v0

    add-int v7, p2, v0

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iget-object v3, p2, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {p2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->e(Lcom/gmail/heagoo/neweditor/EditorActivity;)I

    move-result v4

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {p2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->f(Lcom/gmail/heagoo/neweditor/EditorActivity;)I

    move-result v5

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {p2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->g(Lcom/gmail/heagoo/neweditor/EditorActivity;)Z

    move-result v8

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-virtual {p2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->getApplicationContext()Landroid/content/Context;

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Lcom/gmail/heagoo/neweditor/d;->a(Landroid/widget/EditText;IIIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/neweditor/o;Lcom/gmail/heagoo/neweditor/d;Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gmail/heagoo/neweditor/o;->a(Lcom/gmail/heagoo/neweditor/d;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->d(Lcom/gmail/heagoo/neweditor/EditorActivity;)Lcom/gmail/heagoo/neweditor/d;

    move-result-object v0

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v1, v8}, Lcom/gmail/heagoo/neweditor/ObEditText;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v8}, Lcom/gmail/heagoo/neweditor/o;->a(Lcom/gmail/heagoo/neweditor/d;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->e(Lcom/gmail/heagoo/neweditor/EditorActivity;)I

    move-result v3

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->f(Lcom/gmail/heagoo/neweditor/EditorActivity;)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->g(Lcom/gmail/heagoo/neweditor/EditorActivity;)Z

    move-result v7

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->getApplicationContext()Landroid/content/Context;

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/gmail/heagoo/neweditor/d;->a(Landroid/widget/EditText;IIIIZ)V

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/gmail/heagoo/neweditor/p;

    invoke-direct {v2, p0, v8, v0}, Lcom/gmail/heagoo/neweditor/p;-><init>(Lcom/gmail/heagoo/neweditor/o;Landroid/graphics/Rect;Lcom/gmail/heagoo/neweditor/d;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a(Lcom/gmail/heagoo/neweditor/EditorActivity;I)I

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v0, v1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->b(Lcom/gmail/heagoo/neweditor/EditorActivity;I)I

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a(Lcom/gmail/heagoo/neweditor/EditorActivity;Z)Z

    return-void
.end method
