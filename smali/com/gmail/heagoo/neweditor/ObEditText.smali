.class public Lcom/gmail/heagoo/neweditor/ObEditText;
.super Landroid/widget/EditText;

# interfaces
.implements Lcom/gmail/heagoo/neweditor/r;


# instance fields
.field private a:Landroid/text/style/BackgroundColorSpan;

.field private b:Z

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Rect;

.field private f:I

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Landroid/text/style/BackgroundColorSpan;

.field private k:Z

.field private l:Ljava/lang/ref/WeakReference;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/text/style/BackgroundColorSpan;

    const/16 v0, -0x100

    invoke-direct {p1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->a:Landroid/text/style/BackgroundColorSpan;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->b:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->c:I

    iput p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->d:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->e:Landroid/graphics/Rect;

    new-instance p1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {p1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->j:Landroid/text/style/BackgroundColorSpan;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->k:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->l:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/text/style/BackgroundColorSpan;

    const/16 p2, -0x100

    invoke-direct {p1, p2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->a:Landroid/text/style/BackgroundColorSpan;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->b:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->c:I

    iput p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->d:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->e:Landroid/graphics/Rect;

    new-instance p1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {p1, p2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->j:Landroid/text/style/BackgroundColorSpan;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->k:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->l:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/text/style/BackgroundColorSpan;

    const/16 p2, -0x100

    invoke-direct {p1, p2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->a:Landroid/text/style/BackgroundColorSpan;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->b:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->c:I

    iput p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->d:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->e:Landroid/graphics/Rect;

    new-instance p1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {p1, p2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->j:Landroid/text/style/BackgroundColorSpan;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->k:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->l:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->j:Landroid/text/style/BackgroundColorSpan;

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->a:Landroid/text/style/BackgroundColorSpan;

    return-void
.end method

.method public final a(II)V
    .registers 5

    iget-boolean v0, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->k:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->k:Z

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/gmail/heagoo/neweditor/ObEditText;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-boolean v0, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->k:Z

    return-void
.end method

.method public final a(Lcom/gmail/heagoo/neweditor/af;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->l:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->m:Z

    return-void
.end method

.method public final b(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout;

    invoke-virtual {v0, p1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(II)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/gmail/heagoo/neweditor/ObEditText;->onMeasure(II)V

    return-void
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->i:Z

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->b:Z

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "rawKeys"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/gmail/heagoo/neweditor/u;

    invoke-direct {v0, p0, p0, v2}, Lcom/gmail/heagoo/neweditor/u;-><init>(Lcom/gmail/heagoo/neweditor/ObEditText;Landroid/view/View;Z)V

    const/4 v1, 0x0

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v1, 0x50000000

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    return-object v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p2, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->m:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return p2
.end method

.method protected onMeasure(II)V
    .registers 12

    iget-boolean v0, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->i:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getLineHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->f:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->f:I

    array-length v5, v2

    iput v5, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->h:I

    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v2, v6

    iget v8, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->f:I

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->f:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->h:I

    const/4 v5, 0x1

    if-nez v2, :cond_2

    iput v5, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->h:I

    :cond_2
    iget v2, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->f:I

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->g:Z

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->h:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->f:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    add-int/lit8 v0, v0, 0xa

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->h:I

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0xa

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/gmail/heagoo/neweditor/ObEditText;->setMeasuredDimension(II)V

    iget-boolean p1, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->g:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getPaintFlags()I

    move-result p1

    add-int/2addr p1, v5

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->setPaintFlags(I)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getPaintFlags()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->setPaintFlags(I)V

    :cond_4
    return-void
.end method

.method protected onSelectionChanged(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ObEditText;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/neweditor/af;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/gmail/heagoo/neweditor/af;->b(II)V

    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    move-result p1

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result p2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    :cond_0
    return-void
.end method

.method public setWidth(I)V
    .registers 2

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setWidth(I)V

    :cond_0
    return-void
.end method
