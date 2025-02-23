.class public Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;
.super Landroid/support/v7/widget/AppCompatEditText;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/ref/WeakReference;

.field private d:Ljava/lang/ref/WeakReference;

.field private e:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;)I
    .registers 1

    iget p0, p0, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->a:I

    return p0
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;)I
    .registers 1

    iget p0, p0, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->b:I

    return p0
.end method

.method static synthetic c(Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->d:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic d(Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    new-instance v0, Lcom/gmail/heagoo/apkeditor/ui/a;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/ui/a;-><init>(Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;)V

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
    .registers 4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->c:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Ljava/lang/ref/WeakReference;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p2, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return p2
.end method

.method protected onSelectionChanged(II)V
    .registers 7

    if-ne p1, p2, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->a:I

    iput p2, p0, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->b:I

    const v0, 0x7f0801c1

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->e:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/a;

    if-eqz v1, :cond_2

    const-string v2, ""

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    invoke-interface {v1, p1, p2, v2}, Lcom/gmail/heagoo/a;->a(IILjava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p1, p2}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->a(III)V

    :cond_3
    return-void
.end method
