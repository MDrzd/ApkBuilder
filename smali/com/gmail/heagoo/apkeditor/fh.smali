.class final Lcom/gmail/heagoo/apkeditor/fh;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/fh;Lcom/gmail/heagoo/neweditor/d;Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gmail/heagoo/apkeditor/fh;->a(Lcom/gmail/heagoo/neweditor/d;Landroid/graphics/Rect;)V

    return-void
.end method

.method private a(Lcom/gmail/heagoo/neweditor/d;Landroid/graphics/Rect;)V
    .registers 14

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->c(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getLineHeight()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    div-int/2addr v1, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    div-int/2addr p2, v0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-boolean v0, v0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->f:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    array-length v7, v0

    if-ge v3, v7, :cond_2

    iget-object v7, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v7, v7, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v7, v4}, Lcom/gmail/heagoo/neweditor/ObEditText;->b(I)I

    move-result v7

    aget-object v8, v0, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v4, v8

    if-gt v7, v1, :cond_1

    move v5, v3

    :cond_1
    if-gt v7, p2, :cond_2

    add-int/lit8 v6, v3, 0x1

    move v10, v6

    move v6, v3

    move v3, v10

    goto :goto_0

    :cond_2
    move v1, v5

    move p2, v6

    :cond_3
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->g(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)I

    move-result v0

    sub-int v7, v1, v0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->g(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)I

    move-result v0

    add-int v8, p2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v4, p2, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {p2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->d(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)I

    move-result v5

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {p2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->e(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)I

    move-result v6

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {p2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->f(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Z

    move-result v9

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-virtual {p2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->getApplicationContext()Landroid/content/Context;

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Lcom/gmail/heagoo/neweditor/d;->a(Landroid/widget/EditText;IIIIZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const/4 v3, 0x0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x7d0

    cmp-long v3, p1, v0

    if-lez v3, :cond_4

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {p1, v2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->b(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    const-string v1, "SyntaxHighLight starts"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->c(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v3, v3, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v3, v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/gmail/heagoo/apkeditor/fh;->a(Lcom/gmail/heagoo/neweditor/d;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {v3}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->c(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v4, v3, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {v3}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->d(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)I

    move-result v5

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {v3}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->e(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, -0x1

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {v3}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->f(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Z

    move-result v9

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-virtual {v3}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->getApplicationContext()Landroid/content/Context;

    move-object v3, v0

    invoke-virtual/range {v3 .. v9}, Lcom/gmail/heagoo/neweditor/d;->a(Landroid/widget/EditText;IIIIZ)V

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v3, v3, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v3}, Lcom/gmail/heagoo/neweditor/ObEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/gmail/heagoo/apkeditor/fi;

    invoke-direct {v4, p0, v1, v0}, Lcom/gmail/heagoo/apkeditor/fi;-><init>(Lcom/gmail/heagoo/apkeditor/fh;Landroid/graphics/Rect;Lcom/gmail/heagoo/neweditor/d;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;I)I

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {v0, v1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->b(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;I)I

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {v0, v2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;Z)Z

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fh;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    const-string v1, "SyntaxHighLight ends"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
